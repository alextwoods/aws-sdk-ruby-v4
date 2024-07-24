# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DynamoDB
  module Types

    # Enum constants for ApproximateCreationDateTimePrecision
    module ApproximateCreationDateTimePrecision
      MILLISECOND = "MILLISECOND"

      MICROSECOND = "MICROSECOND"
    end

    # <p>Contains details of a table archival operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Time] :archival_date_time
    #   @option params [String] :archival_reason
    #   @option params [String] :archival_backup_arn
    # @!attribute archival_date_time
    #   <p>The date and time when table archival was initiated by DynamoDB, in UNIX epoch time
    #               format.</p>
    #   @return [Time]
    # @!attribute archival_reason
    #   <p>The reason DynamoDB archived the table. Currently, the only possible value is:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INACCESSIBLE_ENCRYPTION_CREDENTIALS</code> - The table was archived due
    #                       to the table's KMS key being inaccessible for more than seven
    #                       days. An On-Demand backup was created at the archival time.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute archival_backup_arn
    #   <p>The Amazon Resource Name (ARN) of the backup the table was archived to, when
    #               applicable in the archival reason. If you wish to restore this backup to the same table
    #               name, you will need to delete the original table.</p>
    #   @return [String]
    class ArchivalSummary
      include Hearth::Structure

      MEMBERS = %i[
        archival_date_time
        archival_reason
        archival_backup_arn
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for AttributeAction
    module AttributeAction
      ADD = "ADD"

      PUT = "PUT"

      DELETE = "DELETE"
    end

    # <p>Represents an attribute for describing the key schema for the table and
    #             indexes.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :attribute_name
    #   @option params [String] :attribute_type
    # @!attribute attribute_name
    #   <p>A name for the attribute.</p>
    #   @return [String]
    # @!attribute attribute_type
    #   <p>The data type for the attribute, where:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>S</code> - the attribute is of type String</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>N</code> - the attribute is of type Number</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>B</code> - the attribute is of type Binary</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["S", "N", "B"]
    #   @return [String]
    class AttributeDefinition
      include Hearth::Structure

      MEMBERS = %i[
        attribute_name
        attribute_type
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the data for an attribute.</p>
    #          <p>Each attribute value is described as a name-value pair. The name is the data type, and
    #             the value is the data itself.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes">Data Types</a> in the <i>Amazon DynamoDB Developer
    #             Guide</i>.</p>
    class AttributeValue < Hearth::Union
      # <p>An attribute of type String. For example:</p>
      #          <p>
      #             <code>"S": "Hello"</code>
      #          </p>
      class S < AttributeValue
        def to_h
          { s: super(__getobj__) }
        end
      end

      # <p>An attribute of type Number. For example:</p>
      #          <p>
      #             <code>"N": "123.45"</code>
      #          </p>
      #          <p>Numbers are sent across the network to DynamoDB as strings, to maximize compatibility
      #             across languages and libraries. However, DynamoDB treats them as number type attributes
      #             for mathematical operations.</p>
      class N < AttributeValue
        def to_h
          { n: super(__getobj__) }
        end
      end

      # <p>An attribute of type Binary. For example:</p>
      #          <p>
      #             <code>"B": "dGhpcyB0ZXh0IGlzIGJhc2U2NC1lbmNvZGVk"</code>
      #          </p>
      class B < AttributeValue
        def to_h
          { b: super(__getobj__) }
        end
      end

      # <p>An attribute of type String Set. For example:</p>
      #          <p>
      #             <code>"SS": ["Giraffe", "Hippo" ,"Zebra"]</code>
      #          </p>
      class Ss < AttributeValue
        def to_h
          { ss: super(__getobj__) }
        end
      end

      # <p>An attribute of type Number Set. For example:</p>
      #          <p>
      #             <code>"NS": ["42.2", "-19", "7.5", "3.14"]</code>
      #          </p>
      #          <p>Numbers are sent across the network to DynamoDB as strings, to maximize compatibility
      #             across languages and libraries. However, DynamoDB treats them as number type attributes
      #             for mathematical operations.</p>
      class Ns < AttributeValue
        def to_h
          { ns: super(__getobj__) }
        end
      end

      # <p>An attribute of type Binary Set. For example:</p>
      #          <p>
      #             <code>"BS": ["U3Vubnk=", "UmFpbnk=", "U25vd3k="]</code>
      #          </p>
      class Bs < AttributeValue
        def to_h
          { bs: super(__getobj__) }
        end
      end

      # <p>An attribute of type Map. For example:</p>
      #          <p>
      #             <code>"M": {"Name": {"S": "Joe"}, "Age": {"N": "35"}}</code>
      #          </p>
      class M < AttributeValue
        def to_h
          { m: super(__getobj__) }
        end
      end

      # <p>An attribute of type List. For example:</p>
      #          <p>
      #             <code>"L": [ {"S": "Cookies"} , {"S": "Coffee"}, {"N": "3.14159"}]</code>
      #          </p>
      class L < AttributeValue
        def to_h
          { l: super(__getobj__) }
        end
      end

      # <p>An attribute of type Null. For example:</p>
      #          <p>
      #             <code>"NULL": true</code>
      #          </p>
      class Null < AttributeValue
        def to_h
          { null: super(__getobj__) }
        end
      end

      # <p>An attribute of type Boolean. For example:</p>
      #          <p>
      #             <code>"BOOL": true</code>
      #          </p>
      class Bool < AttributeValue
        def to_h
          { bool: super(__getobj__) }
        end
      end

      class Unknown < AttributeValue
        def initialize(name:, value:)
          super({name: name, value: value})
        end

        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::DynamoDB::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>For the <code>UpdateItem</code> operation, represents the attributes to be modified,
    #             the action to perform on each, and the new value for each.</p>
    #          <note>
    #             <p>You cannot use <code>UpdateItem</code> to update any primary key attributes.
    #                 Instead, you will need to delete the item, and then use <code>PutItem</code> to
    #                 create a new item with new attributes.</p>
    #          </note>
    #          <p>Attribute values cannot be null; string and binary type attributes must have lengths
    #             greater than zero; and set type attributes must not be empty. Requests with empty values
    #             will be rejected with a <code>ValidationException</code> exception.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [AttributeValue] :value
    #   @option params [String] :action
    # @!attribute value
    #   <p>Represents the data for an attribute.</p>
    #            <p>Each attribute value is described as a name-value pair. The name is the data type, and
    #               the value is the data itself.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes">Data Types</a> in the <i>Amazon DynamoDB Developer Guide</i>.
    #           </p>
    #   @return [AttributeValue]
    # @!attribute action
    #   <p>Specifies how to perform the update. Valid values are <code>PUT</code> (default),
    #                   <code>DELETE</code>, and <code>ADD</code>. The behavior depends on whether the
    #               specified primary key already exists in the table.</p>
    #            <p>
    #               <b>If an item with the specified <i>Key</i> is found in
    #                   the table:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PUT</code> - Adds the specified attribute to the item. If the attribute
    #                       already exists, it is replaced by the new value. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE</code> - If no value is specified, the attribute and its value are
    #                       removed from the item. The data type of the specified value must match the
    #                       existing value's data type.</p>
    #                  <p>If a <i>set</i> of values is specified, then those values are
    #                       subtracted from the old set. For example, if the attribute value was the set
    #                           <code>[a,b,c]</code> and the <code>DELETE</code> action specified
    #                           <code>[a,c]</code>, then the final attribute value would be
    #                       <code>[b]</code>. Specifying an empty set is an error.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ADD</code> - If the attribute does not already exist, then the attribute
    #                       and its values are added to the item. If the attribute does exist, then the
    #                       behavior of <code>ADD</code> depends on the data type of the attribute:</p>
    #                  <ul>
    #                     <li>
    #                        <p>If the existing attribute is a number, and if <code>Value</code> is
    #                               also a number, then the <code>Value</code> is mathematically added to
    #                               the existing attribute. If <code>Value</code> is a negative number, then
    #                               it is subtracted from the existing attribute.</p>
    #                        <note>
    #                           <p> If you use <code>ADD</code> to increment or decrement a number
    #                                   value for an item that doesn't exist before the update, DynamoDB
    #                                   uses 0 as the initial value.</p>
    #                           <p>In addition, if you use <code>ADD</code> to update an existing
    #                                   item, and intend to increment or decrement an attribute value which
    #                                   does not yet exist, DynamoDB uses <code>0</code> as the initial
    #                                   value. For example, suppose that the item you want to update does
    #                                   not yet have an attribute named <i>itemcount</i>, but
    #                                   you decide to <code>ADD</code> the number <code>3</code> to this
    #                                   attribute anyway, even though it currently does not exist. DynamoDB
    #                                   will create the <i>itemcount</i> attribute, set its
    #                                   initial value to <code>0</code>, and finally add <code>3</code> to
    #                                   it. The result will be a new <i>itemcount</i>
    #                                   attribute in the item, with a value of <code>3</code>.</p>
    #                        </note>
    #                     </li>
    #                     <li>
    #                        <p>If the existing data type is a set, and if the <code>Value</code> is
    #                               also a set, then the <code>Value</code> is added to the existing set.
    #                               (This is a <i>set</i> operation, not mathematical
    #                               addition.) For example, if the attribute value was the set
    #                                   <code>[1,2]</code>, and the <code>ADD</code> action specified
    #                                   <code>[3]</code>, then the final attribute value would be
    #                                   <code>[1,2,3]</code>. An error occurs if an Add action is specified
    #                               for a set attribute and the attribute type specified does not match the
    #                               existing set type. </p>
    #                        <p>Both sets must have the same primitive data type. For example, if the
    #                               existing data type is a set of strings, the <code>Value</code> must also
    #                               be a set of strings. The same holds true for number sets and binary
    #                               sets.</p>
    #                     </li>
    #                  </ul>
    #                  <p>This action is only valid for an existing attribute whose data type is number
    #                       or is a set. Do not use <code>ADD</code> for any other data types.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>If no item with the specified <i>Key</i> is
    #                   found:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PUT</code> - DynamoDB creates a new item with the specified primary key,
    #                       and then adds the attribute. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE</code> - Nothing happens; there is no attribute to delete.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ADD</code> - DynamoDB creates a new item with the supplied primary key and
    #                       number (or set) for the attribute value. The only data types allowed are number,
    #                       number set, string set or binary set.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["ADD", "PUT", "DELETE"]
    #   @return [String]
    class AttributeValueUpdate
      include Hearth::Structure

      MEMBERS = %i[
        value
        action
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the properties of the scaling policy.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :policy_name
    #   @option params [AutoScalingTargetTrackingScalingPolicyConfigurationDescription] :target_tracking_scaling_policy_configuration
    # @!attribute policy_name
    #   <p>The name of the scaling policy.</p>
    #   @return [String]
    # @!attribute target_tracking_scaling_policy_configuration
    #   <p>Represents a target tracking scaling policy configuration.</p>
    #   @return [AutoScalingTargetTrackingScalingPolicyConfigurationDescription]
    class AutoScalingPolicyDescription
      include Hearth::Structure

      MEMBERS = %i[
        policy_name
        target_tracking_scaling_policy_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the auto scaling policy to be modified.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :policy_name
    #   @option params [AutoScalingTargetTrackingScalingPolicyConfigurationUpdate] :target_tracking_scaling_policy_configuration
    # @!attribute policy_name
    #   <p>The name of the scaling policy.</p>
    #   @return [String]
    # @!attribute target_tracking_scaling_policy_configuration
    #   <p>Represents a target tracking scaling policy configuration.</p>
    #   @return [AutoScalingTargetTrackingScalingPolicyConfigurationUpdate]
    class AutoScalingPolicyUpdate
      include Hearth::Structure

      MEMBERS = %i[
        policy_name
        target_tracking_scaling_policy_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the auto scaling settings for a global table or global secondary
    #             index.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :minimum_units
    #   @option params [Integer] :maximum_units
    #   @option params [Boolean] :auto_scaling_disabled
    #   @option params [String] :auto_scaling_role_arn
    #   @option params [Array<AutoScalingPolicyDescription>] :scaling_policies
    # @!attribute minimum_units
    #   <p>The minimum capacity units that a global table or global secondary index should be
    #               scaled down to.</p>
    #   @return [Integer]
    # @!attribute maximum_units
    #   <p>The maximum capacity units that a global table or global secondary index should be
    #               scaled up to.</p>
    #   @return [Integer]
    # @!attribute auto_scaling_disabled
    #   <p>Disabled auto scaling for this global table or global secondary index.</p>
    #   @return [Boolean]
    # @!attribute auto_scaling_role_arn
    #   <p>Role ARN used for configuring the auto scaling policy.</p>
    #   @return [String]
    # @!attribute scaling_policies
    #   <p>Information about the scaling policies.</p>
    #   @return [Array<AutoScalingPolicyDescription>]
    class AutoScalingSettingsDescription
      include Hearth::Structure

      MEMBERS = %i[
        minimum_units
        maximum_units
        auto_scaling_disabled
        auto_scaling_role_arn
        scaling_policies
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the auto scaling settings to be modified for a global table or global
    #             secondary index.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :minimum_units
    #   @option params [Integer] :maximum_units
    #   @option params [Boolean] :auto_scaling_disabled
    #   @option params [String] :auto_scaling_role_arn
    #   @option params [AutoScalingPolicyUpdate] :scaling_policy_update
    # @!attribute minimum_units
    #   <p>The minimum capacity units that a global table or global secondary index should be
    #               scaled down to.</p>
    #   @return [Integer]
    # @!attribute maximum_units
    #   <p>The maximum capacity units that a global table or global secondary index should be
    #               scaled up to.</p>
    #   @return [Integer]
    # @!attribute auto_scaling_disabled
    #   <p>Disabled auto scaling for this global table or global secondary index.</p>
    #   @return [Boolean]
    # @!attribute auto_scaling_role_arn
    #   <p>Role ARN used for configuring auto scaling policy.</p>
    #   @return [String]
    # @!attribute scaling_policy_update
    #   <p>The scaling policy to apply for scaling target global table or global secondary index
    #               capacity units.</p>
    #   @return [AutoScalingPolicyUpdate]
    class AutoScalingSettingsUpdate
      include Hearth::Structure

      MEMBERS = %i[
        minimum_units
        maximum_units
        auto_scaling_disabled
        auto_scaling_role_arn
        scaling_policy_update
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the properties of a target tracking scaling policy.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :disable_scale_in
    #   @option params [Integer] :scale_in_cooldown
    #   @option params [Integer] :scale_out_cooldown
    #   @option params [Float] :target_value
    # @!attribute disable_scale_in
    #   <p>Indicates whether scale in by the target tracking policy is disabled. If the value is
    #               true, scale in is disabled and the target tracking policy won't remove capacity from the
    #               scalable resource. Otherwise, scale in is enabled and the target tracking policy can
    #               remove capacity from the scalable resource. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute scale_in_cooldown
    #   <p>The amount of time, in seconds, after a scale in activity completes before another
    #               scale in activity can start. The cooldown period is used to block subsequent scale in
    #               requests until it has expired. You should scale in conservatively to protect your
    #               application's availability. However, if another alarm triggers a scale out policy during
    #               the cooldown period after a scale-in, application auto scaling scales out your scalable
    #               target immediately. </p>
    #   @return [Integer]
    # @!attribute scale_out_cooldown
    #   <p>The amount of time, in seconds, after a scale out activity completes before another
    #               scale out activity can start. While the cooldown period is in effect, the capacity that
    #               has been added by the previous scale out event that initiated the cooldown is calculated
    #               as part of the desired capacity for the next scale out. You should continuously (but not
    #               excessively) scale out.</p>
    #   @return [Integer]
    # @!attribute target_value
    #   <p>The target value for the metric. The range is 8.515920e-109 to 1.174271e+108 (Base 10)
    #               or 2e-360 to 2e360 (Base 2).</p>
    #   @return [Float]
    class AutoScalingTargetTrackingScalingPolicyConfigurationDescription
      include Hearth::Structure

      MEMBERS = %i[
        disable_scale_in
        scale_in_cooldown
        scale_out_cooldown
        target_value
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the settings of a target tracking scaling policy that will be
    #             modified.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :disable_scale_in
    #   @option params [Integer] :scale_in_cooldown
    #   @option params [Integer] :scale_out_cooldown
    #   @option params [Float] :target_value
    # @!attribute disable_scale_in
    #   <p>Indicates whether scale in by the target tracking policy is disabled. If the value is
    #               true, scale in is disabled and the target tracking policy won't remove capacity from the
    #               scalable resource. Otherwise, scale in is enabled and the target tracking policy can
    #               remove capacity from the scalable resource. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute scale_in_cooldown
    #   <p>The amount of time, in seconds, after a scale in activity completes before another
    #               scale in activity can start. The cooldown period is used to block subsequent scale in
    #               requests until it has expired. You should scale in conservatively to protect your
    #               application's availability. However, if another alarm triggers a scale out policy during
    #               the cooldown period after a scale-in, application auto scaling scales out your scalable
    #               target immediately. </p>
    #   @return [Integer]
    # @!attribute scale_out_cooldown
    #   <p>The amount of time, in seconds, after a scale out activity completes before another
    #               scale out activity can start. While the cooldown period is in effect, the capacity that
    #               has been added by the previous scale out event that initiated the cooldown is calculated
    #               as part of the desired capacity for the next scale out. You should continuously (but not
    #               excessively) scale out.</p>
    #   @return [Integer]
    # @!attribute target_value
    #   <p>The target value for the metric. The range is 8.515920e-109 to 1.174271e+108 (Base 10)
    #               or 2e-360 to 2e360 (Base 2).</p>
    #   @return [Float]
    class AutoScalingTargetTrackingScalingPolicyConfigurationUpdate
      include Hearth::Structure

      MEMBERS = %i[
        disable_scale_in
        scale_in_cooldown
        scale_out_cooldown
        target_value
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Contains the description of the backup created for the table.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [BackupDetails] :backup_details
    #   @option params [SourceTableDetails] :source_table_details
    #   @option params [SourceTableFeatureDetails] :source_table_feature_details
    # @!attribute backup_details
    #   <p>Contains the details of the backup created for the table. </p>
    #   @return [BackupDetails]
    # @!attribute source_table_details
    #   <p>Contains the details of the table when the backup was created. </p>
    #   @return [SourceTableDetails]
    # @!attribute source_table_feature_details
    #   <p>Contains the details of the features enabled on the table when the backup was created.
    #               For example, LSIs, GSIs, streams, TTL.</p>
    #   @return [SourceTableFeatureDetails]
    class BackupDescription
      include Hearth::Structure

      MEMBERS = %i[
        backup_details
        source_table_details
        source_table_feature_details
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Contains the details of the backup created for the table.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :backup_arn
    #   @option params [String] :backup_name
    #   @option params [Integer] :backup_size_bytes
    #   @option params [String] :backup_status
    #   @option params [String] :backup_type
    #   @option params [Time] :backup_creation_date_time
    #   @option params [Time] :backup_expiry_date_time
    # @!attribute backup_arn
    #   <p>ARN associated with the backup.</p>
    #   @return [String]
    # @!attribute backup_name
    #   <p>Name of the requested backup.</p>
    #   @return [String]
    # @!attribute backup_size_bytes
    #   <p>Size of the backup in bytes. DynamoDB updates this value approximately every six
    #               hours. Recent changes might not be reflected in this value.</p>
    #   @return [Integer]
    # @!attribute backup_status
    #   <p>Backup can be in one of the following states: CREATING, ACTIVE, DELETED. </p>
    #   Enum, one of: ["CREATING", "DELETED", "AVAILABLE"]
    #   @return [String]
    # @!attribute backup_type
    #   <p>BackupType:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>USER</code> - You create and manage these using the on-demand backup
    #                       feature.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SYSTEM</code> - If you delete a table with point-in-time recovery enabled,
    #                       a <code>SYSTEM</code> backup is automatically created and is retained for 35
    #                       days (at no additional cost). System backups allow you to restore the deleted
    #                       table to the state it was in just before the point of deletion. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_BACKUP</code> - On-demand backup created by you from Backup service.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["USER", "SYSTEM", "AWS_BACKUP"]
    #   @return [String]
    # @!attribute backup_creation_date_time
    #   <p>Time at which the backup was created. This is the request time of the backup. </p>
    #   @return [Time]
    # @!attribute backup_expiry_date_time
    #   <p>Time at which the automatic on-demand backup created by DynamoDB will
    #               expire. This <code>SYSTEM</code> on-demand backup expires automatically 35 days after
    #               its creation.</p>
    #   @return [Time]
    class BackupDetails
      include Hearth::Structure

      MEMBERS = %i[
        backup_arn
        backup_name
        backup_size_bytes
        backup_status
        backup_type
        backup_creation_date_time
        backup_expiry_date_time
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>There is another ongoing conflicting backup control plane operation on the table.
    #             The backup is either being created, deleted or restored to a table.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class BackupInUseException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Backup not found for the given BackupARN. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class BackupNotFoundException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for BackupStatus
    module BackupStatus
      CREATING = "CREATING"

      DELETED = "DELETED"

      AVAILABLE = "AVAILABLE"
    end

    # <p>Contains details for the backup.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [String] :table_id
    #   @option params [String] :table_arn
    #   @option params [String] :backup_arn
    #   @option params [String] :backup_name
    #   @option params [Time] :backup_creation_date_time
    #   @option params [Time] :backup_expiry_date_time
    #   @option params [String] :backup_status
    #   @option params [String] :backup_type
    #   @option params [Integer] :backup_size_bytes
    # @!attribute table_name
    #   <p>Name of the table.</p>
    #   @return [String]
    # @!attribute table_id
    #   <p>Unique identifier for the table.</p>
    #   @return [String]
    # @!attribute table_arn
    #   <p>ARN associated with the table.</p>
    #   @return [String]
    # @!attribute backup_arn
    #   <p>ARN associated with the backup.</p>
    #   @return [String]
    # @!attribute backup_name
    #   <p>Name of the specified backup.</p>
    #   @return [String]
    # @!attribute backup_creation_date_time
    #   <p>Time at which the backup was created.</p>
    #   @return [Time]
    # @!attribute backup_expiry_date_time
    #   <p>Time at which the automatic on-demand backup created by DynamoDB will
    #               expire. This <code>SYSTEM</code> on-demand backup expires automatically 35 days after
    #               its creation.</p>
    #   @return [Time]
    # @!attribute backup_status
    #   <p>Backup can be in one of the following states: CREATING, ACTIVE, DELETED.</p>
    #   Enum, one of: ["CREATING", "DELETED", "AVAILABLE"]
    #   @return [String]
    # @!attribute backup_type
    #   <p>BackupType:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>USER</code> - You create and manage these using the on-demand backup
    #                       feature.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SYSTEM</code> - If you delete a table with point-in-time recovery enabled,
    #                       a <code>SYSTEM</code> backup is automatically created and is retained for 35
    #                       days (at no additional cost). System backups allow you to restore the deleted
    #                       table to the state it was in just before the point of deletion. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_BACKUP</code> - On-demand backup created by you from Backup service.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["USER", "SYSTEM", "AWS_BACKUP"]
    #   @return [String]
    # @!attribute backup_size_bytes
    #   <p>Size of the backup in bytes.</p>
    #   @return [Integer]
    class BackupSummary
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        table_id
        table_arn
        backup_arn
        backup_name
        backup_creation_date_time
        backup_expiry_date_time
        backup_status
        backup_type
        backup_size_bytes
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for BackupType
    module BackupType
      USER = "USER"

      SYSTEM = "SYSTEM"

      AWS_BACKUP = "AWS_BACKUP"
    end

    # Enum constants for BackupTypeFilter
    module BackupTypeFilter
      USER = "USER"

      SYSTEM = "SYSTEM"

      AWS_BACKUP = "AWS_BACKUP"

      ALL = "ALL"
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<BatchStatementRequest>] :statements
    #   @option params [String] :return_consumed_capacity
    # @!attribute statements
    #   <p>The list of PartiQL statements representing the batch to run.</p>
    #   @return [Array<BatchStatementRequest>]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["INDEXES", "TOTAL", "NONE"]
    #   @return [String]
    class BatchExecuteStatementInput
      include Hearth::Structure

      MEMBERS = %i[
        statements
        return_consumed_capacity
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<BatchStatementResponse>] :responses
    #   @option params [Array<ConsumedCapacity>] :consumed_capacity
    # @!attribute responses
    #   <p>The response to each PartiQL statement in the batch. The values of the list are
    #               ordered according to the ordering of the request statements.</p>
    #   @return [Array<BatchStatementResponse>]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the entire operation. The values of the list are
    #               ordered according to the ordering of the statements.</p>
    #   @return [Array<ConsumedCapacity>]
    class BatchExecuteStatementOutput
      include Hearth::Structure

      MEMBERS = %i[
        responses
        consumed_capacity
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the input of a <code>BatchGetItem</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, KeysAndAttributes>] :request_items
    #   @option params [String] :return_consumed_capacity
    # @!attribute request_items
    #   <p>A map of one or more table names and, for each table, a map that describes one or more
    #               items to retrieve from that table. Each table name can be used only once per
    #                   <code>BatchGetItem</code> request.</p>
    #            <p>Each element in the map of items to retrieve consists of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ConsistentRead</code> - If <code>true</code>, a strongly consistent read
    #                       is used; if <code>false</code> (the default), an eventually consistent read is
    #                       used.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ExpressionAttributeNames</code> - One or more substitution tokens for
    #                       attribute names in the <code>ProjectionExpression</code> parameter. The
    #                       following are some use cases for using
    #                       <code>ExpressionAttributeNames</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                               word.</p>
    #                     </li>
    #                     <li>
    #                        <p>To create a placeholder for repeating occurrences of an attribute name
    #                               in an expression.</p>
    #                     </li>
    #                     <li>
    #                        <p>To prevent special characters in an attribute name from being
    #                               misinterpreted in an expression.</p>
    #                     </li>
    #                  </ul>
    #                  <p>Use the <b>#</b> character in an expression to
    #                       dereference an attribute name. For example, consider the following attribute
    #                       name:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Percentile</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>The name of this attribute conflicts with a reserved word, so it cannot be
    #                       used directly in an expression. (For the complete list of reserved words, see
    #                           <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved
    #                           Words</a> in the <i>Amazon DynamoDB Developer Guide</i>).
    #                       To work around this, you could specify the following for
    #                           <code>ExpressionAttributeNames</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>{"#P":"Percentile"}</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>You could then use this substitution in an expression, as in this
    #                       example:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>#P = :val</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>Tokens that begin with the <b>:</b> character
    #                           are <i>expression attribute values</i>, which are placeholders
    #                           for the actual value at runtime.</p>
    #                  </note>
    #                  <p>For more information about expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB
    #                           Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Keys</code> - An array of primary key attribute values that define
    #                       specific items in the table. For each primary key, you must provide
    #                           <i>all</i> of the key attributes. For example, with a simple
    #                       primary key, you only need to provide the partition key value. For a composite
    #                       key, you must provide <i>both</i> the partition key value and the
    #                       sort key value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProjectionExpression</code> - A string that identifies one or more
    #                       attributes to retrieve from the table. These attributes can include scalars,
    #                       sets, or elements of a JSON document. The attributes in the expression must be
    #                       separated by commas.</p>
    #                  <p>If no attribute names are specified, then all attributes are returned. If any
    #                       of the requested attributes are not found, they do not appear in the
    #                       result.</p>
    #                  <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB
    #                           Developer Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AttributesToGet</code> - This is a legacy parameter. Use
    #                           <code>ProjectionExpression</code> instead. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
    #                           Guide</i>. </p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, KeysAndAttributes>]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["INDEXES", "TOTAL", "NONE"]
    #   @return [String]
    class BatchGetItemInput
      include Hearth::Structure

      MEMBERS = %i[
        request_items
        return_consumed_capacity
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the output of a <code>BatchGetItem</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, Array<Hash<String, AttributeValue>>>] :responses
    #   @option params [Hash<String, KeysAndAttributes>] :unprocessed_keys
    #   @option params [Array<ConsumedCapacity>] :consumed_capacity
    # @!attribute responses
    #   <p>A map of table name to a list of items. Each object in <code>Responses</code> consists
    #               of a table name, along with a map of attribute data consisting of the data type and
    #               attribute value.</p>
    #   @return [Hash<String, Array<Hash<String, AttributeValue>>>]
    # @!attribute unprocessed_keys
    #   <p>A map of tables and their respective keys that were not processed with the current
    #               response. The <code>UnprocessedKeys</code> value is in the same form as
    #                   <code>RequestItems</code>, so the value can be provided directly to a subsequent
    #                   <code>BatchGetItem</code> operation. For more information, see
    #                   <code>RequestItems</code> in the Request Parameters section.</p>
    #            <p>Each element consists of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Keys</code> - An array of primary key attribute values that define
    #                       specific items in the table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProjectionExpression</code> - One or more attributes to be retrieved from
    #                       the table or index. By default, all attributes are returned. If a requested
    #                       attribute is not found, it does not appear in the result.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConsistentRead</code> - The consistency of a read operation. If set to
    #                           <code>true</code>, then a strongly consistent read is used; otherwise, an
    #                       eventually consistent read is used.</p>
    #               </li>
    #            </ul>
    #            <p>If there are no unprocessed keys remaining, the response contains an empty
    #                   <code>UnprocessedKeys</code> map.</p>
    #   @return [Hash<String, KeysAndAttributes>]
    # @!attribute consumed_capacity
    #   <p>The read capacity units consumed by the entire <code>BatchGetItem</code>
    #               operation.</p>
    #            <p>Each element consists of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TableName</code> - The table that consumed the provisioned
    #                       throughput.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CapacityUnits</code> - The total number of capacity units consumed.</p>
    #               </li>
    #            </ul>
    #   @return [Array<ConsumedCapacity>]
    class BatchGetItemOutput
      include Hearth::Structure

      MEMBERS = %i[
        responses
        unprocessed_keys
        consumed_capacity
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p> An error associated with a statement in a PartiQL batch that was run. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :code
    #   @option params [String] :message
    #   @option params [Hash<String, AttributeValue>] :item
    # @!attribute code
    #   <p> The error code associated with the failed PartiQL batch statement. </p>
    #   Enum, one of: ["ConditionalCheckFailed", "ItemCollectionSizeLimitExceeded", "RequestLimitExceeded", "ValidationError", "ProvisionedThroughputExceeded", "TransactionConflict", "ThrottlingError", "InternalServerError", "ResourceNotFound", "AccessDenied", "DuplicateItem"]
    #   @return [String]
    # @!attribute message
    #   <p> The error message associated with the PartiQL batch response. </p>
    #   @return [String]
    # @!attribute item
    #   <p>The item which caused the condition check to fail. This will be set if ReturnValuesOnConditionCheckFailure is specified as <code>ALL_OLD</code>.</p>
    #   @return [Hash<String, AttributeValue>]
    class BatchStatementError
      include Hearth::Structure

      MEMBERS = %i[
        code
        message
        item
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for BatchStatementErrorCodeEnum
    module BatchStatementErrorCodeEnum
      CONDITIONAL_CHECK_FAILED = "ConditionalCheckFailed"

      ITEM_COLLECTION_SIZE_LIMIT_EXCEEDED = "ItemCollectionSizeLimitExceeded"

      REQUEST_LIMIT_EXCEEDED = "RequestLimitExceeded"

      VALIDATION_ERROR = "ValidationError"

      PROVISIONED_THROUGHPUT_EXCEEDED = "ProvisionedThroughputExceeded"

      TRANSACTION_CONFLICT = "TransactionConflict"

      THROTTLING_ERROR = "ThrottlingError"

      INTERNAL_SERVER_ERROR = "InternalServerError"

      RESOURCE_NOT_FOUND = "ResourceNotFound"

      ACCESS_DENIED = "AccessDenied"

      DUPLICATE_ITEM = "DuplicateItem"
    end

    # <p> A PartiQL batch statement request. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :statement
    #   @option params [Array<AttributeValue>] :parameters
    #   @option params [Boolean] :consistent_read
    #   @option params [String] :return_values_on_condition_check_failure
    # @!attribute statement
    #   <p> A valid PartiQL statement. </p>
    #   @return [String]
    # @!attribute parameters
    #   <p> The parameters associated with a PartiQL statement in the batch request. </p>
    #   @return [Array<AttributeValue>]
    # @!attribute consistent_read
    #   <p> The read consistency of the PartiQL batch request. </p>
    #   @return [Boolean]
    # @!attribute return_values_on_condition_check_failure
    #   <p>An optional parameter that returns the item attributes for a PartiQL batch request
    #               operation that failed a condition check.</p>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #   Enum, one of: ["ALL_OLD", "NONE"]
    #   @return [String]
    class BatchStatementRequest
      include Hearth::Structure

      MEMBERS = %i[
        statement
        parameters
        consistent_read
        return_values_on_condition_check_failure
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p> A PartiQL batch statement response.. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [BatchStatementError] :error
    #   @option params [String] :table_name
    #   @option params [Hash<String, AttributeValue>] :item
    # @!attribute error
    #   <p> The error associated with a failed PartiQL batch statement. </p>
    #   @return [BatchStatementError]
    # @!attribute table_name
    #   <p> The table name associated with a failed PartiQL batch statement. </p>
    #   @return [String]
    # @!attribute item
    #   <p> A DynamoDB item associated with a BatchStatementResponse </p>
    #   @return [Hash<String, AttributeValue>]
    class BatchStatementResponse
      include Hearth::Structure

      MEMBERS = %i[
        error
        table_name
        item
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the input of a <code>BatchWriteItem</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, Array<WriteRequest>>] :request_items
    #   @option params [String] :return_consumed_capacity
    #   @option params [String] :return_item_collection_metrics
    # @!attribute request_items
    #   <p>A map of one or more table names and, for each table, a list of operations to be
    #               performed (<code>DeleteRequest</code> or <code>PutRequest</code>). Each element in the
    #               map consists of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DeleteRequest</code> - Perform a <code>DeleteItem</code> operation on the
    #                       specified item. The item to be deleted is identified by a <code>Key</code>
    #                       subelement:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Key</code> - A map of primary key attribute values that uniquely
    #                               identify the item. Each entry in this map consists of an attribute name
    #                               and an attribute value. For each primary key, you must provide
    #                                   <i>all</i> of the key attributes. For example, with a
    #                               simple primary key, you only need to provide a value for the partition
    #                               key. For a composite primary key, you must provide values for
    #                                   <i>both</i> the partition key and the sort key.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PutRequest</code> - Perform a <code>PutItem</code> operation on the
    #                       specified item. The item to be put is identified by an <code>Item</code>
    #                       subelement:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Item</code> - A map of attributes and their values. Each entry in
    #                               this map consists of an attribute name and an attribute value. Attribute
    #                               values must not be null; string and binary type attributes must have
    #                               lengths greater than zero; and set type attributes must not be empty.
    #                               Requests that contain empty values are rejected with a
    #                                   <code>ValidationException</code> exception.</p>
    #                        <p>If you specify any attributes that are part of an index key, then the
    #                               data types for those attributes must match those of the schema in the
    #                               table's attribute definition.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [Hash<String, Array<WriteRequest>>]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["INDEXES", "TOTAL", "NONE"]
    #   @return [String]
    # @!attribute return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections, if any, that were modified
    #               during the operation are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned.</p>
    #   Enum, one of: ["SIZE", "NONE"]
    #   @return [String]
    class BatchWriteItemInput
      include Hearth::Structure

      MEMBERS = %i[
        request_items
        return_consumed_capacity
        return_item_collection_metrics
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the output of a <code>BatchWriteItem</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, Array<WriteRequest>>] :unprocessed_items
    #   @option params [Hash<String, Array<ItemCollectionMetrics>>] :item_collection_metrics
    #   @option params [Array<ConsumedCapacity>] :consumed_capacity
    # @!attribute unprocessed_items
    #   <p>A map of tables and requests against those tables that were not processed. The
    #                   <code>UnprocessedItems</code> value is in the same form as
    #               <code>RequestItems</code>, so you can provide this value directly to a subsequent
    #                   <code>BatchWriteItem</code> operation. For more information, see
    #                   <code>RequestItems</code> in the Request Parameters section.</p>
    #            <p>Each <code>UnprocessedItems</code> entry consists of a table name and, for that table,
    #               a list of operations to perform (<code>DeleteRequest</code> or
    #               <code>PutRequest</code>).</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DeleteRequest</code> - Perform a <code>DeleteItem</code> operation on the
    #                       specified item. The item to be deleted is identified by a <code>Key</code>
    #                       subelement:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Key</code> - A map of primary key attribute values that uniquely
    #                               identify the item. Each entry in this map consists of an attribute name
    #                               and an attribute value.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PutRequest</code> - Perform a <code>PutItem</code> operation on the
    #                       specified item. The item to be put is identified by an <code>Item</code>
    #                       subelement:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Item</code> - A map of attributes and their values. Each entry in
    #                               this map consists of an attribute name and an attribute value. Attribute
    #                               values must not be null; string and binary type attributes must have
    #                               lengths greater than zero; and set type attributes must not be empty.
    #                               Requests that contain empty values will be rejected with a
    #                                   <code>ValidationException</code> exception.</p>
    #                        <p>If you specify any attributes that are part of an index key, then the
    #                               data types for those attributes must match those of the schema in the
    #                               table's attribute definition.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <p>If there are no unprocessed items remaining, the response contains an empty
    #                   <code>UnprocessedItems</code> map.</p>
    #   @return [Hash<String, Array<WriteRequest>>]
    # @!attribute item_collection_metrics
    #   <p>A list of tables that were processed by <code>BatchWriteItem</code> and, for each
    #               table, information about any item collections that were affected by individual
    #                   <code>DeleteItem</code> or <code>PutItem</code> operations.</p>
    #            <p>Each entry consists of the following subelements:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ItemCollectionKey</code> - The partition key value of the item collection.
    #                       This is the same as the partition key value of the item.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SizeEstimateRangeGB</code> - An estimate of item collection size,
    #                       expressed in GB. This is a two-element array containing a lower bound and an
    #                       upper bound for the estimate. The estimate includes the size of all the items in
    #                       the table, plus the size of all attributes projected into all of the local
    #                       secondary indexes on the table. Use this estimate to measure whether a local
    #                       secondary index is approaching its size limit.</p>
    #                  <p>The estimate is subject to change over time; therefore, do not rely on the
    #                       precision or accuracy of the estimate.</p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, Array<ItemCollectionMetrics>>]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the entire <code>BatchWriteItem</code>
    #               operation.</p>
    #            <p>Each element consists of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TableName</code> - The table that consumed the provisioned
    #                       throughput.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CapacityUnits</code> - The total number of capacity units consumed.</p>
    #               </li>
    #            </ul>
    #   @return [Array<ConsumedCapacity>]
    class BatchWriteItemOutput
      include Hearth::Structure

      MEMBERS = %i[
        unprocessed_items
        item_collection_metrics
        consumed_capacity
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for BillingMode
    module BillingMode
      PROVISIONED = "PROVISIONED"

      PAY_PER_REQUEST = "PAY_PER_REQUEST"
    end

    # <p>Contains the details for the read/write capacity mode. This page talks about
    #                 <code>PROVISIONED</code> and <code>PAY_PER_REQUEST</code> billing modes. For more
    #             information about these modes, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html">Read/write capacity mode</a>.</p>
    #          <note>
    #             <p>You may need to switch to on-demand mode at least once in order to return a
    #                     <code>BillingModeSummary</code> response.</p>
    #          </note>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :billing_mode
    #   @option params [Time] :last_update_to_pay_per_request_date_time
    # @!attribute billing_mode
    #   <p>Controls how you are charged for read and write throughput and how you manage
    #               capacity. This setting can be changed later.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PROVISIONED</code> - Sets the read/write capacity mode to
    #                           <code>PROVISIONED</code>. We recommend using <code>PROVISIONED</code> for
    #                       predictable workloads.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PAY_PER_REQUEST</code> - Sets the read/write capacity mode to
    #                           <code>PAY_PER_REQUEST</code>. We recommend using
    #                           <code>PAY_PER_REQUEST</code> for unpredictable workloads. </p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["PROVISIONED", "PAY_PER_REQUEST"]
    #   @return [String]
    # @!attribute last_update_to_pay_per_request_date_time
    #   <p>Represents the time when <code>PAY_PER_REQUEST</code> was last set as the read/write
    #               capacity mode.</p>
    #   @return [Time]
    class BillingModeSummary
      include Hearth::Structure

      MEMBERS = %i[
        billing_mode
        last_update_to_pay_per_request_date_time
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>An ordered list of errors for each item in the request which caused the transaction to
    #             get cancelled. The values of the list are ordered according to the ordering of the
    #                 <code>TransactWriteItems</code> request parameter. If no error occurred for the
    #             associated item an error with a Null code and Null message will be present. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, AttributeValue>] :item
    #   @option params [String] :code
    #   @option params [String] :message
    # @!attribute item
    #   <p>Item in the request which caused the transaction to get cancelled.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute code
    #   <p>Status code for the result of the cancelled transaction.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Cancellation reason message description.</p>
    #   @return [String]
    class CancellationReason
      include Hearth::Structure

      MEMBERS = %i[
        item
        code
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the amount of provisioned throughput capacity consumed on a table or an
    #             index.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Float] :read_capacity_units
    #   @option params [Float] :write_capacity_units
    #   @option params [Float] :capacity_units
    # @!attribute read_capacity_units
    #   <p>The total number of read capacity units consumed on a table or an index.</p>
    #   @return [Float]
    # @!attribute write_capacity_units
    #   <p>The total number of write capacity units consumed on a table or an index.</p>
    #   @return [Float]
    # @!attribute capacity_units
    #   <p>The total number of capacity units consumed on a table or an index.</p>
    #   @return [Float]
    class Capacity
      include Hearth::Structure

      MEMBERS = %i[
        read_capacity_units
        write_capacity_units
        capacity_units
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ComparisonOperator
    module ComparisonOperator
      EQ = "EQ"

      NE = "NE"

      IN = "IN"

      LE = "LE"

      LT = "LT"

      GE = "GE"

      GT = "GT"

      BETWEEN = "BETWEEN"

      NOT_NULL = "NOT_NULL"

      NULL = "NULL"

      CONTAINS = "CONTAINS"

      NOT_CONTAINS = "NOT_CONTAINS"

      BEGINS_WITH = "BEGINS_WITH"
    end

    # <p>Represents the selection criteria for a <code>Query</code> or <code>Scan</code>
    #             operation:</p>
    #          <ul>
    #             <li>
    #                <p>For a <code>Query</code> operation, <code>Condition</code> is used for
    #                     specifying the <code>KeyConditions</code> to use when querying a table or an
    #                     index. For <code>KeyConditions</code>, only the following comparison operators
    #                     are supported:</p>
    #                <p>
    #                   <code>EQ | LE | LT | GE | GT | BEGINS_WITH | BETWEEN</code>
    #                </p>
    #                <p>
    #                   <code>Condition</code> is also used in a <code>QueryFilter</code>, which
    #                     evaluates the query results and returns only the desired values.</p>
    #             </li>
    #             <li>
    #                <p>For a <code>Scan</code> operation, <code>Condition</code> is used in a
    #                         <code>ScanFilter</code>, which evaluates the scan results and returns only
    #                     the desired values.</p>
    #             </li>
    #          </ul>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<AttributeValue>] :attribute_value_list
    #   @option params [String] :comparison_operator
    # @!attribute attribute_value_list
    #   <p>One or more values to evaluate against the supplied attribute. The number of values in
    #               the list depends on the <code>ComparisonOperator</code> being used.</p>
    #            <p>For type Number, value comparisons are numeric.</p>
    #            <p>String value comparisons for greater than, equals, or less than are based on ASCII
    #               character code values. For example, <code>a</code> is greater than <code>A</code>, and
    #                   <code>a</code> is greater than <code>B</code>. For a list of code values, see <a href="http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters">http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters</a>.</p>
    #            <p>For Binary, DynamoDB treats each byte of the binary data as unsigned when it
    #               compares binary values.</p>
    #   @return [Array<AttributeValue>]
    # @!attribute comparison_operator
    #   <p>A comparator for evaluating attributes. For example, equals, greater than, less than,
    #               etc.</p>
    #            <p>The following comparison operators are available:</p>
    #            <p>
    #               <code>EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS | NOT_CONTAINS |
    #                   BEGINS_WITH | IN | BETWEEN</code>
    #            </p>
    #            <p>The following are descriptions of each comparison operator.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EQ</code> : Equal. <code>EQ</code> is supported for all data types,
    #                       including lists and maps.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, Binary, String Set, Number Set, or Binary Set.
    #                       If an item contains an <code>AttributeValue</code> element of a different type
    #                       than the one provided in the request, the value does not match. For example,
    #                           <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also,
    #                           <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2",
    #                       "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NE</code> : Not equal. <code>NE</code> is supported for all data types,
    #                       including lists and maps.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       of type String, Number, Binary, String Set, Number Set, or Binary Set. If an
    #                       item contains an <code>AttributeValue</code> of a different type than the one
    #                       provided in the request, the value does not match. For example,
    #                           <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also,
    #                           <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2",
    #                       "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LE</code> : Less than or equal. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If an item contains
    #                       an <code>AttributeValue</code> element of a different type than the one provided
    #                       in the request, the value does not match. For example, <code>{"S":"6"}</code>
    #                       does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not
    #                       compare to <code>{"NS":["6", "2", "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LT</code> : Less than. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       of type String, Number, or Binary (not a set type). If an item contains an
    #                           <code>AttributeValue</code> element of a different type than the one
    #                       provided in the request, the value does not match. For example,
    #                           <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also,
    #                           <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2",
    #                           "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GE</code> : Greater than or equal. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If an item contains
    #                       an <code>AttributeValue</code> element of a different type than the one provided
    #                       in the request, the value does not match. For example, <code>{"S":"6"}</code>
    #                       does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not
    #                       compare to <code>{"NS":["6", "2", "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GT</code> : Greater than. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If an item contains
    #                       an <code>AttributeValue</code> element of a different type than the one provided
    #                       in the request, the value does not match. For example, <code>{"S":"6"}</code>
    #                       does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not
    #                       compare to <code>{"NS":["6", "2", "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_NULL</code> : The attribute exists. <code>NOT_NULL</code> is supported
    #                       for all data types, including lists and maps.</p>
    #                  <note>
    #                     <p>This operator tests for the existence of an attribute, not its data type.
    #                           If the data type of attribute "<code>a</code>" is null, and you evaluate it
    #                           using <code>NOT_NULL</code>, the result is a Boolean <code>true</code>. This
    #                           result is because the attribute "<code>a</code>" exists; its data type is
    #                           not relevant to the <code>NOT_NULL</code> comparison operator.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NULL</code> : The attribute does not exist. <code>NULL</code> is supported
    #                       for all data types, including lists and maps.</p>
    #                  <note>
    #                     <p>This operator tests for the nonexistence of an attribute, not its data
    #                           type. If the data type of attribute "<code>a</code>" is null, and you
    #                           evaluate it using <code>NULL</code>, the result is a Boolean
    #                               <code>false</code>. This is because the attribute "<code>a</code>"
    #                           exists; its data type is not relevant to the <code>NULL</code> comparison
    #                           operator.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONTAINS</code> : Checks for a subsequence, or value in a set.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If the target
    #                       attribute of the comparison is of type String, then the operator checks for a
    #                       substring match. If the target attribute of the comparison is of type Binary,
    #                       then the operator looks for a subsequence of the target that matches the input.
    #                       If the target attribute of the comparison is a set ("<code>SS</code>",
    #                           "<code>NS</code>", or "<code>BS</code>"), then the operator evaluates to
    #                       true if it finds an exact match with any member of the set.</p>
    #                  <p>CONTAINS is supported for lists: When evaluating "<code>a CONTAINS b</code>",
    #                           "<code>a</code>" can be a list; however, "<code>b</code>" cannot be a set, a
    #                       map, or a list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CONTAINS</code> : Checks for absence of a subsequence, or absence of a
    #                       value in a set.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If the target
    #                       attribute of the comparison is a String, then the operator checks for the
    #                       absence of a substring match. If the target attribute of the comparison is
    #                       Binary, then the operator checks for the absence of a subsequence of the target
    #                       that matches the input. If the target attribute of the comparison is a set
    #                           ("<code>SS</code>", "<code>NS</code>", or "<code>BS</code>"), then the
    #                       operator evaluates to true if it <i>does not</i> find an exact
    #                       match with any member of the set.</p>
    #                  <p>NOT_CONTAINS is supported for lists: When evaluating "<code>a NOT CONTAINS
    #                           b</code>", "<code>a</code>" can be a list; however, "<code>b</code>" cannot
    #                       be a set, a map, or a list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BEGINS_WITH</code> : Checks for a prefix. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       of type String or Binary (not a Number or a set type). The target attribute of
    #                       the comparison must be of type String or Binary (not a Number or a set
    #                       type).</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN</code> : Checks for matching elements in a list.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain one or more
    #                           <code>AttributeValue</code> elements of type String, Number, or Binary.
    #                       These attributes are compared against an existing attribute of an item. If any
    #                       elements of the input are equal to the item attribute, the expression evaluates
    #                       to true.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BETWEEN</code> : Greater than or equal to the first value, and less than
    #                       or equal to the second value. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> must contain two <code>AttributeValue</code>
    #                       elements of the same type, either String, Number, or Binary (not a set type). A
    #                       target attribute matches if the target value is greater than, or equal to, the
    #                       first element and less than, or equal to, the second element. If an item
    #                       contains an <code>AttributeValue</code> element of a different type than the one
    #                       provided in the request, the value does not match. For example,
    #                           <code>{"S":"6"}</code> does not compare to <code>{"N":"6"}</code>. Also,
    #                           <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2",
    #                           "1"]}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For usage examples of <code>AttributeValueList</code> and
    #                   <code>ComparisonOperator</code>, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.html">Legacy
    #                   Conditional Parameters</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   Enum, one of: ["EQ", "NE", "IN", "LE", "LT", "GE", "GT", "BETWEEN", "NOT_NULL", "NULL", "CONTAINS", "NOT_CONTAINS", "BEGINS_WITH"]
    #   @return [String]
    class Condition
      include Hearth::Structure

      MEMBERS = %i[
        attribute_value_list
        comparison_operator
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents a request to perform a check that an item exists or to check the condition
    #             of specific attributes of the item.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, AttributeValue>] :key
    #   @option params [String] :table_name
    #   @option params [String] :condition_expression
    #   @option params [Hash<String, String>] :expression_attribute_names
    #   @option params [Hash<String, AttributeValue>] :expression_attribute_values
    #   @option params [String] :return_values_on_condition_check_failure
    # @!attribute key
    #   <p>The primary key of the item to be checked. Each element consists of an attribute name
    #               and a value for that attribute.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute table_name
    #   <p>Name of the table for the check item request.</p>
    #   @return [String]
    # @!attribute condition_expression
    #   <p>A condition that must be satisfied in order for a conditional update to
    #               succeed. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.ConditionExpressions.html">Condition expressions</a> in the <i>Amazon DynamoDB Developer
    #                       Guide</i>.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. For more information, see
    #               <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.ExpressionAttributeNames.html">Expression attribute names</a>
    #               in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.ConditionExpressions.html">Condition expressions</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute return_values_on_condition_check_failure
    #   <p>Use <code>ReturnValuesOnConditionCheckFailure</code> to get the item attributes if the
    #                   <code>ConditionCheck</code> condition fails. For
    #                   <code>ReturnValuesOnConditionCheckFailure</code>, the valid values are: NONE and
    #               ALL_OLD.</p>
    #   Enum, one of: ["ALL_OLD", "NONE"]
    #   @return [String]
    class ConditionCheck
      include Hearth::Structure

      MEMBERS = %i[
        key
        table_name
        condition_expression
        expression_attribute_names
        expression_attribute_values
        return_values_on_condition_check_failure
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>A condition specified in the operation could not be evaluated.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    #   @option params [Hash<String, AttributeValue>] :item
    # @!attribute message
    #   <p>The conditional request failed.</p>
    #   @return [String]
    # @!attribute item
    #   <p>Item which caused the <code>ConditionalCheckFailedException</code>.</p>
    #   @return [Hash<String, AttributeValue>]
    class ConditionalCheckFailedException
      include Hearth::Structure

      MEMBERS = %i[
        message
        item
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ConditionalOperator
    module ConditionalOperator
      AND = "AND"

      OR = "OR"
    end

    # <p>The capacity units consumed by an operation. The data returned includes the total
    #             provisioned throughput consumed, along with statistics for the table and any indexes
    #             involved in the operation. <code>ConsumedCapacity</code> is only returned if the request
    #             asked for it. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer
    #                 Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [Float] :capacity_units
    #   @option params [Float] :read_capacity_units
    #   @option params [Float] :write_capacity_units
    #   @option params [Capacity] :table
    #   @option params [Hash<String, Capacity>] :local_secondary_indexes
    #   @option params [Hash<String, Capacity>] :global_secondary_indexes
    # @!attribute table_name
    #   <p>The name of the table that was affected by the operation.</p>
    #   @return [String]
    # @!attribute capacity_units
    #   <p>The total number of capacity units consumed by the operation.</p>
    #   @return [Float]
    # @!attribute read_capacity_units
    #   <p>The total number of read capacity units consumed by the operation.</p>
    #   @return [Float]
    # @!attribute write_capacity_units
    #   <p>The total number of write capacity units consumed by the operation.</p>
    #   @return [Float]
    # @!attribute table
    #   <p>The amount of throughput consumed on the table affected by the operation.</p>
    #   @return [Capacity]
    # @!attribute local_secondary_indexes
    #   <p>The amount of throughput consumed on each local index affected by the
    #               operation.</p>
    #   @return [Hash<String, Capacity>]
    # @!attribute global_secondary_indexes
    #   <p>The amount of throughput consumed on each global index affected by the
    #               operation.</p>
    #   @return [Hash<String, Capacity>]
    class ConsumedCapacity
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        capacity_units
        read_capacity_units
        write_capacity_units
        table
        local_secondary_indexes
        global_secondary_indexes
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the continuous backups and point in time recovery settings on the
    #             table.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :continuous_backups_status
    #   @option params [PointInTimeRecoveryDescription] :point_in_time_recovery_description
    # @!attribute continuous_backups_status
    #   <p>
    #               <code>ContinuousBackupsStatus</code> can be one of the following states: ENABLED,
    #               DISABLED</p>
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #   @return [String]
    # @!attribute point_in_time_recovery_description
    #   <p>The description of the point in time recovery settings applied to the table.</p>
    #   @return [PointInTimeRecoveryDescription]
    class ContinuousBackupsDescription
      include Hearth::Structure

      MEMBERS = %i[
        continuous_backups_status
        point_in_time_recovery_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ContinuousBackupsStatus
    module ContinuousBackupsStatus
      ENABLED = "ENABLED"

      DISABLED = "DISABLED"
    end

    # <p>Backups have not yet been enabled for this table.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class ContinuousBackupsUnavailableException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ContributorInsightsAction
    module ContributorInsightsAction
      ENABLE = "ENABLE"

      DISABLE = "DISABLE"
    end

    # Enum constants for ContributorInsightsStatus
    module ContributorInsightsStatus
      ENABLING = "ENABLING"

      ENABLED = "ENABLED"

      DISABLING = "DISABLING"

      DISABLED = "DISABLED"

      FAILED = "FAILED"
    end

    # <p>Represents a Contributor Insights summary entry.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [String] :index_name
    #   @option params [String] :contributor_insights_status
    # @!attribute table_name
    #   <p>Name of the table associated with the summary.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>Name of the index associated with the summary, if any.</p>
    #   @return [String]
    # @!attribute contributor_insights_status
    #   <p>Describes the current status for contributor insights for the given table and index,
    #               if applicable.</p>
    #   Enum, one of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "FAILED"]
    #   @return [String]
    class ContributorInsightsSummary
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        index_name
        contributor_insights_status
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [String] :backup_name
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute backup_name
    #   <p>Specified name for the backup.</p>
    #   @return [String]
    class CreateBackupInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        backup_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [BackupDetails] :backup_details
    # @!attribute backup_details
    #   <p>Contains the details of the backup created for the table.</p>
    #   @return [BackupDetails]
    class CreateBackupOutput
      include Hearth::Structure

      MEMBERS = %i[
        backup_details
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents a new global secondary index to be added to an existing table.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :index_name
    #   @option params [Array<KeySchemaElement>] :key_schema
    #   @option params [Projection] :projection
    #   @option params [ProvisionedThroughput] :provisioned_throughput
    # @!attribute index_name
    #   <p>The name of the global secondary index to be created.</p>
    #   @return [String]
    # @!attribute key_schema
    #   <p>The key schema for the global secondary index.</p>
    #   @return [Array<KeySchemaElement>]
    # @!attribute projection
    #   <p>Represents attributes that are copied (projected) from the table into an index. These
    #               are in addition to the primary key attributes and index key attributes, which are
    #               automatically projected.</p>
    #   @return [Projection]
    # @!attribute provisioned_throughput
    #   <p>Represents the provisioned throughput settings for the specified global secondary
    #               index.</p>
    #            <p>For current minimum and maximum provisioned throughput values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                   Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [ProvisionedThroughput]
    class CreateGlobalSecondaryIndexAction
      include Hearth::Structure

      MEMBERS = %i[
        index_name
        key_schema
        projection
        provisioned_throughput
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :global_table_name
    #   @option params [Array<Replica>] :replication_group
    # @!attribute global_table_name
    #   <p>The global table name.</p>
    #   @return [String]
    # @!attribute replication_group
    #   <p>The Regions where the global table needs to be created.</p>
    #   @return [Array<Replica>]
    class CreateGlobalTableInput
      include Hearth::Structure

      MEMBERS = %i[
        global_table_name
        replication_group
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [GlobalTableDescription] :global_table_description
    # @!attribute global_table_description
    #   <p>Contains the details of the global table.</p>
    #   @return [GlobalTableDescription]
    class CreateGlobalTableOutput
      include Hearth::Structure

      MEMBERS = %i[
        global_table_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents a replica to be added.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :region_name
    # @!attribute region_name
    #   <p>The Region of the replica to be added.</p>
    #   @return [String]
    class CreateReplicaAction
      include Hearth::Structure

      MEMBERS = %i[
        region_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents a replica to be created.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :region_name
    #   @option params [String] :kms_master_key_id
    #   @option params [ProvisionedThroughputOverride] :provisioned_throughput_override
    #   @option params [Array<ReplicaGlobalSecondaryIndex>] :global_secondary_indexes
    #   @option params [String] :table_class_override
    # @!attribute region_name
    #   <p>The Region where the new replica will be created.</p>
    #   @return [String]
    # @!attribute kms_master_key_id
    #   <p>The KMS key that should be used for KMS encryption in
    #               the new replica. To specify a key, use its key ID, Amazon Resource Name (ARN), alias
    #               name, or alias ARN. Note that you should only provide this parameter if the key is
    #               different from the default DynamoDB KMS key
    #               <code>alias/aws/dynamodb</code>.</p>
    #   @return [String]
    # @!attribute provisioned_throughput_override
    #   <p>Replica-specific provisioned throughput. If not specified, uses the source table's
    #               provisioned throughput settings.</p>
    #   @return [ProvisionedThroughputOverride]
    # @!attribute global_secondary_indexes
    #   <p>Replica-specific global secondary index settings.</p>
    #   @return [Array<ReplicaGlobalSecondaryIndex>]
    # @!attribute table_class_override
    #   <p>Replica-specific table class. If not specified, uses the source table's table
    #               class.</p>
    #   Enum, one of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #   @return [String]
    class CreateReplicationGroupMemberAction
      include Hearth::Structure

      MEMBERS = %i[
        region_name
        kms_master_key_id
        provisioned_throughput_override
        global_secondary_indexes
        table_class_override
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the input of a <code>CreateTable</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<AttributeDefinition>] :attribute_definitions
    #   @option params [String] :table_name
    #   @option params [Array<KeySchemaElement>] :key_schema
    #   @option params [Array<LocalSecondaryIndex>] :local_secondary_indexes
    #   @option params [Array<GlobalSecondaryIndex>] :global_secondary_indexes
    #   @option params [String] :billing_mode
    #   @option params [ProvisionedThroughput] :provisioned_throughput
    #   @option params [StreamSpecification] :stream_specification
    #   @option params [SSESpecification] :sse_specification
    #   @option params [Array<Tag>] :tags
    #   @option params [String] :table_class
    #   @option params [Boolean] :deletion_protection_enabled
    # @!attribute attribute_definitions
    #   <p>An array of attributes that describe the key schema for the table and indexes.</p>
    #   @return [Array<AttributeDefinition>]
    # @!attribute table_name
    #   <p>The name of the table to create.</p>
    #   @return [String]
    # @!attribute key_schema
    #   <p>Specifies the attributes that make up the primary key for a table or an index. The
    #               attributes in <code>KeySchema</code> must also be defined in the
    #                   <code>AttributeDefinitions</code> array. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html">Data
    #                   Model</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #            <p>Each <code>KeySchemaElement</code> in the array is composed of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AttributeName</code> - The name of this key attribute.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KeyType</code> - The role that the key attribute will assume:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>HASH</code> - partition key</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RANGE</code> - sort key</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The partition key of an item is also known as its <i>hash
    #                       attribute</i>. The term "hash attribute" derives from the DynamoDB usage
    #                   of an internal hash function to evenly distribute data items across partitions,
    #                   based on their partition key values.</p>
    #               <p>The sort key of an item is also known as its <i>range attribute</i>.
    #                   The term "range attribute" derives from the way DynamoDB stores items with the same
    #                   partition key physically close together, in sorted order by the sort key
    #                   value.</p>
    #            </note>
    #            <p>For a simple primary key (partition key), you must provide exactly one element with a
    #                   <code>KeyType</code> of <code>HASH</code>.</p>
    #            <p>For a composite primary key (partition key and sort key), you must provide exactly two
    #               elements, in this order: The first element must have a <code>KeyType</code> of
    #                   <code>HASH</code>, and the second element must have a <code>KeyType</code> of
    #                   <code>RANGE</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#WorkingWithTables.primary.key">Working with Tables</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Array<KeySchemaElement>]
    # @!attribute local_secondary_indexes
    #   <p>One or more local secondary indexes (the maximum is 5) to be created on the table.
    #               Each index is scoped to a given partition key value. There is a 10 GB size limit per
    #               partition key value; otherwise, the size of a local secondary index is
    #               unconstrained.</p>
    #            <p>Each local secondary index in the array includes the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IndexName</code> - The name of the local secondary index. Must be unique
    #                       only for this table.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KeySchema</code> - Specifies the key schema for the local secondary index.
    #                       The key schema must begin with the same partition key as the table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Projection</code> - Specifies attributes that are copied (projected) from
    #                       the table into the index. These are in addition to the primary key attributes
    #                       and index key attributes, which are automatically projected. Each attribute
    #                       specification is composed of:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>ProjectionType</code> - One of the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>KEYS_ONLY</code> - Only the index and primary keys are
    #                                       projected into the index.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>INCLUDE</code> - Only the specified table attributes are
    #                                       projected into the index. The list of projected attributes is in
    #                                           <code>NonKeyAttributes</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ALL</code> - All of the table attributes are projected
    #                                       into the index.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NonKeyAttributes</code> - A list of one or more non-key attribute
    #                               names that are projected into the secondary index. The total count of
    #                               attributes provided in <code>NonKeyAttributes</code>, summed across all
    #                               of the secondary indexes, must not exceed 100. If you project the same
    #                               attribute into two different indexes, this counts as two distinct
    #                               attributes when determining the total.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [Array<LocalSecondaryIndex>]
    # @!attribute global_secondary_indexes
    #   <p>One or more global secondary indexes (the maximum is 20) to be created on the table.
    #               Each global secondary index in the array includes the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IndexName</code> - The name of the global secondary index. Must be unique
    #                       only for this table.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KeySchema</code> - Specifies the key schema for the global secondary
    #                       index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Projection</code> - Specifies attributes that are copied (projected) from
    #                       the table into the index. These are in addition to the primary key attributes
    #                       and index key attributes, which are automatically projected. Each attribute
    #                       specification is composed of:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>ProjectionType</code> - One of the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>KEYS_ONLY</code> - Only the index and primary keys are
    #                                       projected into the index.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>INCLUDE</code> - Only the specified table attributes are
    #                                       projected into the index. The list of projected attributes is in
    #                                           <code>NonKeyAttributes</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ALL</code> - All of the table attributes are projected
    #                                       into the index.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NonKeyAttributes</code> - A list of one or more non-key attribute
    #                               names that are projected into the secondary index. The total count of
    #                               attributes provided in <code>NonKeyAttributes</code>, summed across all
    #                               of the secondary indexes, must not exceed 100. If you project the same
    #                               attribute into two different indexes, this counts as two distinct
    #                               attributes when determining the total.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProvisionedThroughput</code> - The provisioned throughput settings for the
    #                       global secondary index, consisting of read and write capacity units.</p>
    #               </li>
    #            </ul>
    #   @return [Array<GlobalSecondaryIndex>]
    # @!attribute billing_mode
    #   <p>Controls how you are charged for read and write throughput and how you manage
    #               capacity. This setting can be changed later.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PROVISIONED</code> - We recommend using <code>PROVISIONED</code> for
    #                       predictable workloads. <code>PROVISIONED</code> sets the billing mode to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual">Provisioned Mode</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PAY_PER_REQUEST</code> - We recommend using <code>PAY_PER_REQUEST</code>
    #                       for unpredictable workloads. <code>PAY_PER_REQUEST</code> sets the billing mode
    #                       to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand">On-Demand Mode</a>. </p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["PROVISIONED", "PAY_PER_REQUEST"]
    #   @return [String]
    # @!attribute provisioned_throughput
    #   <p>Represents the provisioned throughput settings for a specified table or index. The
    #               settings can be modified using the <code>UpdateTable</code> operation.</p>
    #            <p> If you set BillingMode as <code>PROVISIONED</code>, you must specify this property.
    #               If you set BillingMode as <code>PAY_PER_REQUEST</code>, you cannot specify this
    #               property.</p>
    #            <p>For current minimum and maximum provisioned throughput values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                   Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [ProvisionedThroughput]
    # @!attribute stream_specification
    #   <p>The settings for DynamoDB Streams on the table. These settings consist of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>StreamEnabled</code> - Indicates whether DynamoDB Streams is to be enabled
    #                       (true) or disabled (false).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StreamViewType</code> - When an item in the table is modified,
    #                           <code>StreamViewType</code> determines what information is written to the
    #                       table's stream. Valid values for <code>StreamViewType</code> are:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>KEYS_ONLY</code> - Only the key attributes of the modified item
    #                               are written to the stream.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NEW_IMAGE</code> - The entire item, as it appears after it was
    #                               modified, is written to the stream.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>OLD_IMAGE</code> - The entire item, as it appeared before it was
    #                               modified, is written to the stream.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NEW_AND_OLD_IMAGES</code> - Both the new and the old item images
    #                               of the item are written to the stream.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [StreamSpecification]
    # @!attribute sse_specification
    #   <p>Represents the settings used to enable server-side encryption.</p>
    #   @return [SSESpecification]
    # @!attribute tags
    #   <p>A list of key-value pairs to label the table. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging
    #                   for DynamoDB</a>.</p>
    #   @return [Array<Tag>]
    # @!attribute table_class
    #   <p>The table class of the new table. Valid values are <code>STANDARD</code> and
    #                   <code>STANDARD_INFREQUENT_ACCESS</code>.</p>
    #   Enum, one of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>Indicates whether deletion protection is to be enabled (true) or disabled (false) on the table.</p>
    #   @return [Boolean]
    class CreateTableInput
      include Hearth::Structure

      MEMBERS = %i[
        attribute_definitions
        table_name
        key_schema
        local_secondary_indexes
        global_secondary_indexes
        billing_mode
        provisioned_throughput
        stream_specification
        sse_specification
        tags
        table_class
        deletion_protection_enabled
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the output of a <code>CreateTable</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [TableDescription] :table_description
    # @!attribute table_description
    #   <p>Represents the properties of the table.</p>
    #   @return [TableDescription]
    class CreateTableOutput
      include Hearth::Structure

      MEMBERS = %i[
        table_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p> Processing options for the CSV file being imported. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :delimiter
    #   @option params [Array<String>] :header_list
    # @!attribute delimiter
    #   <p> The delimiter used for separating items in the CSV file being imported. </p>
    #   @return [String]
    # @!attribute header_list
    #   <p> List of the headers used to specify a common header for all source CSV files being
    #               imported. If this field is specified then the first line of each CSV file is treated as
    #               data instead of the header. If this field is not specified the the first line of each
    #               CSV file is treated as the header. </p>
    #   @return [Array<String>]
    class CsvOptions
      include Hearth::Structure

      MEMBERS = %i[
        delimiter
        header_list
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents a request to perform a <code>DeleteItem</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, AttributeValue>] :key
    #   @option params [String] :table_name
    #   @option params [String] :condition_expression
    #   @option params [Hash<String, String>] :expression_attribute_names
    #   @option params [Hash<String, AttributeValue>] :expression_attribute_values
    #   @option params [String] :return_values_on_condition_check_failure
    # @!attribute key
    #   <p>The primary key of the item to be deleted. Each element consists of an attribute name
    #               and a value for that attribute.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute table_name
    #   <p>Name of the table in which the item to be deleted resides.</p>
    #   @return [String]
    # @!attribute condition_expression
    #   <p>A condition that must be satisfied in order for a conditional delete to
    #               succeed.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute return_values_on_condition_check_failure
    #   <p>Use <code>ReturnValuesOnConditionCheckFailure</code> to get the item attributes if the
    #                   <code>Delete</code> condition fails. For
    #                   <code>ReturnValuesOnConditionCheckFailure</code>, the valid values are: NONE and
    #               ALL_OLD.</p>
    #   Enum, one of: ["ALL_OLD", "NONE"]
    #   @return [String]
    class Delete
      include Hearth::Structure

      MEMBERS = %i[
        key
        table_name
        condition_expression
        expression_attribute_names
        expression_attribute_values
        return_values_on_condition_check_failure
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :backup_arn
    # @!attribute backup_arn
    #   <p>The ARN associated with the backup.</p>
    #   @return [String]
    class DeleteBackupInput
      include Hearth::Structure

      MEMBERS = %i[
        backup_arn
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [BackupDescription] :backup_description
    # @!attribute backup_description
    #   <p>Contains the description of the backup created for the table.</p>
    #   @return [BackupDescription]
    class DeleteBackupOutput
      include Hearth::Structure

      MEMBERS = %i[
        backup_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents a global secondary index to be deleted from an existing table.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :index_name
    # @!attribute index_name
    #   <p>The name of the global secondary index to be deleted.</p>
    #   @return [String]
    class DeleteGlobalSecondaryIndexAction
      include Hearth::Structure

      MEMBERS = %i[
        index_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the input of a <code>DeleteItem</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [Hash<String, AttributeValue>] :key
    #   @option params [Hash<String, ExpectedAttributeValue>] :expected
    #   @option params [String] :conditional_operator
    #   @option params [String] :return_values
    #   @option params [String] :return_consumed_capacity
    #   @option params [String] :return_item_collection_metrics
    #   @option params [String] :condition_expression
    #   @option params [Hash<String, String>] :expression_attribute_names
    #   @option params [Hash<String, AttributeValue>] :expression_attribute_values
    #   @option params [String] :return_values_on_condition_check_failure
    # @!attribute table_name
    #   <p>The name of the table from which to delete the item.</p>
    #   @return [String]
    # @!attribute key
    #   <p>A map of attribute names to <code>AttributeValue</code> objects, representing the
    #               primary key of the item to delete.</p>
    #            <p>For the primary key, you must provide all of the key attributes. For example, with a
    #               simple primary key, you only need to provide a value for the partition key. For a
    #               composite primary key, you must provide values for both the partition key and the sort
    #               key.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute expected
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Hash<String, ExpectedAttributeValue>]
    # @!attribute conditional_operator
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   Enum, one of: ["AND", "OR"]
    #   @return [String]
    # @!attribute return_values
    #   <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appeared
    #               before they were deleted. For <code>DeleteItem</code>, the valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its
    #                       value is <code>NONE</code>, then nothing is returned. (This setting is the
    #                       default for <code>ReturnValues</code>.)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_OLD</code> - The content of the old item is returned.</p>
    #               </li>
    #            </ul>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #            <note>
    #               <p>The <code>ReturnValues</code> parameter is used by several DynamoDB operations;
    #                   however, <code>DeleteItem</code> does not recognize any values other than
    #                       <code>NONE</code> or <code>ALL_OLD</code>.</p>
    #            </note>
    #   Enum, one of: ["NONE", "ALL_OLD", "UPDATED_OLD", "ALL_NEW", "UPDATED_NEW"]
    #   @return [String]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["INDEXES", "TOTAL", "NONE"]
    #   @return [String]
    # @!attribute return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections, if any, that were modified
    #               during the operation are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned.</p>
    #   Enum, one of: ["SIZE", "NONE"]
    #   @return [String]
    # @!attribute condition_expression
    #   <p>A condition that must be satisfied in order for a conditional <code>DeleteItem</code>
    #               to succeed.</p>
    #            <p>An expression can contain any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type |
    #                           contains | begins_with | size</code>
    #                  </p>
    #                  <p>These function names are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Comparison operators: <code>= | <> |
    #               < | > | <= | >= |
    #               BETWEEN | IN </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p> Logical operators: <code>AND | OR | NOT</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about condition expressions, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #            <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <i>ProductStatus</i> attribute was one of the following: </p>
    #            <p>
    #               <code>Available | Backordered | Discontinued</code>
    #            </p>
    #            <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #            <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #            </p>
    #            <p>You could then use these values in an expression, such as this:</p>
    #            <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #            </p>
    #            <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute return_values_on_condition_check_failure
    #   <p>An optional parameter that returns the item attributes for a <code>DeleteItem</code>
    #               operation that failed a condition check.</p>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #   Enum, one of: ["ALL_OLD", "NONE"]
    #   @return [String]
    class DeleteItemInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        key
        expected
        conditional_operator
        return_values
        return_consumed_capacity
        return_item_collection_metrics
        condition_expression
        expression_attribute_names
        expression_attribute_values
        return_values_on_condition_check_failure
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the output of a <code>DeleteItem</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, AttributeValue>] :attributes
    #   @option params [ConsumedCapacity] :consumed_capacity
    #   @option params [ItemCollectionMetrics] :item_collection_metrics
    # @!attribute attributes
    #   <p>A map of attribute names to <code>AttributeValue</code> objects, representing the item
    #               as it appeared before the <code>DeleteItem</code> operation. This map appears in the
    #               response only if <code>ReturnValues</code> was specified as <code>ALL_OLD</code> in the
    #               request.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the <code>DeleteItem</code> operation. The data
    #               returned includes the total provisioned throughput consumed, along with statistics for
    #               the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is
    #               only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For
    #               more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [ConsumedCapacity]
    # @!attribute item_collection_metrics
    #   <p>Information about item collections, if any, that were affected by the
    #                   <code>DeleteItem</code> operation. <code>ItemCollectionMetrics</code> is only
    #               returned if the <code>ReturnItemCollectionMetrics</code> parameter was specified. If the
    #               table does not have any local secondary indexes, this information is not returned in the
    #               response.</p>
    #            <p>Each <code>ItemCollectionMetrics</code> element consists of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ItemCollectionKey</code> - The partition key value of the item collection.
    #                       This is the same as the partition key value of the item itself.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SizeEstimateRangeGB</code> - An estimate of item collection size, in
    #                       gigabytes. This value is a two-element array containing a lower bound and an
    #                       upper bound for the estimate. The estimate includes the size of all the items in
    #                       the table, plus the size of all attributes projected into all of the local
    #                       secondary indexes on that table. Use this estimate to measure whether a local
    #                       secondary index is approaching its size limit.</p>
    #                  <p>The estimate is subject to change over time; therefore, do not rely on the
    #                       precision or accuracy of the estimate.</p>
    #               </li>
    #            </ul>
    #   @return [ItemCollectionMetrics]
    class DeleteItemOutput
      include Hearth::Structure

      MEMBERS = %i[
        attributes
        consumed_capacity
        item_collection_metrics
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents a replica to be removed.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :region_name
    # @!attribute region_name
    #   <p>The Region of the replica to be removed.</p>
    #   @return [String]
    class DeleteReplicaAction
      include Hearth::Structure

      MEMBERS = %i[
        region_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents a replica to be deleted.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :region_name
    # @!attribute region_name
    #   <p>The Region where the replica exists.</p>
    #   @return [String]
    class DeleteReplicationGroupMemberAction
      include Hearth::Structure

      MEMBERS = %i[
        region_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents a request to perform a <code>DeleteItem</code> operation on an item.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, AttributeValue>] :key
    # @!attribute key
    #   <p>A map of attribute name to attribute values, representing the primary key of the item
    #               to delete. All of the table's primary key attributes must be specified, and their data
    #               types must match those of the table's key schema.</p>
    #   @return [Hash<String, AttributeValue>]
    class DeleteRequest
      include Hearth::Structure

      MEMBERS = %i[
        key
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the input of a <code>DeleteTable</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    # @!attribute table_name
    #   <p>The name of the table to delete.</p>
    #   @return [String]
    class DeleteTableInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the output of a <code>DeleteTable</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [TableDescription] :table_description
    # @!attribute table_description
    #   <p>Represents the properties of a table.</p>
    #   @return [TableDescription]
    class DeleteTableOutput
      include Hearth::Structure

      MEMBERS = %i[
        table_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :backup_arn
    # @!attribute backup_arn
    #   <p>The Amazon Resource Name (ARN) associated with the backup.</p>
    #   @return [String]
    class DescribeBackupInput
      include Hearth::Structure

      MEMBERS = %i[
        backup_arn
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [BackupDescription] :backup_description
    # @!attribute backup_description
    #   <p>Contains the description of the backup created for the table.</p>
    #   @return [BackupDescription]
    class DescribeBackupOutput
      include Hearth::Structure

      MEMBERS = %i[
        backup_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    # @!attribute table_name
    #   <p>Name of the table for which the customer wants to check the continuous backups and
    #               point in time recovery settings.</p>
    #   @return [String]
    class DescribeContinuousBackupsInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [ContinuousBackupsDescription] :continuous_backups_description
    # @!attribute continuous_backups_description
    #   <p>Represents the continuous backups and point in time recovery settings on the
    #               table.</p>
    #   @return [ContinuousBackupsDescription]
    class DescribeContinuousBackupsOutput
      include Hearth::Structure

      MEMBERS = %i[
        continuous_backups_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [String] :index_name
    # @!attribute table_name
    #   <p>The name of the table to describe.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the global secondary index to describe, if applicable.</p>
    #   @return [String]
    class DescribeContributorInsightsInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        index_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [String] :index_name
    #   @option params [Array<String>] :contributor_insights_rule_list
    #   @option params [String] :contributor_insights_status
    #   @option params [Time] :last_update_date_time
    #   @option params [FailureException] :failure_exception
    # @!attribute table_name
    #   <p>The name of the table being described.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the global secondary index being described.</p>
    #   @return [String]
    # @!attribute contributor_insights_rule_list
    #   <p>List of names of the associated contributor insights rules.</p>
    #   @return [Array<String>]
    # @!attribute contributor_insights_status
    #   <p>Current status of contributor insights.</p>
    #   Enum, one of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "FAILED"]
    #   @return [String]
    # @!attribute last_update_date_time
    #   <p>Timestamp of the last time the status was changed.</p>
    #   @return [Time]
    # @!attribute failure_exception
    #   <p>Returns information about the last failure that was encountered.</p>
    #            <p>The most common exceptions for a FAILED status are:</p>
    #            <ul>
    #               <li>
    #                  <p>LimitExceededException - Per-account Amazon CloudWatch Contributor Insights
    #                       rule limit reached. Please disable Contributor Insights for other tables/indexes
    #                       OR disable Contributor Insights rules before retrying.</p>
    #               </li>
    #               <li>
    #                  <p>AccessDeniedException - Amazon CloudWatch Contributor Insights rules cannot be
    #                       modified due to insufficient permissions.</p>
    #               </li>
    #               <li>
    #                  <p>AccessDeniedException - Failed to create service-linked role for Contributor
    #                       Insights due to insufficient permissions.</p>
    #               </li>
    #               <li>
    #                  <p>InternalServerError - Failed to create Amazon CloudWatch Contributor Insights
    #                       rules. Please retry request.</p>
    #               </li>
    #            </ul>
    #   @return [FailureException]
    class DescribeContributorInsightsOutput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        index_name
        contributor_insights_rule_list
        contributor_insights_status
        last_update_date_time
        failure_exception
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class DescribeEndpointsInput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<Endpoint>] :endpoints
    # @!attribute endpoints
    #   <p>List of endpoints.</p>
    #   @return [Array<Endpoint>]
    class DescribeEndpointsOutput
      include Hearth::Structure

      MEMBERS = %i[
        endpoints
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :export_arn
    # @!attribute export_arn
    #   <p>The Amazon Resource Name (ARN) associated with the export.</p>
    #   @return [String]
    class DescribeExportInput
      include Hearth::Structure

      MEMBERS = %i[
        export_arn
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [ExportDescription] :export_description
    # @!attribute export_description
    #   <p>Represents the properties of the export.</p>
    #   @return [ExportDescription]
    class DescribeExportOutput
      include Hearth::Structure

      MEMBERS = %i[
        export_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :global_table_name
    # @!attribute global_table_name
    #   <p>The name of the global table.</p>
    #   @return [String]
    class DescribeGlobalTableInput
      include Hearth::Structure

      MEMBERS = %i[
        global_table_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [GlobalTableDescription] :global_table_description
    # @!attribute global_table_description
    #   <p>Contains the details of the global table.</p>
    #   @return [GlobalTableDescription]
    class DescribeGlobalTableOutput
      include Hearth::Structure

      MEMBERS = %i[
        global_table_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :global_table_name
    # @!attribute global_table_name
    #   <p>The name of the global table to describe.</p>
    #   @return [String]
    class DescribeGlobalTableSettingsInput
      include Hearth::Structure

      MEMBERS = %i[
        global_table_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :global_table_name
    #   @option params [Array<ReplicaSettingsDescription>] :replica_settings
    # @!attribute global_table_name
    #   <p>The name of the global table.</p>
    #   @return [String]
    # @!attribute replica_settings
    #   <p>The Region-specific settings for the global table.</p>
    #   @return [Array<ReplicaSettingsDescription>]
    class DescribeGlobalTableSettingsOutput
      include Hearth::Structure

      MEMBERS = %i[
        global_table_name
        replica_settings
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :import_arn
    # @!attribute import_arn
    #   <p> The Amazon Resource Name (ARN) associated with the table you're importing to. </p>
    #   @return [String]
    class DescribeImportInput
      include Hearth::Structure

      MEMBERS = %i[
        import_arn
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [ImportTableDescription] :import_table_description
    # @!attribute import_table_description
    #   <p> Represents the properties of the table created for the import, and parameters of the
    #               import. The import parameters include import status, how many items were processed, and
    #               how many errors were encountered. </p>
    #   @return [ImportTableDescription]
    class DescribeImportOutput
      include Hearth::Structure

      MEMBERS = %i[
        import_table_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    # @!attribute table_name
    #   <p>The name of the table being described.</p>
    #   @return [String]
    class DescribeKinesisStreamingDestinationInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [Array<KinesisDataStreamDestination>] :kinesis_data_stream_destinations
    # @!attribute table_name
    #   <p>The name of the table being described.</p>
    #   @return [String]
    # @!attribute kinesis_data_stream_destinations
    #   <p>The list of replica structures for the table being described.</p>
    #   @return [Array<KinesisDataStreamDestination>]
    class DescribeKinesisStreamingDestinationOutput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        kinesis_data_stream_destinations
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the input of a <code>DescribeLimits</code> operation. Has no
    #             content.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    class DescribeLimitsInput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the output of a <code>DescribeLimits</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :account_max_read_capacity_units
    #   @option params [Integer] :account_max_write_capacity_units
    #   @option params [Integer] :table_max_read_capacity_units
    #   @option params [Integer] :table_max_write_capacity_units
    # @!attribute account_max_read_capacity_units
    #   <p>The maximum total read capacity units that your account allows you to provision across
    #               all of your tables in this Region.</p>
    #   @return [Integer]
    # @!attribute account_max_write_capacity_units
    #   <p>The maximum total write capacity units that your account allows you to provision
    #               across all of your tables in this Region.</p>
    #   @return [Integer]
    # @!attribute table_max_read_capacity_units
    #   <p>The maximum read capacity units that your account allows you to provision for a new
    #               table that you are creating in this Region, including the read capacity units
    #               provisioned for its global secondary indexes (GSIs).</p>
    #   @return [Integer]
    # @!attribute table_max_write_capacity_units
    #   <p>The maximum write capacity units that your account allows you to provision for a new
    #               table that you are creating in this Region, including the write capacity units
    #               provisioned for its global secondary indexes (GSIs).</p>
    #   @return [Integer]
    class DescribeLimitsOutput
      include Hearth::Structure

      MEMBERS = %i[
        account_max_read_capacity_units
        account_max_write_capacity_units
        table_max_read_capacity_units
        table_max_write_capacity_units
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the input of a <code>DescribeTable</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    # @!attribute table_name
    #   <p>The name of the table to describe.</p>
    #   @return [String]
    class DescribeTableInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the output of a <code>DescribeTable</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [TableDescription] :table
    # @!attribute table
    #   <p>The properties of the table.</p>
    #   @return [TableDescription]
    class DescribeTableOutput
      include Hearth::Structure

      MEMBERS = %i[
        table
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    class DescribeTableReplicaAutoScalingInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [TableAutoScalingDescription] :table_auto_scaling_description
    # @!attribute table_auto_scaling_description
    #   <p>Represents the auto scaling properties of the table.</p>
    #   @return [TableAutoScalingDescription]
    class DescribeTableReplicaAutoScalingOutput
      include Hearth::Structure

      MEMBERS = %i[
        table_auto_scaling_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    # @!attribute table_name
    #   <p>The name of the table to be described.</p>
    #   @return [String]
    class DescribeTimeToLiveInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [TimeToLiveDescription] :time_to_live_description
    # @!attribute time_to_live_description
    #   <p></p>
    #   @return [TimeToLiveDescription]
    class DescribeTimeToLiveOutput
      include Hearth::Structure

      MEMBERS = %i[
        time_to_live_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for DestinationStatus
    module DestinationStatus
      ENABLING = "ENABLING"

      ACTIVE = "ACTIVE"

      DISABLING = "DISABLING"

      DISABLED = "DISABLED"

      ENABLE_FAILED = "ENABLE_FAILED"

      UPDATING = "UPDATING"
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [String] :stream_arn
    #   @option params [EnableKinesisStreamingConfiguration] :enable_kinesis_streaming_configuration
    # @!attribute table_name
    #   <p>The name of the DynamoDB table.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN for a Kinesis data stream.</p>
    #   @return [String]
    # @!attribute enable_kinesis_streaming_configuration
    #   <p>The source for the Kinesis streaming information that is being enabled.</p>
    #   @return [EnableKinesisStreamingConfiguration]
    class DisableKinesisStreamingDestinationInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        stream_arn
        enable_kinesis_streaming_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [String] :stream_arn
    #   @option params [String] :destination_status
    #   @option params [EnableKinesisStreamingConfiguration] :enable_kinesis_streaming_configuration
    # @!attribute table_name
    #   <p>The name of the table being modified.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN for the specific Kinesis data stream.</p>
    #   @return [String]
    # @!attribute destination_status
    #   <p>The current status of the replication.</p>
    #   Enum, one of: ["ENABLING", "ACTIVE", "DISABLING", "DISABLED", "ENABLE_FAILED", "UPDATING"]
    #   @return [String]
    # @!attribute enable_kinesis_streaming_configuration
    #   <p>The destination for the Kinesis streaming information that is being enabled.</p>
    #   @return [EnableKinesisStreamingConfiguration]
    class DisableKinesisStreamingDestinationOutput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        stream_arn
        destination_status
        enable_kinesis_streaming_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p> There was an attempt to insert an item with the same primary key as an item that
    #             already exists in the DynamoDB table.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class DuplicateItemException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Enables setting the configuration for Kinesis Streaming.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :approximate_creation_date_time_precision
    # @!attribute approximate_creation_date_time_precision
    #   <p>Toggle for the precision of Kinesis data stream timestamp. The values are either <code>MILLISECOND</code> or <code>MICROSECOND</code>.</p>
    #   Enum, one of: ["MILLISECOND", "MICROSECOND"]
    #   @return [String]
    class EnableKinesisStreamingConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        approximate_creation_date_time_precision
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [String] :stream_arn
    #   @option params [EnableKinesisStreamingConfiguration] :enable_kinesis_streaming_configuration
    # @!attribute table_name
    #   <p>The name of the DynamoDB table.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN for a Kinesis data stream.</p>
    #   @return [String]
    # @!attribute enable_kinesis_streaming_configuration
    #   <p>The source for the Kinesis streaming information that is being enabled.</p>
    #   @return [EnableKinesisStreamingConfiguration]
    class EnableKinesisStreamingDestinationInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        stream_arn
        enable_kinesis_streaming_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [String] :stream_arn
    #   @option params [String] :destination_status
    #   @option params [EnableKinesisStreamingConfiguration] :enable_kinesis_streaming_configuration
    # @!attribute table_name
    #   <p>The name of the table being modified.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN for the specific Kinesis data stream.</p>
    #   @return [String]
    # @!attribute destination_status
    #   <p>The current status of the replication.</p>
    #   Enum, one of: ["ENABLING", "ACTIVE", "DISABLING", "DISABLED", "ENABLE_FAILED", "UPDATING"]
    #   @return [String]
    # @!attribute enable_kinesis_streaming_configuration
    #   <p>The destination for the Kinesis streaming information that is being enabled.</p>
    #   @return [EnableKinesisStreamingConfiguration]
    class EnableKinesisStreamingDestinationOutput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        stream_arn
        destination_status
        enable_kinesis_streaming_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>An endpoint information details.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :address
    #   @option params [Integer] :cache_period_in_minutes (0)
    # @!attribute address
    #   <p>IP address of the endpoint.</p>
    #   @return [String]
    # @!attribute cache_period_in_minutes
    #   <p>Endpoint cache time to live (TTL) value.</p>
    #   @return [Integer]
    class Endpoint
      include Hearth::Structure

      MEMBERS = %i[
        address
        cache_period_in_minutes
      ].freeze

      attr_accessor(*MEMBERS)

      private

      def _defaults
        {
          cache_period_in_minutes: 0
        }
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :statement
    #   @option params [Array<AttributeValue>] :parameters
    #   @option params [Boolean] :consistent_read
    #   @option params [String] :next_token
    #   @option params [String] :return_consumed_capacity
    #   @option params [Integer] :limit
    #   @option params [String] :return_values_on_condition_check_failure
    # @!attribute statement
    #   <p>The PartiQL statement representing the operation to run.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters for the PartiQL statement, if any.</p>
    #   @return [Array<AttributeValue>]
    # @!attribute consistent_read
    #   <p>The consistency of a read operation. If set to <code>true</code>, then a strongly
    #               consistent read is used; otherwise, an eventually consistent read is used.</p>
    #   @return [Boolean]
    # @!attribute next_token
    #   <p>Set this value to get remaining results, if <code>NextToken</code> was returned in the
    #               statement response.</p>
    #   @return [String]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["INDEXES", "TOTAL", "NONE"]
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of items to evaluate (not necessarily the number of matching
    #               items). If DynamoDB processes the number of items up to the limit while processing the
    #               results, it stops the operation and returns the matching values up to that point, along
    #               with a key in <code>LastEvaluatedKey</code> to apply in a subsequent operation so you
    #               can pick up where you left off. Also, if the processed dataset size exceeds 1 MB before
    #               DynamoDB reaches this limit, it stops the operation and returns the matching values up
    #               to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent
    #               operation to continue the operation. </p>
    #   @return [Integer]
    # @!attribute return_values_on_condition_check_failure
    #   <p>An optional parameter that returns the item attributes for an
    #               <code>ExecuteStatement</code> operation that failed a condition check.</p>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #   Enum, one of: ["ALL_OLD", "NONE"]
    #   @return [String]
    class ExecuteStatementInput
      include Hearth::Structure

      MEMBERS = %i[
        statement
        parameters
        consistent_read
        next_token
        return_consumed_capacity
        limit
        return_values_on_condition_check_failure
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<Hash<String, AttributeValue>>] :items
    #   @option params [String] :next_token
    #   @option params [ConsumedCapacity] :consumed_capacity
    #   @option params [Hash<String, AttributeValue>] :last_evaluated_key
    # @!attribute items
    #   <p>If a read operation was used, this property will contain the result of the read
    #               operation; a map of attribute names and their values. For the write operations this
    #               value will be empty.</p>
    #   @return [Array<Hash<String, AttributeValue>>]
    # @!attribute next_token
    #   <p>If the response of a read request exceeds the response payload limit DynamoDB will set
    #               this value in the response. If set, you can use that this value in the subsequent
    #               request to get the remaining results.</p>
    #   @return [String]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by an operation. The data returned includes the total
    #               provisioned throughput consumed, along with statistics for the table and any indexes
    #               involved in the operation. <code>ConsumedCapacity</code> is only returned if the request
    #               asked for it. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [ConsumedCapacity]
    # @!attribute last_evaluated_key
    #   <p>The primary key of the item where the operation stopped, inclusive of the previous
    #               result set. Use this value to start a new operation, excluding this value in the new
    #               request. If <code>LastEvaluatedKey</code> is empty, then the "last page" of results has
    #               been processed and there is no more data to be retrieved. If
    #                   <code>LastEvaluatedKey</code> is not empty, it does not necessarily mean that there
    #               is more data in the result set. The only way to know when you have reached the end of
    #               the result set is when <code>LastEvaluatedKey</code> is empty. </p>
    #   @return [Hash<String, AttributeValue>]
    class ExecuteStatementOutput
      include Hearth::Structure

      MEMBERS = %i[
        items
        next_token
        consumed_capacity
        last_evaluated_key
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<ParameterizedStatement>] :transact_statements
    #   @option params [String] :client_request_token
    #   @option params [String] :return_consumed_capacity
    # @!attribute transact_statements
    #   <p>The list of PartiQL statements representing the transaction to run.</p>
    #   @return [Array<ParameterizedStatement>]
    # @!attribute client_request_token
    #   <p>Set this value to get remaining results, if <code>NextToken</code> was returned in the
    #               statement response.</p>
    #   @return [String]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_TransactGetItems.html">TransactGetItems</a> and <a href="https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_TransactWriteItems.html">TransactWriteItems</a>.</p>
    #   Enum, one of: ["INDEXES", "TOTAL", "NONE"]
    #   @return [String]
    class ExecuteTransactionInput
      include Hearth::Structure

      MEMBERS = %i[
        transact_statements
        client_request_token
        return_consumed_capacity
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<ItemResponse>] :responses
    #   @option params [Array<ConsumedCapacity>] :consumed_capacity
    # @!attribute responses
    #   <p>The response to a PartiQL transaction.</p>
    #   @return [Array<ItemResponse>]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the entire operation. The values of the list are
    #               ordered according to the ordering of the statements.</p>
    #   @return [Array<ConsumedCapacity>]
    class ExecuteTransactionOutput
      include Hearth::Structure

      MEMBERS = %i[
        responses
        consumed_capacity
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents a condition to be compared with an attribute value. This condition can be
    #             used with <code>DeleteItem</code>, <code>PutItem</code>, or <code>UpdateItem</code>
    #             operations; if the comparison evaluates to true, the operation succeeds; if not, the
    #             operation fails. You can use <code>ExpectedAttributeValue</code> in one of two different
    #             ways:</p>
    #          <ul>
    #             <li>
    #                <p>Use <code>AttributeValueList</code> to specify one or more values to compare
    #                     against an attribute. Use <code>ComparisonOperator</code> to specify how you
    #                     want to perform the comparison. If the comparison evaluates to true, then the
    #                     conditional operation succeeds.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>Value</code> to specify a value that DynamoDB will compare against
    #                     an attribute. If the values match, then <code>ExpectedAttributeValue</code>
    #                     evaluates to true and the conditional operation succeeds. Optionally, you can
    #                     also set <code>Exists</code> to false, indicating that you <i>do
    #                         not</i> expect to find the attribute value in the table. In this
    #                     case, the conditional operation succeeds only if the comparison evaluates to
    #                     false.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <code>Value</code> and <code>Exists</code> are incompatible with
    #                 <code>AttributeValueList</code> and <code>ComparisonOperator</code>. Note that if
    #             you use both sets of parameters at once, DynamoDB will return a
    #                 <code>ValidationException</code> exception.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [AttributeValue] :value
    #   @option params [Boolean] :exists
    #   @option params [String] :comparison_operator
    #   @option params [Array<AttributeValue>] :attribute_value_list
    # @!attribute value
    #   <p>Represents the data for the expected attribute.</p>
    #            <p>Each attribute value is described as a name-value pair. The name is the data type, and
    #               the value is the data itself.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.NamingRulesDataTypes.html#HowItWorks.DataTypes">Data Types</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [AttributeValue]
    # @!attribute exists
    #   <p>Causes DynamoDB to evaluate the value before attempting a conditional
    #               operation:</p>
    #            <ul>
    #               <li>
    #                  <p>If <code>Exists</code> is <code>true</code>, DynamoDB will check to
    #                       see if that attribute value already exists in the table. If it is found, then
    #                       the operation succeeds. If it is not found, the operation fails with a
    #                           <code>ConditionCheckFailedException</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If <code>Exists</code> is <code>false</code>, DynamoDB assumes that
    #                       the attribute value does not exist in the table. If in fact the value does not
    #                       exist, then the assumption is valid and the operation succeeds. If the value is
    #                       found, despite the assumption that it does not exist, the operation fails with a
    #                           <code>ConditionCheckFailedException</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting for <code>Exists</code> is <code>true</code>. If you supply a
    #                   <code>Value</code> all by itself, DynamoDB assumes the attribute exists:
    #               You don't have to set <code>Exists</code> to <code>true</code>, because it is
    #               implied.</p>
    #            <p>DynamoDB returns a <code>ValidationException</code> if:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Exists</code> is <code>true</code> but there is no <code>Value</code> to
    #                       check. (You expect a value to exist, but don't specify what that value
    #                       is.)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Exists</code> is <code>false</code> but you also provide a
    #                           <code>Value</code>. (You cannot expect an attribute to have a value, while
    #                       also expecting it not to exist.)</p>
    #               </li>
    #            </ul>
    #   @return [Boolean]
    # @!attribute comparison_operator
    #   <p>A comparator for evaluating attributes in the <code>AttributeValueList</code>. For
    #               example, equals, greater than, less than, etc.</p>
    #            <p>The following comparison operators are available:</p>
    #            <p>
    #               <code>EQ | NE | LE | LT | GE | GT | NOT_NULL | NULL | CONTAINS | NOT_CONTAINS |
    #                   BEGINS_WITH | IN | BETWEEN</code>
    #            </p>
    #            <p>The following are descriptions of each comparison operator.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EQ</code> : Equal. <code>EQ</code> is supported for all data types,
    #                       including lists and maps.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, Binary, String Set, Number Set, or Binary Set.
    #                       If an item contains an <code>AttributeValue</code> element of a different type
    #                       than the one provided in the request, the value does not match. For example,
    #                           <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also,
    #                           <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2",
    #                       "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NE</code> : Not equal. <code>NE</code> is supported for all data types,
    #                       including lists and maps.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       of type String, Number, Binary, String Set, Number Set, or Binary Set. If an
    #                       item contains an <code>AttributeValue</code> of a different type than the one
    #                       provided in the request, the value does not match. For example,
    #                           <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also,
    #                           <code>{"N":"6"}</code> does not equal <code>{"NS":["6", "2",
    #                       "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LE</code> : Less than or equal. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If an item contains
    #                       an <code>AttributeValue</code> element of a different type than the one provided
    #                       in the request, the value does not match. For example, <code>{"S":"6"}</code>
    #                       does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not
    #                       compare to <code>{"NS":["6", "2", "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LT</code> : Less than. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       of type String, Number, or Binary (not a set type). If an item contains an
    #                           <code>AttributeValue</code> element of a different type than the one
    #                       provided in the request, the value does not match. For example,
    #                           <code>{"S":"6"}</code> does not equal <code>{"N":"6"}</code>. Also,
    #                           <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2",
    #                           "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GE</code> : Greater than or equal. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If an item contains
    #                       an <code>AttributeValue</code> element of a different type than the one provided
    #                       in the request, the value does not match. For example, <code>{"S":"6"}</code>
    #                       does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not
    #                       compare to <code>{"NS":["6", "2", "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GT</code> : Greater than. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If an item contains
    #                       an <code>AttributeValue</code> element of a different type than the one provided
    #                       in the request, the value does not match. For example, <code>{"S":"6"}</code>
    #                       does not equal <code>{"N":"6"}</code>. Also, <code>{"N":"6"}</code> does not
    #                       compare to <code>{"NS":["6", "2", "1"]}</code>.</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_NULL</code> : The attribute exists. <code>NOT_NULL</code> is supported
    #                       for all data types, including lists and maps.</p>
    #                  <note>
    #                     <p>This operator tests for the existence of an attribute, not its data type.
    #                           If the data type of attribute "<code>a</code>" is null, and you evaluate it
    #                           using <code>NOT_NULL</code>, the result is a Boolean <code>true</code>. This
    #                           result is because the attribute "<code>a</code>" exists; its data type is
    #                           not relevant to the <code>NOT_NULL</code> comparison operator.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NULL</code> : The attribute does not exist. <code>NULL</code> is supported
    #                       for all data types, including lists and maps.</p>
    #                  <note>
    #                     <p>This operator tests for the nonexistence of an attribute, not its data
    #                           type. If the data type of attribute "<code>a</code>" is null, and you
    #                           evaluate it using <code>NULL</code>, the result is a Boolean
    #                               <code>false</code>. This is because the attribute "<code>a</code>"
    #                           exists; its data type is not relevant to the <code>NULL</code> comparison
    #                           operator.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONTAINS</code> : Checks for a subsequence, or value in a set.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If the target
    #                       attribute of the comparison is of type String, then the operator checks for a
    #                       substring match. If the target attribute of the comparison is of type Binary,
    #                       then the operator looks for a subsequence of the target that matches the input.
    #                       If the target attribute of the comparison is a set ("<code>SS</code>",
    #                           "<code>NS</code>", or "<code>BS</code>"), then the operator evaluates to
    #                       true if it finds an exact match with any member of the set.</p>
    #                  <p>CONTAINS is supported for lists: When evaluating "<code>a CONTAINS b</code>",
    #                           "<code>a</code>" can be a list; however, "<code>b</code>" cannot be a set, a
    #                       map, or a list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CONTAINS</code> : Checks for absence of a subsequence, or absence of a
    #                       value in a set.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       element of type String, Number, or Binary (not a set type). If the target
    #                       attribute of the comparison is a String, then the operator checks for the
    #                       absence of a substring match. If the target attribute of the comparison is
    #                       Binary, then the operator checks for the absence of a subsequence of the target
    #                       that matches the input. If the target attribute of the comparison is a set
    #                           ("<code>SS</code>", "<code>NS</code>", or "<code>BS</code>"), then the
    #                       operator evaluates to true if it <i>does not</i> find an exact
    #                       match with any member of the set.</p>
    #                  <p>NOT_CONTAINS is supported for lists: When evaluating "<code>a NOT CONTAINS
    #                           b</code>", "<code>a</code>" can be a list; however, "<code>b</code>" cannot
    #                       be a set, a map, or a list.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BEGINS_WITH</code> : Checks for a prefix. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain only one <code>AttributeValue</code>
    #                       of type String or Binary (not a Number or a set type). The target attribute of
    #                       the comparison must be of type String or Binary (not a Number or a set
    #                       type).</p>
    #                  <p></p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN</code> : Checks for matching elements in a list.</p>
    #                  <p>
    #                     <code>AttributeValueList</code> can contain one or more
    #                           <code>AttributeValue</code> elements of type String, Number, or Binary.
    #                       These attributes are compared against an existing attribute of an item. If any
    #                       elements of the input are equal to the item attribute, the expression evaluates
    #                       to true.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BETWEEN</code> : Greater than or equal to the first value, and less than
    #                       or equal to the second value. </p>
    #                  <p>
    #                     <code>AttributeValueList</code> must contain two <code>AttributeValue</code>
    #                       elements of the same type, either String, Number, or Binary (not a set type). A
    #                       target attribute matches if the target value is greater than, or equal to, the
    #                       first element and less than, or equal to, the second element. If an item
    #                       contains an <code>AttributeValue</code> element of a different type than the one
    #                       provided in the request, the value does not match. For example,
    #                           <code>{"S":"6"}</code> does not compare to <code>{"N":"6"}</code>. Also,
    #                           <code>{"N":"6"}</code> does not compare to <code>{"NS":["6", "2",
    #                           "1"]}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["EQ", "NE", "IN", "LE", "LT", "GE", "GT", "BETWEEN", "NOT_NULL", "NULL", "CONTAINS", "NOT_CONTAINS", "BEGINS_WITH"]
    #   @return [String]
    # @!attribute attribute_value_list
    #   <p>One or more values to evaluate against the supplied attribute. The number of values in
    #               the list depends on the <code>ComparisonOperator</code> being used.</p>
    #            <p>For type Number, value comparisons are numeric.</p>
    #            <p>String value comparisons for greater than, equals, or less than are based on ASCII
    #               character code values. For example, <code>a</code> is greater than <code>A</code>, and
    #                   <code>a</code> is greater than <code>B</code>. For a list of code values, see <a href="http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters">http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters</a>.</p>
    #            <p>For Binary, DynamoDB treats each byte of the binary data as unsigned when it
    #               compares binary values.</p>
    #            <p>For information on specifying data types in JSON, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataFormat.html">JSON Data Format</a>
    #               in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #   @return [Array<AttributeValue>]
    class ExpectedAttributeValue
      include Hearth::Structure

      MEMBERS = %i[
        value
        exists
        comparison_operator
        attribute_value_list
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>There was a conflict when writing to the specified S3 bucket.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class ExportConflictException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the properties of the exported table.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :export_arn
    #   @option params [String] :export_status
    #   @option params [Time] :start_time
    #   @option params [Time] :end_time
    #   @option params [String] :export_manifest
    #   @option params [String] :table_arn
    #   @option params [String] :table_id
    #   @option params [Time] :export_time
    #   @option params [String] :client_token
    #   @option params [String] :s3_bucket
    #   @option params [String] :s3_bucket_owner
    #   @option params [String] :s3_prefix
    #   @option params [String] :s3_sse_algorithm
    #   @option params [String] :s3_sse_kms_key_id
    #   @option params [String] :failure_code
    #   @option params [String] :failure_message
    #   @option params [String] :export_format
    #   @option params [Integer] :billed_size_bytes
    #   @option params [Integer] :item_count
    #   @option params [String] :export_type
    #   @option params [IncrementalExportSpecification] :incremental_export_specification
    # @!attribute export_arn
    #   <p>The Amazon Resource Name (ARN) of the table export.</p>
    #   @return [String]
    # @!attribute export_status
    #   <p>Export can be in one of the following states: IN_PROGRESS, COMPLETED, or
    #               FAILED.</p>
    #   Enum, one of: ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #   @return [String]
    # @!attribute start_time
    #   <p>The time at which the export task began.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time at which the export task completed.</p>
    #   @return [Time]
    # @!attribute export_manifest
    #   <p>The name of the manifest file for the export task.</p>
    #   @return [String]
    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) of the table that was exported.</p>
    #   @return [String]
    # @!attribute table_id
    #   <p>Unique ID of the table that was exported.</p>
    #   @return [String]
    # @!attribute export_time
    #   <p>Point in time from which table data was exported.</p>
    #   @return [Time]
    # @!attribute client_token
    #   <p>The client token that was provided for the export task. A client token makes calls to
    #                   <code>ExportTableToPointInTimeInput</code> idempotent, meaning that multiple
    #               identical calls have the same effect as one single call.</p>
    #   @return [String]
    # @!attribute s3_bucket
    #   <p>The name of the Amazon S3 bucket containing the export.</p>
    #   @return [String]
    # @!attribute s3_bucket_owner
    #   <p>The ID of the Amazon Web Services account that owns the bucket containing the
    #               export.</p>
    #   @return [String]
    # @!attribute s3_prefix
    #   <p>The Amazon S3 bucket prefix used as the file name and path of the exported
    #               snapshot.</p>
    #   @return [String]
    # @!attribute s3_sse_algorithm
    #   <p>Type of encryption used on the bucket where export data is stored. Valid values for
    #                   <code>S3SseAlgorithm</code> are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AES256</code> - server-side encryption with Amazon S3 managed
    #                       keys</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KMS</code> - server-side encryption with KMS managed
    #                       keys</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["AES256", "KMS"]
    #   @return [String]
    # @!attribute s3_sse_kms_key_id
    #   <p>The ID of the KMS managed key used to encrypt the S3 bucket where
    #               export data is stored (if applicable).</p>
    #   @return [String]
    # @!attribute failure_code
    #   <p>Status code for the result of the failed export.</p>
    #   @return [String]
    # @!attribute failure_message
    #   <p>Export failure reason description.</p>
    #   @return [String]
    # @!attribute export_format
    #   <p>The format of the exported data. Valid values for <code>ExportFormat</code> are
    #                   <code>DYNAMODB_JSON</code> or <code>ION</code>.</p>
    #   Enum, one of: ["DYNAMODB_JSON", "ION"]
    #   @return [String]
    # @!attribute billed_size_bytes
    #   <p>The billable size of the table export.</p>
    #   @return [Integer]
    # @!attribute item_count
    #   <p>The number of items exported.</p>
    #   @return [Integer]
    # @!attribute export_type
    #   <p>The type of export that was performed. Valid values are <code>FULL_EXPORT</code> or <code>INCREMENTAL_EXPORT</code>.</p>
    #   Enum, one of: ["FULL_EXPORT", "INCREMENTAL_EXPORT"]
    #   @return [String]
    # @!attribute incremental_export_specification
    #   <p>Optional object containing the parameters specific to an incremental export.</p>
    #   @return [IncrementalExportSpecification]
    class ExportDescription
      include Hearth::Structure

      MEMBERS = %i[
        export_arn
        export_status
        start_time
        end_time
        export_manifest
        table_arn
        table_id
        export_time
        client_token
        s3_bucket
        s3_bucket_owner
        s3_prefix
        s3_sse_algorithm
        s3_sse_kms_key_id
        failure_code
        failure_message
        export_format
        billed_size_bytes
        item_count
        export_type
        incremental_export_specification
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ExportFormat
    module ExportFormat
      DYNAMODB_JSON = "DYNAMODB_JSON"

      ION = "ION"
    end

    # <p>The specified export was not found.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class ExportNotFoundException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ExportStatus
    module ExportStatus
      IN_PROGRESS = "IN_PROGRESS"

      COMPLETED = "COMPLETED"

      FAILED = "FAILED"
    end

    # <p>Summary information about an export task.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :export_arn
    #   @option params [String] :export_status
    #   @option params [String] :export_type
    # @!attribute export_arn
    #   <p>The Amazon Resource Name (ARN) of the export.</p>
    #   @return [String]
    # @!attribute export_status
    #   <p>Export can be in one of the following states: IN_PROGRESS, COMPLETED, or
    #               FAILED.</p>
    #   Enum, one of: ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #   @return [String]
    # @!attribute export_type
    #   <p>The type of export that was performed. Valid values are <code>FULL_EXPORT</code> or <code>INCREMENTAL_EXPORT</code>.</p>
    #   Enum, one of: ["FULL_EXPORT", "INCREMENTAL_EXPORT"]
    #   @return [String]
    class ExportSummary
      include Hearth::Structure

      MEMBERS = %i[
        export_arn
        export_status
        export_type
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_arn
    #   @option params [Time] :export_time
    #   @option params [String] :client_token
    #   @option params [String] :s3_bucket
    #   @option params [String] :s3_bucket_owner
    #   @option params [String] :s3_prefix
    #   @option params [String] :s3_sse_algorithm
    #   @option params [String] :s3_sse_kms_key_id
    #   @option params [String] :export_format
    #   @option params [String] :export_type
    #   @option params [IncrementalExportSpecification] :incremental_export_specification
    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) associated with the table to export.</p>
    #   @return [String]
    # @!attribute export_time
    #   <p>Time in the past from which to export table data, counted in seconds from the start of
    #               the Unix epoch. The table export will be a snapshot of the table's state at this point
    #               in time.</p>
    #   @return [Time]
    # @!attribute client_token
    #   <p>Providing a <code>ClientToken</code> makes the call to
    #                   <code>ExportTableToPointInTimeInput</code> idempotent, meaning that multiple
    #               identical calls have the same effect as one single call.</p>
    #            <p>A client token is valid for 8 hours after the first request that uses it is completed.
    #               After 8 hours, any request with the same client token is treated as a new request. Do
    #               not resubmit the same request with the same client token for more than 8 hours, or the
    #               result might not be idempotent.</p>
    #            <p>If you submit a request with the same client token but a change in other parameters
    #               within the 8-hour idempotency window, DynamoDB returns an
    #                   <code>ImportConflictException</code>.</p>
    #   @return [String]
    # @!attribute s3_bucket
    #   <p>The name of the Amazon S3 bucket to export the snapshot to.</p>
    #   @return [String]
    # @!attribute s3_bucket_owner
    #   <p>The ID of the Amazon Web Services account that owns the bucket the export will be
    #               stored in.</p>
    #   @return [String]
    # @!attribute s3_prefix
    #   <p>The Amazon S3 bucket prefix to use as the file name and path of the exported
    #               snapshot.</p>
    #   @return [String]
    # @!attribute s3_sse_algorithm
    #   <p>Type of encryption used on the bucket where export data will be stored. Valid values
    #               for <code>S3SseAlgorithm</code> are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AES256</code> - server-side encryption with Amazon S3 managed
    #                       keys</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KMS</code> - server-side encryption with KMS managed
    #                       keys</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["AES256", "KMS"]
    #   @return [String]
    # @!attribute s3_sse_kms_key_id
    #   <p>The ID of the KMS managed key used to encrypt the S3 bucket where
    #               export data will be stored (if applicable).</p>
    #   @return [String]
    # @!attribute export_format
    #   <p>The format for the exported data. Valid values for <code>ExportFormat</code> are
    #                   <code>DYNAMODB_JSON</code> or <code>ION</code>.</p>
    #   Enum, one of: ["DYNAMODB_JSON", "ION"]
    #   @return [String]
    # @!attribute export_type
    #   <p>Choice of whether to execute as a full export or incremental export. Valid values are FULL_EXPORT or INCREMENTAL_EXPORT. The default value is FULL_EXPORT. If INCREMENTAL_EXPORT is provided, the IncrementalExportSpecification must also be used.</p>
    #   Enum, one of: ["FULL_EXPORT", "INCREMENTAL_EXPORT"]
    #   @return [String]
    # @!attribute incremental_export_specification
    #   <p>Optional object containing the parameters specific to an incremental export.</p>
    #   @return [IncrementalExportSpecification]
    class ExportTableToPointInTimeInput
      include Hearth::Structure

      MEMBERS = %i[
        table_arn
        export_time
        client_token
        s3_bucket
        s3_bucket_owner
        s3_prefix
        s3_sse_algorithm
        s3_sse_kms_key_id
        export_format
        export_type
        incremental_export_specification
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [ExportDescription] :export_description
    # @!attribute export_description
    #   <p>Contains a description of the table export.</p>
    #   @return [ExportDescription]
    class ExportTableToPointInTimeOutput
      include Hearth::Structure

      MEMBERS = %i[
        export_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ExportType
    module ExportType
      FULL_EXPORT = "FULL_EXPORT"

      INCREMENTAL_EXPORT = "INCREMENTAL_EXPORT"
    end

    # Enum constants for ExportViewType
    module ExportViewType
      NEW_IMAGE = "NEW_IMAGE"

      NEW_AND_OLD_IMAGES = "NEW_AND_OLD_IMAGES"
    end

    # <p>Represents a failure a contributor insights operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :exception_name
    #   @option params [String] :exception_description
    # @!attribute exception_name
    #   <p>Exception name.</p>
    #   @return [String]
    # @!attribute exception_description
    #   <p>Description of the failure.</p>
    #   @return [String]
    class FailureException
      include Hearth::Structure

      MEMBERS = %i[
        exception_name
        exception_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Specifies an item and related attribute values to retrieve in a
    #                 <code>TransactGetItem</code> object.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, AttributeValue>] :key
    #   @option params [String] :table_name
    #   @option params [String] :projection_expression
    #   @option params [Hash<String, String>] :expression_attribute_names
    # @!attribute key
    #   <p>A map of attribute names to <code>AttributeValue</code> objects that specifies the
    #               primary key of the item to retrieve.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute table_name
    #   <p>The name of the table from which to retrieve the specified item.</p>
    #   @return [String]
    # @!attribute projection_expression
    #   <p>A string that identifies one or more attributes of the specified item to retrieve from
    #               the table. The attributes in the expression must be separated by commas. If no attribute
    #               names are specified, then all attributes of the specified item are returned. If any of
    #               the requested attributes are not found, they do not appear in the result.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in the ProjectionExpression
    #               parameter.</p>
    #   @return [Hash<String, String>]
    class Get
      include Hearth::Structure

      MEMBERS = %i[
        key
        table_name
        projection_expression
        expression_attribute_names
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the input of a <code>GetItem</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [Hash<String, AttributeValue>] :key
    #   @option params [Array<String>] :attributes_to_get
    #   @option params [Boolean] :consistent_read
    #   @option params [String] :return_consumed_capacity
    #   @option params [String] :projection_expression
    #   @option params [Hash<String, String>] :expression_attribute_names
    # @!attribute table_name
    #   <p>The name of the table containing the requested item.</p>
    #   @return [String]
    # @!attribute key
    #   <p>A map of attribute names to <code>AttributeValue</code> objects, representing the
    #               primary key of the item to retrieve.</p>
    #            <p>For the primary key, you must provide all of the attributes. For example, with a
    #               simple primary key, you only need to provide a value for the partition key. For a
    #               composite primary key, you must provide values for both the partition key and the sort
    #               key.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute attributes_to_get
    #   <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute consistent_read
    #   <p>Determines the read consistency model: If set to <code>true</code>, then the operation
    #               uses strongly consistent reads; otherwise, the operation uses eventually consistent
    #               reads.</p>
    #   @return [Boolean]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["INDEXES", "TOTAL", "NONE"]
    #   @return [String]
    # @!attribute projection_expression
    #   <p>A string that identifies one or more attributes to retrieve from the table. These
    #               attributes can include scalars, sets, or elements of a JSON document. The attributes in
    #               the expression must be separated by commas.</p>
    #            <p>If no attribute names are specified, then all attributes are returned. If any of the
    #               requested attributes are not found, they do not appear in the result.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, String>]
    class GetItemInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        key
        attributes_to_get
        consistent_read
        return_consumed_capacity
        projection_expression
        expression_attribute_names
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the output of a <code>GetItem</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, AttributeValue>] :item
    #   @option params [ConsumedCapacity] :consumed_capacity
    # @!attribute item
    #   <p>A map of attribute names to <code>AttributeValue</code> objects, as specified by
    #                   <code>ProjectionExpression</code>.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the <code>GetItem</code> operation. The data returned
    #               includes the total provisioned throughput consumed, along with statistics for the table
    #               and any indexes involved in the operation. <code>ConsumedCapacity</code> is only
    #               returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html#ItemSizeCalculations.Reads">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [ConsumedCapacity]
    class GetItemOutput
      include Hearth::Structure

      MEMBERS = %i[
        item
        consumed_capacity
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the properties of a global secondary index.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :index_name
    #   @option params [Array<KeySchemaElement>] :key_schema
    #   @option params [Projection] :projection
    #   @option params [ProvisionedThroughput] :provisioned_throughput
    # @!attribute index_name
    #   <p>The name of the global secondary index. The name must be unique among all other
    #               indexes on this table.</p>
    #   @return [String]
    # @!attribute key_schema
    #   <p>The complete key schema for a global secondary index, which consists of one or more
    #               pairs of attribute names and key types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HASH</code> - partition key</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RANGE</code> - sort key</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The partition key of an item is also known as its <i>hash
    #                       attribute</i>. The term "hash attribute" derives from DynamoDB's usage of
    #                   an internal hash function to evenly distribute data items across partitions, based
    #                   on their partition key values.</p>
    #               <p>The sort key of an item is also known as its <i>range attribute</i>.
    #                   The term "range attribute" derives from the way DynamoDB stores items with the same
    #                   partition key physically close together, in sorted order by the sort key
    #                   value.</p>
    #            </note>
    #   @return [Array<KeySchemaElement>]
    # @!attribute projection
    #   <p>Represents attributes that are copied (projected) from the table into the global
    #               secondary index. These are in addition to the primary key attributes and index key
    #               attributes, which are automatically projected. </p>
    #   @return [Projection]
    # @!attribute provisioned_throughput
    #   <p>Represents the provisioned throughput settings for the specified global secondary
    #               index.</p>
    #            <p>For current minimum and maximum provisioned throughput values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                   Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [ProvisionedThroughput]
    class GlobalSecondaryIndex
      include Hearth::Structure

      MEMBERS = %i[
        index_name
        key_schema
        projection
        provisioned_throughput
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the auto scaling settings of a global secondary index for a global table
    #             that will be modified.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :index_name
    #   @option params [AutoScalingSettingsUpdate] :provisioned_write_capacity_auto_scaling_update
    # @!attribute index_name
    #   <p>The name of the global secondary index.</p>
    #   @return [String]
    # @!attribute provisioned_write_capacity_auto_scaling_update
    #   <p>Represents the auto scaling settings to be modified for a global table or global
    #               secondary index.</p>
    #   @return [AutoScalingSettingsUpdate]
    class GlobalSecondaryIndexAutoScalingUpdate
      include Hearth::Structure

      MEMBERS = %i[
        index_name
        provisioned_write_capacity_auto_scaling_update
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the properties of a global secondary index.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :index_name
    #   @option params [Array<KeySchemaElement>] :key_schema
    #   @option params [Projection] :projection
    #   @option params [String] :index_status
    #   @option params [Boolean] :backfilling
    #   @option params [ProvisionedThroughputDescription] :provisioned_throughput
    #   @option params [Integer] :index_size_bytes
    #   @option params [Integer] :item_count
    #   @option params [String] :index_arn
    # @!attribute index_name
    #   <p>The name of the global secondary index.</p>
    #   @return [String]
    # @!attribute key_schema
    #   <p>The complete key schema for a global secondary index, which consists of one or more
    #               pairs of attribute names and key types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HASH</code> - partition key</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RANGE</code> - sort key</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The partition key of an item is also known as its <i>hash
    #                       attribute</i>. The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across
    #                   partitions, based on their partition key values.</p>
    #               <p>The sort key of an item is also known as its <i>range attribute</i>.
    #                   The term "range attribute" derives from the way DynamoDB stores items with
    #                   the same partition key physically close together, in sorted order by the sort key
    #                   value.</p>
    #            </note>
    #   @return [Array<KeySchemaElement>]
    # @!attribute projection
    #   <p>Represents attributes that are copied (projected) from the table into the global
    #               secondary index. These are in addition to the primary key attributes and index key
    #               attributes, which are automatically projected. </p>
    #   @return [Projection]
    # @!attribute index_status
    #   <p>The current state of the global secondary index:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The index is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The index is being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The index is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The index is ready for use.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #   @return [String]
    # @!attribute backfilling
    #   <p>Indicates whether the index is currently backfilling. <i>Backfilling</i>
    #               is the process of reading items from the table and determining whether they can be added
    #               to the index. (Not all items will qualify: For example, a partition key cannot have any
    #               duplicate values.) If an item can be added to the index, DynamoDB will do so. After all
    #               items have been processed, the backfilling operation is complete and
    #                   <code>Backfilling</code> is false.</p>
    #            <p>You can delete an index that is being created during the <code>Backfilling</code>
    #               phase when <code>IndexStatus</code> is set to CREATING and <code>Backfilling</code> is
    #               true. You can't delete the index that is being created when <code>IndexStatus</code> is
    #               set to CREATING and <code>Backfilling</code> is false. </p>
    #            <note>
    #               <p>For indexes that were created during a <code>CreateTable</code> operation, the
    #                       <code>Backfilling</code> attribute does not appear in the
    #                       <code>DescribeTable</code> output.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute provisioned_throughput
    #   <p>Represents the provisioned throughput settings for the specified global secondary
    #               index.</p>
    #            <p>For current minimum and maximum provisioned throughput values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                   Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [ProvisionedThroughputDescription]
    # @!attribute index_size_bytes
    #   <p>The total size of the specified index, in bytes. DynamoDB updates this value
    #               approximately every six hours. Recent changes might not be reflected in this
    #               value.</p>
    #   @return [Integer]
    # @!attribute item_count
    #   <p>The number of items in the specified index. DynamoDB updates this value approximately
    #               every six hours. Recent changes might not be reflected in this value.</p>
    #   @return [Integer]
    # @!attribute index_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the index.</p>
    #   @return [String]
    class GlobalSecondaryIndexDescription
      include Hearth::Structure

      MEMBERS = %i[
        index_name
        key_schema
        projection
        index_status
        backfilling
        provisioned_throughput
        index_size_bytes
        item_count
        index_arn
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the properties of a global secondary index for the table when the backup
    #             was created.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :index_name
    #   @option params [Array<KeySchemaElement>] :key_schema
    #   @option params [Projection] :projection
    #   @option params [ProvisionedThroughput] :provisioned_throughput
    # @!attribute index_name
    #   <p>The name of the global secondary index.</p>
    #   @return [String]
    # @!attribute key_schema
    #   <p>The complete key schema for a global secondary index, which consists of one or more
    #               pairs of attribute names and key types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HASH</code> - partition key</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RANGE</code> - sort key</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The partition key of an item is also known as its <i>hash
    #                       attribute</i>. The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across
    #                   partitions, based on their partition key values.</p>
    #               <p>The sort key of an item is also known as its <i>range attribute</i>.
    #                   The term "range attribute" derives from the way DynamoDB stores items with
    #                   the same partition key physically close together, in sorted order by the sort key
    #                   value.</p>
    #            </note>
    #   @return [Array<KeySchemaElement>]
    # @!attribute projection
    #   <p>Represents attributes that are copied (projected) from the table into the global
    #               secondary index. These are in addition to the primary key attributes and index key
    #               attributes, which are automatically projected. </p>
    #   @return [Projection]
    # @!attribute provisioned_throughput
    #   <p>Represents the provisioned throughput settings for the specified global secondary
    #               index. </p>
    #   @return [ProvisionedThroughput]
    class GlobalSecondaryIndexInfo
      include Hearth::Structure

      MEMBERS = %i[
        index_name
        key_schema
        projection
        provisioned_throughput
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>A new global secondary index to be added to an existing table.</p>
    #             </li>
    #             <li>
    #                <p>New provisioned throughput parameters for an existing global secondary
    #                     index.</p>
    #             </li>
    #             <li>
    #                <p>An existing global secondary index to be removed from an existing
    #                     table.</p>
    #             </li>
    #          </ul>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [UpdateGlobalSecondaryIndexAction] :update
    #   @option params [CreateGlobalSecondaryIndexAction] :create
    #   @option params [DeleteGlobalSecondaryIndexAction] :delete
    # @!attribute update
    #   <p>The name of an existing global secondary index, along with new provisioned throughput
    #               settings to be applied to that index.</p>
    #   @return [UpdateGlobalSecondaryIndexAction]
    # @!attribute create
    #   <p>The parameters required for creating a global secondary index on an existing
    #               table:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IndexName </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KeySchema </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AttributeDefinitions </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Projection </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProvisionedThroughput </code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [CreateGlobalSecondaryIndexAction]
    # @!attribute delete
    #   <p>The name of an existing global secondary index to be removed.</p>
    #   @return [DeleteGlobalSecondaryIndexAction]
    class GlobalSecondaryIndexUpdate
      include Hearth::Structure

      MEMBERS = %i[
        update
        create
        delete
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the properties of a global table.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :global_table_name
    #   @option params [Array<Replica>] :replication_group
    # @!attribute global_table_name
    #   <p>The global table name.</p>
    #   @return [String]
    # @!attribute replication_group
    #   <p>The Regions where the global table has replicas.</p>
    #   @return [Array<Replica>]
    class GlobalTable
      include Hearth::Structure

      MEMBERS = %i[
        global_table_name
        replication_group
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The specified global table already exists.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class GlobalTableAlreadyExistsException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Contains details about the global table.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<ReplicaDescription>] :replication_group
    #   @option params [String] :global_table_arn
    #   @option params [Time] :creation_date_time
    #   @option params [String] :global_table_status
    #   @option params [String] :global_table_name
    # @!attribute replication_group
    #   <p>The Regions where the global table has replicas.</p>
    #   @return [Array<ReplicaDescription>]
    # @!attribute global_table_arn
    #   <p>The unique identifier of the global table.</p>
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The creation time of the global table.</p>
    #   @return [Time]
    # @!attribute global_table_status
    #   <p>The current state of the global table:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The global table is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The global table is being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The global table is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The global table is ready for use.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["CREATING", "ACTIVE", "DELETING", "UPDATING"]
    #   @return [String]
    # @!attribute global_table_name
    #   <p>The global table name.</p>
    #   @return [String]
    class GlobalTableDescription
      include Hearth::Structure

      MEMBERS = %i[
        replication_group
        global_table_arn
        creation_date_time
        global_table_status
        global_table_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the settings of a global secondary index for a global table that will be
    #             modified.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :index_name
    #   @option params [Integer] :provisioned_write_capacity_units
    #   @option params [AutoScalingSettingsUpdate] :provisioned_write_capacity_auto_scaling_settings_update
    # @!attribute index_name
    #   <p>The name of the global secondary index. The name must be unique among all other
    #               indexes on this table.</p>
    #   @return [String]
    # @!attribute provisioned_write_capacity_units
    #   <p>The maximum number of writes consumed per second before DynamoDB returns a
    #                   <code>ThrottlingException.</code>
    #            </p>
    #   @return [Integer]
    # @!attribute provisioned_write_capacity_auto_scaling_settings_update
    #   <p>Auto scaling settings for managing a global secondary index's write capacity
    #               units.</p>
    #   @return [AutoScalingSettingsUpdate]
    class GlobalTableGlobalSecondaryIndexSettingsUpdate
      include Hearth::Structure

      MEMBERS = %i[
        index_name
        provisioned_write_capacity_units
        provisioned_write_capacity_auto_scaling_settings_update
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The specified global table does not exist.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class GlobalTableNotFoundException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for GlobalTableStatus
    module GlobalTableStatus
      CREATING = "CREATING"

      ACTIVE = "ACTIVE"

      DELETING = "DELETING"

      UPDATING = "UPDATING"
    end

    # <p>DynamoDB rejected the request because you retried a request with a
    #             different payload but with an idempotent token that was already used.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class IdempotentParameterMismatchException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>
    #             There was a conflict when importing from the specified S3 source.
    #             This can occur when the current import conflicts with a previous import request
    #             that had the same client token.
    #             </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class ImportConflictException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>
    #             The specified import was not found.
    #             </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class ImportNotFoundException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ImportStatus
    module ImportStatus
      IN_PROGRESS = "IN_PROGRESS"

      COMPLETED = "COMPLETED"

      CANCELLING = "CANCELLING"

      CANCELLED = "CANCELLED"

      FAILED = "FAILED"
    end

    # <p> Summary information about the source file for the import.
    #             </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :import_arn
    #   @option params [String] :import_status
    #   @option params [String] :table_arn
    #   @option params [S3BucketSource] :s3_bucket_source
    #   @option params [String] :cloud_watch_log_group_arn
    #   @option params [String] :input_format
    #   @option params [Time] :start_time
    #   @option params [Time] :end_time
    # @!attribute import_arn
    #   <p> The Amazon Resource Number (ARN) corresponding to the import request. </p>
    #   @return [String]
    # @!attribute import_status
    #   <p> The status of the import operation. </p>
    #   Enum, one of: ["IN_PROGRESS", "COMPLETED", "CANCELLING", "CANCELLED", "FAILED"]
    #   @return [String]
    # @!attribute table_arn
    #   <p> The Amazon Resource Number (ARN) of the table being imported into. </p>
    #   @return [String]
    # @!attribute s3_bucket_source
    #   <p> The path and S3 bucket of the source file that is being imported. This includes the
    #               S3Bucket (required), S3KeyPrefix (optional) and S3BucketOwner (optional if the bucket is
    #               owned by the requester). </p>
    #   @return [S3BucketSource]
    # @!attribute cloud_watch_log_group_arn
    #   <p> The Amazon Resource Number (ARN) of the Cloudwatch Log Group associated with this
    #               import task. </p>
    #   @return [String]
    # @!attribute input_format
    #   <p> The format of the source data. Valid values are <code>CSV</code>,
    #                   <code>DYNAMODB_JSON</code> or <code>ION</code>.</p>
    #   Enum, one of: ["DYNAMODB_JSON", "ION", "CSV"]
    #   @return [String]
    # @!attribute start_time
    #   <p> The time at which this import task began. </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p> The time at which this import task ended. (Does this include the successful complete
    #               creation of the table it was imported to?) </p>
    #   @return [Time]
    class ImportSummary
      include Hearth::Structure

      MEMBERS = %i[
        import_arn
        import_status
        table_arn
        s3_bucket_source
        cloud_watch_log_group_arn
        input_format
        start_time
        end_time
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p> Represents the properties of the table being imported into.
    #             </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :import_arn
    #   @option params [String] :import_status
    #   @option params [String] :table_arn
    #   @option params [String] :table_id
    #   @option params [String] :client_token
    #   @option params [S3BucketSource] :s3_bucket_source
    #   @option params [Integer] :error_count (0)
    #   @option params [String] :cloud_watch_log_group_arn
    #   @option params [String] :input_format
    #   @option params [InputFormatOptions] :input_format_options
    #   @option params [String] :input_compression_type
    #   @option params [TableCreationParameters] :table_creation_parameters
    #   @option params [Time] :start_time
    #   @option params [Time] :end_time
    #   @option params [Integer] :processed_size_bytes
    #   @option params [Integer] :processed_item_count (0)
    #   @option params [Integer] :imported_item_count (0)
    #   @option params [String] :failure_code
    #   @option params [String] :failure_message
    # @!attribute import_arn
    #   <p> The Amazon Resource Number (ARN) corresponding to the import request.
    #               </p>
    #   @return [String]
    # @!attribute import_status
    #   <p> The status of the import. </p>
    #   Enum, one of: ["IN_PROGRESS", "COMPLETED", "CANCELLING", "CANCELLED", "FAILED"]
    #   @return [String]
    # @!attribute table_arn
    #   <p> The Amazon Resource Number (ARN) of the table being imported into.
    #               </p>
    #   @return [String]
    # @!attribute table_id
    #   <p> The table id corresponding to the table created by import table process.
    #               </p>
    #   @return [String]
    # @!attribute client_token
    #   <p> The client token that was provided for the import task. Reusing the client token on
    #               retry makes a call to <code>ImportTable</code> idempotent. </p>
    #   @return [String]
    # @!attribute s3_bucket_source
    #   <p> Values for the S3 bucket the source file is imported from. Includes bucket name
    #               (required), key prefix (optional) and bucket account owner ID (optional). </p>
    #   @return [S3BucketSource]
    # @!attribute error_count
    #   <p> The number of errors occurred on importing the source file into the target table.
    #           </p>
    #   @return [Integer]
    # @!attribute cloud_watch_log_group_arn
    #   <p> The Amazon Resource Number (ARN) of the Cloudwatch Log Group associated with the
    #               target table. </p>
    #   @return [String]
    # @!attribute input_format
    #   <p> The format of the source data going into the target table.
    #               </p>
    #   Enum, one of: ["DYNAMODB_JSON", "ION", "CSV"]
    #   @return [String]
    # @!attribute input_format_options
    #   <p> The format options for the data that was imported into the target table. There is one
    #               value, CsvOption. </p>
    #   @return [InputFormatOptions]
    # @!attribute input_compression_type
    #   <p> The compression options for the data that has been imported into the target table.
    #               The values are NONE, GZIP, or ZSTD. </p>
    #   Enum, one of: ["GZIP", "ZSTD", "NONE"]
    #   @return [String]
    # @!attribute table_creation_parameters
    #   <p> The parameters for the new table that is being imported into. </p>
    #   @return [TableCreationParameters]
    # @!attribute start_time
    #   <p> The time when this import task started. </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p> The time at which the creation of the table associated with this import task
    #               completed. </p>
    #   @return [Time]
    # @!attribute processed_size_bytes
    #   <p> The total size of data processed from the source file, in Bytes. </p>
    #   @return [Integer]
    # @!attribute processed_item_count
    #   <p> The total number of items processed from the source file. </p>
    #   @return [Integer]
    # @!attribute imported_item_count
    #   <p> The number of items successfully imported into the new table. </p>
    #   @return [Integer]
    # @!attribute failure_code
    #   <p> The error code corresponding to the failure that the import job ran into during
    #               execution. </p>
    #   @return [String]
    # @!attribute failure_message
    #   <p> The error message corresponding to the failure that the import job ran into during
    #               execution. </p>
    #   @return [String]
    class ImportTableDescription
      include Hearth::Structure

      MEMBERS = %i[
        import_arn
        import_status
        table_arn
        table_id
        client_token
        s3_bucket_source
        error_count
        cloud_watch_log_group_arn
        input_format
        input_format_options
        input_compression_type
        table_creation_parameters
        start_time
        end_time
        processed_size_bytes
        processed_item_count
        imported_item_count
        failure_code
        failure_message
      ].freeze

      attr_accessor(*MEMBERS)

      private

      def _defaults
        {
          error_count: 0,
          processed_item_count: 0,
          imported_item_count: 0
        }
      end
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :client_token
    #   @option params [S3BucketSource] :s3_bucket_source
    #   @option params [String] :input_format
    #   @option params [InputFormatOptions] :input_format_options
    #   @option params [String] :input_compression_type
    #   @option params [TableCreationParameters] :table_creation_parameters
    # @!attribute client_token
    #   <p>Providing a <code>ClientToken</code> makes the call to <code>ImportTableInput</code>
    #               idempotent, meaning that multiple identical calls have the same effect as one single
    #               call.</p>
    #            <p>A client token is valid for 8 hours after the first request that uses it is completed.
    #               After 8 hours, any request with the same client token is treated as a new request. Do
    #               not resubmit the same request with the same client token for more than 8 hours, or the
    #               result might not be idempotent.</p>
    #            <p>If you submit a request with the same client token but a change in other parameters
    #               within the 8-hour idempotency window, DynamoDB returns an
    #                   <code>IdempotentParameterMismatch</code> exception.</p>
    #   @return [String]
    # @!attribute s3_bucket_source
    #   <p> The S3 bucket that provides the source for the import. </p>
    #   @return [S3BucketSource]
    # @!attribute input_format
    #   <p> The format of the source data. Valid values for <code>ImportFormat</code> are
    #                   <code>CSV</code>, <code>DYNAMODB_JSON</code> or <code>ION</code>. </p>
    #   Enum, one of: ["DYNAMODB_JSON", "ION", "CSV"]
    #   @return [String]
    # @!attribute input_format_options
    #   <p> Additional properties that specify how the input is formatted, </p>
    #   @return [InputFormatOptions]
    # @!attribute input_compression_type
    #   <p> Type of compression to be used on the input coming from the imported table. </p>
    #   Enum, one of: ["GZIP", "ZSTD", "NONE"]
    #   @return [String]
    # @!attribute table_creation_parameters
    #   <p>Parameters for the table to import the data into. </p>
    #   @return [TableCreationParameters]
    class ImportTableInput
      include Hearth::Structure

      MEMBERS = %i[
        client_token
        s3_bucket_source
        input_format
        input_format_options
        input_compression_type
        table_creation_parameters
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [ImportTableDescription] :import_table_description
    # @!attribute import_table_description
    #   <p> Represents the properties of the table created for the import, and parameters of the
    #               import. The import parameters include import status, how many items were processed, and
    #               how many errors were encountered. </p>
    #   @return [ImportTableDescription]
    class ImportTableOutput
      include Hearth::Structure

      MEMBERS = %i[
        import_table_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Optional object containing the parameters specific to an incremental export.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Time] :export_from_time
    #   @option params [Time] :export_to_time
    #   @option params [String] :export_view_type
    # @!attribute export_from_time
    #   <p>Time in the past which provides the inclusive start range for the export table's data, counted in seconds from the start of the Unix epoch. The incremental export will reflect the table's state including and after this point in time.</p>
    #   @return [Time]
    # @!attribute export_to_time
    #   <p>Time in the past which provides the exclusive end range for the export table's data, counted in seconds from the start of the Unix epoch. The incremental export will reflect the table's state just prior to this point in time. If this is not provided, the latest time with data available will be used.</p>
    #   @return [Time]
    # @!attribute export_view_type
    #   <p>The view type that was chosen for the export. Valid values are <code>NEW_AND_OLD_IMAGES</code> and <code>NEW_IMAGES</code>. The default value is <code>NEW_AND_OLD_IMAGES</code>.</p>
    #   Enum, one of: ["NEW_IMAGE", "NEW_AND_OLD_IMAGES"]
    #   @return [String]
    class IncrementalExportSpecification
      include Hearth::Structure

      MEMBERS = %i[
        export_from_time
        export_to_time
        export_view_type
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The operation tried to access a nonexistent index.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class IndexNotFoundException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for IndexStatus
    module IndexStatus
      CREATING = "CREATING"

      UPDATING = "UPDATING"

      DELETING = "DELETING"

      ACTIVE = "ACTIVE"
    end

    # Enum constants for InputCompressionType
    module InputCompressionType
      GZIP = "GZIP"

      ZSTD = "ZSTD"

      NONE = "NONE"
    end

    # Enum constants for InputFormat
    module InputFormat
      DYNAMODB_JSON = "DYNAMODB_JSON"

      ION = "ION"

      CSV = "CSV"
    end

    # <p> The format options for the data that was imported into the target table. There is one
    #             value, CsvOption.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [CsvOptions] :csv
    # @!attribute csv
    #   <p> The options for imported source files in CSV format. The values are Delimiter and
    #               HeaderList. </p>
    #   @return [CsvOptions]
    class InputFormatOptions
      include Hearth::Structure

      MEMBERS = %i[
        csv
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>An error occurred on the server side.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   <p>The server encountered an internal error trying to fulfill the request.</p>
    #   @return [String]
    class InternalServerError
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class InvalidEndpointException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The specified <code>ExportTime</code> is outside of the point in time recovery
    #             window.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class InvalidExportTimeException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>An invalid restore time was specified. RestoreDateTime must be between
    #             EarliestRestorableDateTime and LatestRestorableDateTime.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class InvalidRestoreTimeException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Information about item collections, if any, that were affected by the operation.
    #                 <code>ItemCollectionMetrics</code> is only returned if the request asked for it. If
    #             the table does not have any local secondary indexes, this information is not returned in
    #             the response.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, AttributeValue>] :item_collection_key
    #   @option params [Array<Float>] :size_estimate_range_gb
    # @!attribute item_collection_key
    #   <p>The partition key value of the item collection. This value is the same as the
    #               partition key value of the item.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute size_estimate_range_gb
    #   <p>An estimate of item collection size, in gigabytes. This value is a two-element array
    #               containing a lower bound and an upper bound for the estimate. The estimate includes the
    #               size of all the items in the table, plus the size of all attributes projected into all
    #               of the local secondary indexes on that table. Use this estimate to measure whether a
    #               local secondary index is approaching its size limit.</p>
    #            <p>The estimate is subject to change over time; therefore, do not rely on the precision
    #               or accuracy of the estimate.</p>
    #   @return [Array<Float>]
    class ItemCollectionMetrics
      include Hearth::Structure

      MEMBERS = %i[
        item_collection_key
        size_estimate_range_gb
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>An item collection is too large. This exception is only returned for tables that
    #             have one or more local secondary indexes.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   <p>The total size of an item collection has exceeded the maximum limit of 10
    #               gigabytes.</p>
    #   @return [String]
    class ItemCollectionSizeLimitExceededException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Details for the requested item.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, AttributeValue>] :item
    # @!attribute item
    #   <p>Map of attribute data consisting of the data type and attribute value.</p>
    #   @return [Hash<String, AttributeValue>]
    class ItemResponse
      include Hearth::Structure

      MEMBERS = %i[
        item
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents <i>a single element</i> of a key schema. A key schema
    #             specifies the attributes that make up the primary key of a table, or the key attributes
    #             of an index.</p>
    #          <p>A <code>KeySchemaElement</code> represents exactly one attribute of the primary key.
    #             For example, a simple primary key would be represented by one
    #                 <code>KeySchemaElement</code> (for the partition key). A composite primary key would
    #             require one <code>KeySchemaElement</code> for the partition key, and another
    #                 <code>KeySchemaElement</code> for the sort key.</p>
    #          <p>A <code>KeySchemaElement</code> must be a scalar, top-level attribute (not a nested
    #             attribute). The data type must be one of String, Number, or Binary. The attribute cannot
    #             be nested within a List or a Map.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :attribute_name
    #   @option params [String] :key_type
    # @!attribute attribute_name
    #   <p>The name of a key attribute.</p>
    #   @return [String]
    # @!attribute key_type
    #   <p>The role that this key attribute will assume:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HASH</code> - partition key</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RANGE</code> - sort key</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The partition key of an item is also known as its <i>hash
    #                       attribute</i>. The term "hash attribute" derives from DynamoDB's usage of an internal hash function to evenly distribute data items across
    #                   partitions, based on their partition key values.</p>
    #               <p>The sort key of an item is also known as its <i>range attribute</i>.
    #                   The term "range attribute" derives from the way DynamoDB stores items with
    #                   the same partition key physically close together, in sorted order by the sort key
    #                   value.</p>
    #            </note>
    #   Enum, one of: ["HASH", "RANGE"]
    #   @return [String]
    class KeySchemaElement
      include Hearth::Structure

      MEMBERS = %i[
        attribute_name
        key_type
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for KeyType
    module KeyType
      HASH = "HASH"

      RANGE = "RANGE"
    end

    # <p>Represents a set of primary keys and, for each key, the attributes to retrieve from
    #             the table.</p>
    #          <p>For each primary key, you must provide <i>all</i> of the key attributes.
    #             For example, with a simple primary key, you only need to provide the partition key. For
    #             a composite primary key, you must provide <i>both</i> the partition key
    #             and the sort key.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<Hash<String, AttributeValue>>] :keys
    #   @option params [Array<String>] :attributes_to_get
    #   @option params [Boolean] :consistent_read
    #   @option params [String] :projection_expression
    #   @option params [Hash<String, String>] :expression_attribute_names
    # @!attribute keys
    #   <p>The primary key attribute values that define the items and the attributes associated
    #               with the items.</p>
    #   @return [Array<Hash<String, AttributeValue>>]
    # @!attribute attributes_to_get
    #   <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.html">Legacy
    #                   Conditional Parameters</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute consistent_read
    #   <p>The consistency of a read operation. If set to <code>true</code>, then a strongly
    #               consistent read is used; otherwise, an eventually consistent read is used.</p>
    #   @return [Boolean]
    # @!attribute projection_expression
    #   <p>A string that identifies one or more attributes to retrieve from the table. These
    #               attributes can include scalars, sets, or elements of a JSON document. The attributes in
    #               the <code>ProjectionExpression</code> must be separated by commas.</p>
    #            <p>If no attribute names are specified, then all attributes will be returned. If any of
    #               the requested attributes are not found, they will not appear in the result.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, String>]
    class KeysAndAttributes
      include Hearth::Structure

      MEMBERS = %i[
        keys
        attributes_to_get
        consistent_read
        projection_expression
        expression_attribute_names
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Describes a Kinesis data stream destination.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :stream_arn
    #   @option params [String] :destination_status
    #   @option params [String] :destination_status_description
    #   @option params [String] :approximate_creation_date_time_precision
    # @!attribute stream_arn
    #   <p>The ARN for a specific Kinesis data stream.</p>
    #   @return [String]
    # @!attribute destination_status
    #   <p>The current status of replication.</p>
    #   Enum, one of: ["ENABLING", "ACTIVE", "DISABLING", "DISABLED", "ENABLE_FAILED", "UPDATING"]
    #   @return [String]
    # @!attribute destination_status_description
    #   <p>The human-readable string that corresponds to the replica status.</p>
    #   @return [String]
    # @!attribute approximate_creation_date_time_precision
    #   <p>The precision of the Kinesis data stream timestamp. The values are either <code>MILLISECOND</code> or <code>MICROSECOND</code>.</p>
    #   Enum, one of: ["MILLISECOND", "MICROSECOND"]
    #   @return [String]
    class KinesisDataStreamDestination
      include Hearth::Structure

      MEMBERS = %i[
        stream_arn
        destination_status
        destination_status_description
        approximate_creation_date_time_precision
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>There is no limit to the number of daily on-demand backups that can be taken. </p>
    #          <p>For most purposes, up to 500 simultaneous table operations are allowed per account. These operations
    #             include <code>CreateTable</code>, <code>UpdateTable</code>,
    #                 <code>DeleteTable</code>,<code>UpdateTimeToLive</code>,
    #                 <code>RestoreTableFromBackup</code>, and <code>RestoreTableToPointInTime</code>. </p>
    #          <p>When you are creating a table with one or more secondary
    #             indexes, you can have up to 250 such requests running at a time. However, if the table or
    #             index specifications are complex, then DynamoDB might temporarily reduce the number
    #             of concurrent operations.</p>
    #          <p>When importing into DynamoDB, up to 50 simultaneous import table operations are allowed per account.</p>
    #          <p>There is a soft account quota of 2,500 tables.</p>
    #          <p>GetRecords was called with a value of more than 1000 for the limit request parameter.</p>
    #          <p>More than 2 processes are reading from the same streams shard at the same time. Exceeding
    #             this limit may result in request throttling.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   <p>Too many operations for a given subscriber.</p>
    #   @return [String]
    class LimitExceededException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [Integer] :limit
    #   @option params [Time] :time_range_lower_bound
    #   @option params [Time] :time_range_upper_bound
    #   @option params [String] :exclusive_start_backup_arn
    #   @option params [String] :backup_type
    # @!attribute table_name
    #   <p>The backups from the table specified by <code>TableName</code> are listed. </p>
    #   @return [String]
    # @!attribute limit
    #   <p>Maximum number of backups to return at once.</p>
    #   @return [Integer]
    # @!attribute time_range_lower_bound
    #   <p>Only backups created after this time are listed. <code>TimeRangeLowerBound</code> is
    #               inclusive.</p>
    #   @return [Time]
    # @!attribute time_range_upper_bound
    #   <p>Only backups created before this time are listed. <code>TimeRangeUpperBound</code> is
    #               exclusive. </p>
    #   @return [Time]
    # @!attribute exclusive_start_backup_arn
    #   <p>
    #               <code>LastEvaluatedBackupArn</code> is the Amazon Resource Name (ARN) of the backup last
    #               evaluated when the current page of results was returned, inclusive of the current page
    #               of results. This value may be specified as the <code>ExclusiveStartBackupArn</code> of a
    #               new <code>ListBackups</code> operation in order to fetch the next page of results.
    #           </p>
    #   @return [String]
    # @!attribute backup_type
    #   <p>The backups from the table specified by <code>BackupType</code> are listed.</p>
    #            <p>Where <code>BackupType</code> can be:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>USER</code> - On-demand backup created by you. (The default setting if no
    #                       other backup types are specified.)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SYSTEM</code> - On-demand backup automatically created by DynamoDB.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> - All types of on-demand backups (USER and SYSTEM).</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["USER", "SYSTEM", "AWS_BACKUP", "ALL"]
    #   @return [String]
    class ListBackupsInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        limit
        time_range_lower_bound
        time_range_upper_bound
        exclusive_start_backup_arn
        backup_type
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<BackupSummary>] :backup_summaries
    #   @option params [String] :last_evaluated_backup_arn
    # @!attribute backup_summaries
    #   <p>List of <code>BackupSummary</code> objects.</p>
    #   @return [Array<BackupSummary>]
    # @!attribute last_evaluated_backup_arn
    #   <p> The ARN of the backup last evaluated when the current page of results was returned,
    #               inclusive of the current page of results. This value may be specified as the
    #                   <code>ExclusiveStartBackupArn</code> of a new <code>ListBackups</code> operation in
    #               order to fetch the next page of results. </p>
    #            <p> If <code>LastEvaluatedBackupArn</code> is empty, then the last page of results has
    #               been processed and there are no more results to be retrieved. </p>
    #            <p> If <code>LastEvaluatedBackupArn</code> is not empty, this may or may not indicate
    #               that there is more data to be returned. All results are guaranteed to have been returned
    #               if and only if no value for <code>LastEvaluatedBackupArn</code> is returned. </p>
    #   @return [String]
    class ListBackupsOutput
      include Hearth::Structure

      MEMBERS = %i[
        backup_summaries
        last_evaluated_backup_arn
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [String] :next_token
    #   @option params [Integer] :max_results (0)
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to for the desired page, if there is one.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListContributorInsightsInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        next_token
        max_results
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<ContributorInsightsSummary>] :contributor_insights_summaries
    #   @option params [String] :next_token
    # @!attribute contributor_insights_summaries
    #   <p>A list of ContributorInsightsSummary.</p>
    #   @return [Array<ContributorInsightsSummary>]
    # @!attribute next_token
    #   <p>A token to go to the next page if there is one.</p>
    #   @return [String]
    class ListContributorInsightsOutput
      include Hearth::Structure

      MEMBERS = %i[
        contributor_insights_summaries
        next_token
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_arn
    #   @option params [Integer] :max_results
    #   @option params [String] :next_token
    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) associated with the exported table.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>An optional string that, if supplied, must be copied from the output of a previous
    #               call to <code>ListExports</code>. When provided in this manner, the API fetches the next
    #               page of results.</p>
    #   @return [String]
    class ListExportsInput
      include Hearth::Structure

      MEMBERS = %i[
        table_arn
        max_results
        next_token
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<ExportSummary>] :export_summaries
    #   @option params [String] :next_token
    # @!attribute export_summaries
    #   <p>A list of <code>ExportSummary</code> objects.</p>
    #   @return [Array<ExportSummary>]
    # @!attribute next_token
    #   <p>If this value is returned, there are additional results to be displayed. To retrieve
    #               them, call <code>ListExports</code> again, with <code>NextToken</code> set to this
    #               value.</p>
    #   @return [String]
    class ListExportsOutput
      include Hearth::Structure

      MEMBERS = %i[
        export_summaries
        next_token
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :exclusive_start_global_table_name
    #   @option params [Integer] :limit
    #   @option params [String] :region_name
    # @!attribute exclusive_start_global_table_name
    #   <p>The first global table name that this operation will evaluate.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of table names to return, if the parameter is not specified
    #               DynamoDB defaults to 100.</p>
    #            <p>If the number of global tables DynamoDB finds reaches this limit, it stops the
    #               operation and returns the table names collected up to that point, with a table name in
    #               the <code>LastEvaluatedGlobalTableName</code> to apply in a subsequent operation to the
    #                   <code>ExclusiveStartGlobalTableName</code> parameter.</p>
    #   @return [Integer]
    # @!attribute region_name
    #   <p>Lists the global tables in a specific Region.</p>
    #   @return [String]
    class ListGlobalTablesInput
      include Hearth::Structure

      MEMBERS = %i[
        exclusive_start_global_table_name
        limit
        region_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<GlobalTable>] :global_tables
    #   @option params [String] :last_evaluated_global_table_name
    # @!attribute global_tables
    #   <p>List of global table names.</p>
    #   @return [Array<GlobalTable>]
    # @!attribute last_evaluated_global_table_name
    #   <p>Last evaluated global table name.</p>
    #   @return [String]
    class ListGlobalTablesOutput
      include Hearth::Structure

      MEMBERS = %i[
        global_tables
        last_evaluated_global_table_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_arn
    #   @option params [Integer] :page_size
    #   @option params [String] :next_token
    # @!attribute table_arn
    #   <p> The Amazon Resource Name (ARN) associated with the table that was imported to.
    #           </p>
    #   @return [String]
    # @!attribute page_size
    #   <p> The number of <code>ImportSummary </code>objects returned in a single page. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> An optional string that, if supplied, must be copied from the output of a previous
    #               call to <code>ListImports</code>. When provided in this manner, the API fetches the next
    #               page of results. </p>
    #   @return [String]
    class ListImportsInput
      include Hearth::Structure

      MEMBERS = %i[
        table_arn
        page_size
        next_token
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<ImportSummary>] :import_summary_list
    #   @option params [String] :next_token
    # @!attribute import_summary_list
    #   <p> A list of <code>ImportSummary</code> objects. </p>
    #   @return [Array<ImportSummary>]
    # @!attribute next_token
    #   <p> If this value is returned, there are additional results to be displayed. To retrieve
    #               them, call <code>ListImports</code> again, with <code>NextToken</code> set to this
    #               value. </p>
    #   @return [String]
    class ListImportsOutput
      include Hearth::Structure

      MEMBERS = %i[
        import_summary_list
        next_token
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the input of a <code>ListTables</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :exclusive_start_table_name
    #   @option params [Integer] :limit
    # @!attribute exclusive_start_table_name
    #   <p>The first table name that this operation will evaluate. Use the value that was
    #               returned for <code>LastEvaluatedTableName</code> in a previous operation, so that you
    #               can obtain the next page of results.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>A maximum number of table names to return. If this parameter is not specified, the
    #               limit is 100.</p>
    #   @return [Integer]
    class ListTablesInput
      include Hearth::Structure

      MEMBERS = %i[
        exclusive_start_table_name
        limit
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the output of a <code>ListTables</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<String>] :table_names
    #   @option params [String] :last_evaluated_table_name
    # @!attribute table_names
    #   <p>The names of the tables associated with the current account at the current endpoint.
    #               The maximum size of this array is 100.</p>
    #            <p>If <code>LastEvaluatedTableName</code> also appears in the output, you can use this
    #               value as the <code>ExclusiveStartTableName</code> parameter in a subsequent
    #                   <code>ListTables</code> request and obtain the next page of results.</p>
    #   @return [Array<String>]
    # @!attribute last_evaluated_table_name
    #   <p>The name of the last table in the current page of results. Use this value as the
    #                   <code>ExclusiveStartTableName</code> in a new request to obtain the next page of
    #               results, until all the table names are returned.</p>
    #            <p>If you do not receive a <code>LastEvaluatedTableName</code> value in the response,
    #               this means that there are no more table names to be retrieved.</p>
    #   @return [String]
    class ListTablesOutput
      include Hearth::Structure

      MEMBERS = %i[
        table_names
        last_evaluated_table_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :resource_arn
    #   @option params [String] :next_token
    # @!attribute resource_arn
    #   <p>The Amazon DynamoDB resource with tags to be listed. This value is an Amazon Resource
    #               Name (ARN).</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>An optional string that, if supplied, must be copied from the output of a previous
    #               call to ListTagOfResource. When provided in this manner, this API fetches the next page
    #               of results.</p>
    #   @return [String]
    class ListTagsOfResourceInput
      include Hearth::Structure

      MEMBERS = %i[
        resource_arn
        next_token
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<Tag>] :tags
    #   @option params [String] :next_token
    # @!attribute tags
    #   <p>The tags currently associated with the Amazon DynamoDB resource.</p>
    #   @return [Array<Tag>]
    # @!attribute next_token
    #   <p>If this value is returned, there are additional results to be displayed. To retrieve
    #               them, call ListTagsOfResource again, with NextToken set to this value.</p>
    #   @return [String]
    class ListTagsOfResourceOutput
      include Hearth::Structure

      MEMBERS = %i[
        tags
        next_token
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the properties of a local secondary index.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :index_name
    #   @option params [Array<KeySchemaElement>] :key_schema
    #   @option params [Projection] :projection
    # @!attribute index_name
    #   <p>The name of the local secondary index. The name must be unique among all other indexes
    #               on this table.</p>
    #   @return [String]
    # @!attribute key_schema
    #   <p>The complete key schema for the local secondary index, consisting of one or more pairs
    #               of attribute names and key types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HASH</code> - partition key</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RANGE</code> - sort key</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The partition key of an item is also known as its <i>hash
    #                       attribute</i>. The term "hash attribute" derives from DynamoDB's usage of
    #                   an internal hash function to evenly distribute data items across partitions, based
    #                   on their partition key values.</p>
    #               <p>The sort key of an item is also known as its <i>range attribute</i>.
    #                   The term "range attribute" derives from the way DynamoDB stores items with the same
    #                   partition key physically close together, in sorted order by the sort key
    #                   value.</p>
    #            </note>
    #   @return [Array<KeySchemaElement>]
    # @!attribute projection
    #   <p>Represents attributes that are copied (projected) from the table into the local
    #               secondary index. These are in addition to the primary key attributes and index key
    #               attributes, which are automatically projected. </p>
    #   @return [Projection]
    class LocalSecondaryIndex
      include Hearth::Structure

      MEMBERS = %i[
        index_name
        key_schema
        projection
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the properties of a local secondary index.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :index_name
    #   @option params [Array<KeySchemaElement>] :key_schema
    #   @option params [Projection] :projection
    #   @option params [Integer] :index_size_bytes
    #   @option params [Integer] :item_count
    #   @option params [String] :index_arn
    # @!attribute index_name
    #   <p>Represents the name of the local secondary index.</p>
    #   @return [String]
    # @!attribute key_schema
    #   <p>The complete key schema for the local secondary index, consisting of one or more pairs
    #               of attribute names and key types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HASH</code> - partition key</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RANGE</code> - sort key</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The partition key of an item is also known as its <i>hash
    #                       attribute</i>. The term "hash attribute" derives from DynamoDB's usage of
    #                   an internal hash function to evenly distribute data items across partitions, based
    #                   on their partition key values.</p>
    #               <p>The sort key of an item is also known as its <i>range attribute</i>.
    #                   The term "range attribute" derives from the way DynamoDB stores items with the same
    #                   partition key physically close together, in sorted order by the sort key
    #                   value.</p>
    #            </note>
    #   @return [Array<KeySchemaElement>]
    # @!attribute projection
    #   <p>Represents attributes that are copied (projected) from the table into the global
    #               secondary index. These are in addition to the primary key attributes and index key
    #               attributes, which are automatically projected. </p>
    #   @return [Projection]
    # @!attribute index_size_bytes
    #   <p>The total size of the specified index, in bytes. DynamoDB updates this value
    #               approximately every six hours. Recent changes might not be reflected in this
    #               value.</p>
    #   @return [Integer]
    # @!attribute item_count
    #   <p>The number of items in the specified index. DynamoDB updates this value
    #               approximately every six hours. Recent changes might not be reflected in this
    #               value.</p>
    #   @return [Integer]
    # @!attribute index_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the index.</p>
    #   @return [String]
    class LocalSecondaryIndexDescription
      include Hearth::Structure

      MEMBERS = %i[
        index_name
        key_schema
        projection
        index_size_bytes
        item_count
        index_arn
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the properties of a local secondary index for the table when the backup was
    #             created.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :index_name
    #   @option params [Array<KeySchemaElement>] :key_schema
    #   @option params [Projection] :projection
    # @!attribute index_name
    #   <p>Represents the name of the local secondary index.</p>
    #   @return [String]
    # @!attribute key_schema
    #   <p>The complete key schema for a local secondary index, which consists of one or more
    #               pairs of attribute names and key types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HASH</code> - partition key</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RANGE</code> - sort key</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The partition key of an item is also known as its <i>hash
    #                       attribute</i>. The term "hash attribute" derives from DynamoDB's usage of
    #                   an internal hash function to evenly distribute data items across partitions, based
    #                   on their partition key values.</p>
    #               <p>The sort key of an item is also known as its <i>range attribute</i>.
    #                   The term "range attribute" derives from the way DynamoDB stores items with the same
    #                   partition key physically close together, in sorted order by the sort key
    #                   value.</p>
    #            </note>
    #   @return [Array<KeySchemaElement>]
    # @!attribute projection
    #   <p>Represents attributes that are copied (projected) from the table into the global
    #               secondary index. These are in addition to the primary key attributes and index key
    #               attributes, which are automatically projected. </p>
    #   @return [Projection]
    class LocalSecondaryIndexInfo
      include Hearth::Structure

      MEMBERS = %i[
        index_name
        key_schema
        projection
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p> Represents a PartiQL statement that uses parameters. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :statement
    #   @option params [Array<AttributeValue>] :parameters
    #   @option params [String] :return_values_on_condition_check_failure
    # @!attribute statement
    #   <p> A PartiQL statement that uses parameters. </p>
    #   @return [String]
    # @!attribute parameters
    #   <p> The parameter values. </p>
    #   @return [Array<AttributeValue>]
    # @!attribute return_values_on_condition_check_failure
    #   <p>An optional parameter that returns the item attributes for a PartiQL
    #               <code>ParameterizedStatement</code> operation that failed a condition check.</p>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #   Enum, one of: ["ALL_OLD", "NONE"]
    #   @return [String]
    class ParameterizedStatement
      include Hearth::Structure

      MEMBERS = %i[
        statement
        parameters
        return_values_on_condition_check_failure
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The description of the point in time settings applied to the table.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :point_in_time_recovery_status
    #   @option params [Time] :earliest_restorable_date_time
    #   @option params [Time] :latest_restorable_date_time
    # @!attribute point_in_time_recovery_status
    #   <p>The current state of point in time recovery:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> - Point in time recovery is enabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLED</code> - Point in time recovery is disabled.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #   @return [String]
    # @!attribute earliest_restorable_date_time
    #   <p>Specifies the earliest point in time you can restore your table to. You can restore
    #               your table to any point in time during the last 35 days. </p>
    #   @return [Time]
    # @!attribute latest_restorable_date_time
    #   <p>
    #               <code>LatestRestorableDateTime</code> is typically 5 minutes before the current time.
    #           </p>
    #   @return [Time]
    class PointInTimeRecoveryDescription
      include Hearth::Structure

      MEMBERS = %i[
        point_in_time_recovery_status
        earliest_restorable_date_time
        latest_restorable_date_time
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the settings used to enable point in time recovery.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :point_in_time_recovery_enabled
    # @!attribute point_in_time_recovery_enabled
    #   <p>Indicates whether point in time recovery is enabled (true) or disabled (false) on the
    #               table.</p>
    #   @return [Boolean]
    class PointInTimeRecoverySpecification
      include Hearth::Structure

      MEMBERS = %i[
        point_in_time_recovery_enabled
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for PointInTimeRecoveryStatus
    module PointInTimeRecoveryStatus
      ENABLED = "ENABLED"

      DISABLED = "DISABLED"
    end

    # <p>Point in time recovery has not yet been enabled for this source table.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class PointInTimeRecoveryUnavailableException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents attributes that are copied (projected) from the table into an index. These
    #             are in addition to the primary key attributes and index key attributes, which are
    #             automatically projected.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :projection_type
    #   @option params [Array<String>] :non_key_attributes
    # @!attribute projection_type
    #   <p>The set of attributes that are projected into the index:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>KEYS_ONLY</code> - Only the index and primary keys are projected into the
    #                       index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INCLUDE</code> - In addition to the attributes described in
    #                           <code>KEYS_ONLY</code>, the secondary index will include other non-key
    #                       attributes that you specify.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> - All of the table attributes are projected into the
    #                       index.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["ALL", "KEYS_ONLY", "INCLUDE"]
    #   @return [String]
    # @!attribute non_key_attributes
    #   <p>Represents the non-key attribute names which will be projected into the index.</p>
    #            <p>For local secondary indexes, the total count of <code>NonKeyAttributes</code> summed
    #               across all of the local secondary indexes, must not exceed 100. If you project the same
    #               attribute into two different indexes, this counts as two distinct attributes when
    #               determining the total.</p>
    #   @return [Array<String>]
    class Projection
      include Hearth::Structure

      MEMBERS = %i[
        projection_type
        non_key_attributes
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ProjectionType
    module ProjectionType
      ALL = "ALL"

      KEYS_ONLY = "KEYS_ONLY"

      INCLUDE = "INCLUDE"
    end

    # <p>Represents the provisioned throughput settings for a specified table or index. The
    #             settings can be modified using the <code>UpdateTable</code> operation.</p>
    #          <p>For current minimum and maximum provisioned throughput values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                 Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
    #                 Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :read_capacity_units
    #   @option params [Integer] :write_capacity_units
    # @!attribute read_capacity_units
    #   <p>The maximum number of strongly consistent reads consumed per second before DynamoDB
    #               returns a <code>ThrottlingException</code>. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB
    #                   Developer Guide</i>.</p>
    #            <p>If read/write capacity mode is <code>PAY_PER_REQUEST</code> the value is set to
    #               0.</p>
    #   @return [Integer]
    # @!attribute write_capacity_units
    #   <p>The maximum number of writes consumed per second before DynamoDB returns a
    #                   <code>ThrottlingException</code>. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB
    #                   Developer Guide</i>.</p>
    #            <p>If read/write capacity mode is <code>PAY_PER_REQUEST</code> the value is set to
    #               0.</p>
    #   @return [Integer]
    class ProvisionedThroughput
      include Hearth::Structure

      MEMBERS = %i[
        read_capacity_units
        write_capacity_units
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the provisioned throughput settings for the table, consisting of read and
    #             write capacity units, along with data about increases and decreases.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Time] :last_increase_date_time
    #   @option params [Time] :last_decrease_date_time
    #   @option params [Integer] :number_of_decreases_today
    #   @option params [Integer] :read_capacity_units
    #   @option params [Integer] :write_capacity_units
    # @!attribute last_increase_date_time
    #   <p>The date and time of the last provisioned throughput increase for this table.</p>
    #   @return [Time]
    # @!attribute last_decrease_date_time
    #   <p>The date and time of the last provisioned throughput decrease for this table.</p>
    #   @return [Time]
    # @!attribute number_of_decreases_today
    #   <p>The number of provisioned throughput decreases for this table during this UTC calendar
    #               day. For current maximums on provisioned throughput decreases, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                   Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Integer]
    # @!attribute read_capacity_units
    #   <p>The maximum number of strongly consistent reads consumed per second before DynamoDB
    #               returns a <code>ThrottlingException</code>. Eventually consistent reads require less
    #               effort than strongly consistent reads, so a setting of 50 <code>ReadCapacityUnits</code>
    #               per second provides 100 eventually consistent <code>ReadCapacityUnits</code> per
    #               second.</p>
    #   @return [Integer]
    # @!attribute write_capacity_units
    #   <p>The maximum number of writes consumed per second before DynamoDB returns a
    #                   <code>ThrottlingException</code>.</p>
    #   @return [Integer]
    class ProvisionedThroughputDescription
      include Hearth::Structure

      MEMBERS = %i[
        last_increase_date_time
        last_decrease_date_time
        number_of_decreases_today
        read_capacity_units
        write_capacity_units
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Your request rate is too high. The Amazon Web Services SDKs for DynamoDB
    #             automatically retry requests that receive this exception. Your request is eventually
    #             successful, unless your retry queue is too large to finish. Reduce the frequency of
    #             requests and use exponential backoff. For more information, go to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Programming.Errors.html#Programming.Errors.RetryAndBackoff">Error Retries and Exponential Backoff</a> in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   <p>You exceeded your maximum allowed provisioned throughput.</p>
    #   @return [String]
    class ProvisionedThroughputExceededException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Replica-specific provisioned throughput settings. If not specified, uses the source
    #             table's provisioned throughput settings.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Integer] :read_capacity_units
    # @!attribute read_capacity_units
    #   <p>Replica-specific read capacity units. If not specified, uses the source table's read
    #               capacity settings.</p>
    #   @return [Integer]
    class ProvisionedThroughputOverride
      include Hearth::Structure

      MEMBERS = %i[
        read_capacity_units
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents a request to perform a <code>PutItem</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, AttributeValue>] :item
    #   @option params [String] :table_name
    #   @option params [String] :condition_expression
    #   @option params [Hash<String, String>] :expression_attribute_names
    #   @option params [Hash<String, AttributeValue>] :expression_attribute_values
    #   @option params [String] :return_values_on_condition_check_failure
    # @!attribute item
    #   <p>A map of attribute name to attribute values, representing the primary key of the item
    #               to be written by <code>PutItem</code>. All of the table's primary key attributes must be
    #               specified, and their data types must match those of the table's key schema. If any
    #               attributes are present in the item that are part of an index key schema for the table,
    #               their types must match the index key schema. </p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute table_name
    #   <p>Name of the table in which to write the item.</p>
    #   @return [String]
    # @!attribute condition_expression
    #   <p>A condition that must be satisfied in order for a conditional update to
    #               succeed.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute return_values_on_condition_check_failure
    #   <p>Use <code>ReturnValuesOnConditionCheckFailure</code> to get the item attributes if the
    #                   <code>Put</code> condition fails. For
    #                   <code>ReturnValuesOnConditionCheckFailure</code>, the valid values are: NONE and
    #               ALL_OLD.</p>
    #   Enum, one of: ["ALL_OLD", "NONE"]
    #   @return [String]
    class Put
      include Hearth::Structure

      MEMBERS = %i[
        item
        table_name
        condition_expression
        expression_attribute_names
        expression_attribute_values
        return_values_on_condition_check_failure
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the input of a <code>PutItem</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [Hash<String, AttributeValue>] :item
    #   @option params [Hash<String, ExpectedAttributeValue>] :expected
    #   @option params [String] :return_values
    #   @option params [String] :return_consumed_capacity
    #   @option params [String] :return_item_collection_metrics
    #   @option params [String] :conditional_operator
    #   @option params [String] :condition_expression
    #   @option params [Hash<String, String>] :expression_attribute_names
    #   @option params [Hash<String, AttributeValue>] :expression_attribute_values
    #   @option params [String] :return_values_on_condition_check_failure
    # @!attribute table_name
    #   <p>The name of the table to contain the item.</p>
    #   @return [String]
    # @!attribute item
    #   <p>A map of attribute name/value pairs, one for each attribute. Only the primary key
    #               attributes are required; you can optionally provide other attribute name-value pairs for
    #               the item.</p>
    #            <p>You must provide all of the attributes for the primary key. For example, with a simple
    #               primary key, you only need to provide a value for the partition key. For a composite
    #               primary key, you must provide both values for both the partition key and the sort
    #               key.</p>
    #            <p>If you specify any attributes that are part of an index key, then the data types for
    #               those attributes must match those of the schema in the table's attribute
    #               definition.</p>
    #            <p>Empty String and Binary attribute values are allowed. Attribute values of type String
    #               and Binary must have a length greater than zero if the attribute is used as a key
    #               attribute for a table or index.</p>
    #            <p>For more information about primary keys, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.CoreComponents.html#HowItWorks.CoreComponents.PrimaryKey">Primary Key</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #            <p>Each element in the <code>Item</code> map is an <code>AttributeValue</code>
    #               object.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute expected
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Hash<String, ExpectedAttributeValue>]
    # @!attribute return_values
    #   <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appeared
    #               before they were updated with the <code>PutItem</code> request. For
    #               <code>PutItem</code>, the valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its
    #                       value is <code>NONE</code>, then nothing is returned. (This setting is the
    #                       default for <code>ReturnValues</code>.)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_OLD</code> - If <code>PutItem</code> overwrote an attribute name-value
    #                       pair, then the content of the old item is returned.</p>
    #               </li>
    #            </ul>
    #            <p>The values returned are strongly consistent.</p>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #            <note>
    #               <p>The <code>ReturnValues</code> parameter is used by several DynamoDB operations;
    #                   however, <code>PutItem</code> does not recognize any values other than
    #                       <code>NONE</code> or <code>ALL_OLD</code>.</p>
    #            </note>
    #   Enum, one of: ["NONE", "ALL_OLD", "UPDATED_OLD", "ALL_NEW", "UPDATED_NEW"]
    #   @return [String]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["INDEXES", "TOTAL", "NONE"]
    #   @return [String]
    # @!attribute return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections, if any, that were modified
    #               during the operation are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned.</p>
    #   Enum, one of: ["SIZE", "NONE"]
    #   @return [String]
    # @!attribute conditional_operator
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   Enum, one of: ["AND", "OR"]
    #   @return [String]
    # @!attribute condition_expression
    #   <p>A condition that must be satisfied in order for a conditional <code>PutItem</code>
    #               operation to succeed.</p>
    #            <p>An expression can contain any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type |
    #                           contains | begins_with | size</code>
    #                  </p>
    #                  <p>These function names are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Comparison operators: <code>= | <> |
    #               < | > | <= | >= |
    #               BETWEEN | IN </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p> Logical operators: <code>AND | OR | NOT</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information on condition expressions, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #            <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <i>ProductStatus</i> attribute was one of the following: </p>
    #            <p>
    #               <code>Available | Backordered | Discontinued</code>
    #            </p>
    #            <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #            <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #            </p>
    #            <p>You could then use these values in an expression, such as this:</p>
    #            <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #            </p>
    #            <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute return_values_on_condition_check_failure
    #   <p>An optional parameter that returns the item attributes for a <code>PutItem</code>
    #               operation that failed a condition check.</p>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #   Enum, one of: ["ALL_OLD", "NONE"]
    #   @return [String]
    class PutItemInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        item
        expected
        return_values
        return_consumed_capacity
        return_item_collection_metrics
        conditional_operator
        condition_expression
        expression_attribute_names
        expression_attribute_values
        return_values_on_condition_check_failure
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the output of a <code>PutItem</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, AttributeValue>] :attributes
    #   @option params [ConsumedCapacity] :consumed_capacity
    #   @option params [ItemCollectionMetrics] :item_collection_metrics
    # @!attribute attributes
    #   <p>The attribute values as they appeared before the <code>PutItem</code> operation, but
    #               only if <code>ReturnValues</code> is specified as <code>ALL_OLD</code> in the request.
    #               Each element consists of an attribute name and an attribute value.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the <code>PutItem</code> operation. The data returned
    #               includes the total provisioned throughput consumed, along with statistics for the table
    #               and any indexes involved in the operation. <code>ConsumedCapacity</code> is only
    #               returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [ConsumedCapacity]
    # @!attribute item_collection_metrics
    #   <p>Information about item collections, if any, that were affected by the
    #                   <code>PutItem</code> operation. <code>ItemCollectionMetrics</code> is only returned
    #               if the <code>ReturnItemCollectionMetrics</code> parameter was specified. If the table
    #               does not have any local secondary indexes, this information is not returned in the
    #               response.</p>
    #            <p>Each <code>ItemCollectionMetrics</code> element consists of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ItemCollectionKey</code> - The partition key value of the item collection.
    #                       This is the same as the partition key value of the item itself.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SizeEstimateRangeGB</code> - An estimate of item collection size, in
    #                       gigabytes. This value is a two-element array containing a lower bound and an
    #                       upper bound for the estimate. The estimate includes the size of all the items in
    #                       the table, plus the size of all attributes projected into all of the local
    #                       secondary indexes on that table. Use this estimate to measure whether a local
    #                       secondary index is approaching its size limit.</p>
    #                  <p>The estimate is subject to change over time; therefore, do not rely on the
    #                       precision or accuracy of the estimate.</p>
    #               </li>
    #            </ul>
    #   @return [ItemCollectionMetrics]
    class PutItemOutput
      include Hearth::Structure

      MEMBERS = %i[
        attributes
        consumed_capacity
        item_collection_metrics
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents a request to perform a <code>PutItem</code> operation on an item.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, AttributeValue>] :item
    # @!attribute item
    #   <p>A map of attribute name to attribute values, representing the primary key of an item
    #               to be processed by <code>PutItem</code>. All of the table's primary key attributes must
    #               be specified, and their data types must match those of the table's key schema. If any
    #               attributes are present in the item that are part of an index key schema for the table,
    #               their types must match the index key schema.</p>
    #   @return [Hash<String, AttributeValue>]
    class PutRequest
      include Hearth::Structure

      MEMBERS = %i[
        item
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the input of a <code>Query</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [String] :index_name
    #   @option params [String] :select
    #   @option params [Array<String>] :attributes_to_get
    #   @option params [Integer] :limit
    #   @option params [Boolean] :consistent_read
    #   @option params [Hash<String, Condition>] :key_conditions
    #   @option params [Hash<String, Condition>] :query_filter
    #   @option params [String] :conditional_operator
    #   @option params [Boolean] :scan_index_forward
    #   @option params [Hash<String, AttributeValue>] :exclusive_start_key
    #   @option params [String] :return_consumed_capacity
    #   @option params [String] :projection_expression
    #   @option params [String] :filter_expression
    #   @option params [String] :key_condition_expression
    #   @option params [Hash<String, String>] :expression_attribute_names
    #   @option params [Hash<String, AttributeValue>] :expression_attribute_values
    # @!attribute table_name
    #   <p>The name of the table containing the requested items.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of an index to query. This index can be any local secondary index or global
    #               secondary index on the table. Note that if you use the <code>IndexName</code> parameter,
    #               you must also provide <code>TableName.</code>
    #            </p>
    #   @return [String]
    # @!attribute select
    #   <p>The attributes to be returned in the result. You can retrieve all item attributes,
    #               specific item attributes, the count of matching items, or in the case of an index, some
    #               or all of the attributes projected into the index.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL_ATTRIBUTES</code> - Returns all of the item attributes from the
    #                       specified table or index. If you query a local secondary index, then for each
    #                       matching item in the index, DynamoDB fetches the entire item from the parent
    #                       table. If the index is configured to project all item attributes, then all of
    #                       the data can be obtained from the local secondary index, and no fetching is
    #                       required.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_PROJECTED_ATTRIBUTES</code> - Allowed only when querying an index.
    #                       Retrieves all attributes that have been projected into the index. If the index
    #                       is configured to project all attributes, this return value is equivalent to
    #                       specifying <code>ALL_ATTRIBUTES</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COUNT</code> - Returns the number of matching items, rather than the
    #                       matching items themselves. Note that this uses the same quantity of read capacity units
    #                       as getting the items, and is subject to the same item size calculations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SPECIFIC_ATTRIBUTES</code> - Returns only the attributes listed in
    #                           <code>ProjectionExpression</code>. This return value is equivalent to
    #                       specifying <code>ProjectionExpression</code> without specifying any value for
    #                           <code>Select</code>.</p>
    #                  <p>If you query or scan a local secondary index and request only attributes that
    #                       are projected into that index, the operation will read only the index and not
    #                       the table. If any of the requested attributes are not projected into the local
    #                       secondary index, DynamoDB fetches each of these attributes from the parent
    #                       table. This extra fetching incurs additional throughput cost and latency.</p>
    #                  <p>If you query or scan a global secondary index, you can only request attributes
    #                       that are projected into the index. Global secondary index queries cannot fetch
    #                       attributes from the parent table.</p>
    #               </li>
    #            </ul>
    #            <p>If neither <code>Select</code> nor <code>ProjectionExpression</code> are specified,
    #               DynamoDB defaults to <code>ALL_ATTRIBUTES</code> when accessing a table, and
    #                   <code>ALL_PROJECTED_ATTRIBUTES</code> when accessing an index. You cannot use both
    #                   <code>Select</code> and <code>ProjectionExpression</code> together in a single
    #               request, unless the value for <code>Select</code> is <code>SPECIFIC_ATTRIBUTES</code>.
    #               (This usage is equivalent to specifying <code>ProjectionExpression</code> without any
    #               value for <code>Select</code>.)</p>
    #            <note>
    #               <p>If you use the <code>ProjectionExpression</code> parameter, then the value for
    #                       <code>Select</code> can only be <code>SPECIFIC_ATTRIBUTES</code>. Any other
    #                   value for <code>Select</code> will return an error.</p>
    #            </note>
    #   Enum, one of: ["ALL_ATTRIBUTES", "ALL_PROJECTED_ATTRIBUTES", "SPECIFIC_ATTRIBUTES", "COUNT"]
    #   @return [String]
    # @!attribute attributes_to_get
    #   <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of items to evaluate (not necessarily the number of matching
    #               items). If DynamoDB processes the number of items up to the limit while processing the
    #               results, it stops the operation and returns the matching values up to that point, and a
    #               key in <code>LastEvaluatedKey</code> to apply in a subsequent operation, so that you can
    #               pick up where you left off. Also, if the processed dataset size exceeds 1 MB before
    #               DynamoDB reaches this limit, it stops the operation and returns the matching values up
    #               to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent
    #               operation to continue the operation. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html">Query and Scan</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Integer]
    # @!attribute consistent_read
    #   <p>Determines the read consistency model: If set to <code>true</code>, then the operation
    #               uses strongly consistent reads; otherwise, the operation uses eventually consistent
    #               reads.</p>
    #            <p>Strongly consistent reads are not supported on global secondary indexes. If you query
    #               a global secondary index with <code>ConsistentRead</code> set to <code>true</code>, you
    #               will receive a <code>ValidationException</code>.</p>
    #   @return [Boolean]
    # @!attribute key_conditions
    #   <p>This is a legacy parameter. Use <code>KeyConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.KeyConditions.html">KeyConditions</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Hash<String, Condition>]
    # @!attribute query_filter
    #   <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.QueryFilter.html">QueryFilter</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Hash<String, Condition>]
    # @!attribute conditional_operator
    #   <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   Enum, one of: ["AND", "OR"]
    #   @return [String]
    # @!attribute scan_index_forward
    #   <p>Specifies the order for index traversal: If <code>true</code> (default), the traversal
    #               is performed in ascending order; if <code>false</code>, the traversal is performed in
    #               descending order. </p>
    #            <p>Items with the same partition key value are stored in sorted order by sort key. If the
    #               sort key data type is Number, the results are stored in numeric order. For type String,
    #               the results are stored in order of UTF-8 bytes. For type Binary, DynamoDB treats each
    #               byte of the binary data as unsigned.</p>
    #            <p>If <code>ScanIndexForward</code> is <code>true</code>, DynamoDB returns the results in
    #               the order in which they are stored (by sort key value). This is the default behavior. If
    #                   <code>ScanIndexForward</code> is <code>false</code>, DynamoDB reads the results in
    #               reverse order by sort key value, and then returns the results to the client.</p>
    #   @return [Boolean]
    # @!attribute exclusive_start_key
    #   <p>The primary key of the first item that this operation will evaluate. Use the value
    #               that was returned for <code>LastEvaluatedKey</code> in the previous operation.</p>
    #            <p>The data type for <code>ExclusiveStartKey</code> must be String, Number, or Binary. No
    #               set data types are allowed.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["INDEXES", "TOTAL", "NONE"]
    #   @return [String]
    # @!attribute projection_expression
    #   <p>A string that identifies one or more attributes to retrieve from the table. These
    #               attributes can include scalars, sets, or elements of a JSON document. The attributes in
    #               the expression must be separated by commas.</p>
    #            <p>If no attribute names are specified, then all attributes will be returned. If any of
    #               the requested attributes are not found, they will not appear in the result.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Accessing Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute filter_expression
    #   <p>A string that contains conditions that DynamoDB applies after the <code>Query</code>
    #               operation, but before the data is returned to you. Items that do not satisfy the
    #                   <code>FilterExpression</code> criteria are not returned.</p>
    #            <p>A <code>FilterExpression</code> does not allow key attributes. You cannot define a
    #               filter expression based on a partition key or a sort key.</p>
    #            <note>
    #               <p>A <code>FilterExpression</code> is applied after the items have already been read;
    #                   the process of filtering does not consume any additional read capacity units.</p>
    #            </note>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Query.FilterExpression">Filter Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute key_condition_expression
    #   <p>The condition that specifies the key values for items to be retrieved by the
    #                   <code>Query</code> action.</p>
    #            <p>The condition must perform an equality test on a single partition key value.</p>
    #            <p>The condition can optionally perform one of several comparison tests on a single sort
    #               key value. This allows <code>Query</code> to retrieve one item with a given partition
    #               key value and sort key value, or several items that have the same partition key value
    #               but different sort key values.</p>
    #            <p>The partition key equality test is required, and must be specified in the following
    #               format:</p>
    #            <p>
    #               <code>partitionKeyName</code>
    #               <i>=</i>
    #               <code>:partitionkeyval</code>
    #            </p>
    #            <p>If you also want to provide a condition for the sort key, it must be combined using
    #                   <code>AND</code> with the condition for the sort key. Following is an example, using
    #               the <b>=</b> comparison operator for the sort key:</p>
    #            <p>
    #               <code>partitionKeyName</code>
    #               <code>=</code>
    #               <code>:partitionkeyval</code>
    #               <code>AND</code>
    #               <code>sortKeyName</code>
    #               <code>=</code>
    #               <code>:sortkeyval</code>
    #            </p>
    #            <p>Valid comparisons for the sort key condition are as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>sortKeyName</code>
    #                     <code>=</code>
    #                     <code>:sortkeyval</code> - true if the sort key value is equal to
    #                           <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sortKeyName</code>
    #                     <code><</code>
    #                     <code>:sortkeyval</code> - true if the sort key value is less than
    #                           <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sortKeyName</code>
    #                     <code><=</code>
    #                     <code>:sortkeyval</code> - true if the sort key value is less than or equal to
    #                           <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sortKeyName</code>
    #                     <code>></code>
    #                     <code>:sortkeyval</code> - true if the sort key value is greater than
    #                           <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sortKeyName</code>
    #                     <code>>= </code>
    #                     <code>:sortkeyval</code> - true if the sort key value is greater than or equal
    #                       to <code>:sortkeyval</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sortKeyName</code>
    #                     <code>BETWEEN</code>
    #                     <code>:sortkeyval1</code>
    #                     <code>AND</code>
    #                     <code>:sortkeyval2</code> - true if the sort key value is greater than or equal
    #                       to <code>:sortkeyval1</code>, and less than or equal to
    #                           <code>:sortkeyval2</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>begins_with (</code>
    #                     <code>sortKeyName</code>, <code>:sortkeyval</code>
    #                     <code>)</code> - true if the sort key value begins with a particular operand.
    #                       (You cannot use this function with a sort key that is of type Number.) Note that
    #                       the function name <code>begins_with</code> is case-sensitive.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <code>ExpressionAttributeValues</code> parameter to replace tokens such as
    #                   <code>:partitionval</code> and <code>:sortval</code> with actual values at
    #               runtime.</p>
    #            <p>You can optionally use the <code>ExpressionAttributeNames</code> parameter to replace
    #               the names of the partition key and sort key with placeholder tokens. This option might
    #               be necessary if an attribute name conflicts with a DynamoDB reserved word. For example,
    #               the following <code>KeyConditionExpression</code> parameter causes an error because
    #                   <i>Size</i> is a reserved word:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Size = :myval</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>To work around this, define a placeholder (such a <code>#S</code>) to represent the
    #               attribute name <i>Size</i>. <code>KeyConditionExpression</code> then is as
    #               follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#S = :myval</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For a list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a>
    #               in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #            <p>For more information on <code>ExpressionAttributeNames</code> and
    #                   <code>ExpressionAttributeValues</code>, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ExpressionPlaceholders.html">Using
    #                   Placeholders for Attribute Names and Values</a> in the <i>Amazon DynamoDB
    #                   Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #            <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <i>ProductStatus</i> attribute was one of the following: </p>
    #            <p>
    #               <code>Available | Backordered | Discontinued</code>
    #            </p>
    #            <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #            <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #            </p>
    #            <p>You could then use these values in an expression, such as this:</p>
    #            <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #            </p>
    #            <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, AttributeValue>]
    class QueryInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        index_name
        select
        attributes_to_get
        limit
        consistent_read
        key_conditions
        query_filter
        conditional_operator
        scan_index_forward
        exclusive_start_key
        return_consumed_capacity
        projection_expression
        filter_expression
        key_condition_expression
        expression_attribute_names
        expression_attribute_values
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the output of a <code>Query</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<Hash<String, AttributeValue>>] :items
    #   @option params [Integer] :count (0)
    #   @option params [Integer] :scanned_count (0)
    #   @option params [Hash<String, AttributeValue>] :last_evaluated_key
    #   @option params [ConsumedCapacity] :consumed_capacity
    # @!attribute items
    #   <p>An array of item attributes that match the query criteria. Each element in this array
    #               consists of an attribute name and the value for that attribute.</p>
    #   @return [Array<Hash<String, AttributeValue>>]
    # @!attribute count
    #   <p>The number of items in the response.</p>
    #            <p>If you used a <code>QueryFilter</code> in the request, then <code>Count</code> is the
    #               number of items returned after the filter was applied, and <code>ScannedCount</code> is
    #               the number of matching items before the filter was applied.</p>
    #            <p>If you did not use a filter in the request, then <code>Count</code> and
    #                   <code>ScannedCount</code> are the same.</p>
    #   @return [Integer]
    # @!attribute scanned_count
    #   <p>The number of items evaluated, before any <code>QueryFilter</code> is applied. A high
    #                   <code>ScannedCount</code> value with few, or no, <code>Count</code> results
    #               indicates an inefficient <code>Query</code> operation. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count">Count and
    #                   ScannedCount</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #            <p>If you did not use a filter in the request, then <code>ScannedCount</code> is the same
    #               as <code>Count</code>.</p>
    #   @return [Integer]
    # @!attribute last_evaluated_key
    #   <p>The primary key of the item where the operation stopped, inclusive of the previous
    #               result set. Use this value to start a new operation, excluding this value in the new
    #               request.</p>
    #            <p>If <code>LastEvaluatedKey</code> is empty, then the "last page" of results has been
    #               processed and there is no more data to be retrieved.</p>
    #            <p>If <code>LastEvaluatedKey</code> is not empty, it does not necessarily mean that there
    #               is more data in the result set. The only way to know when you have reached the end of
    #               the result set is when <code>LastEvaluatedKey</code> is empty.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the <code>Query</code> operation. The data returned
    #               includes the total provisioned throughput consumed, along with statistics for the table
    #               and any indexes involved in the operation. <code>ConsumedCapacity</code> is only
    #               returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughputIntro.html">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [ConsumedCapacity]
    class QueryOutput
      include Hearth::Structure

      MEMBERS = %i[
        items
        count
        scanned_count
        last_evaluated_key
        consumed_capacity
      ].freeze

      attr_accessor(*MEMBERS)

      private

      def _defaults
        {
          count: 0,
          scanned_count: 0
        }
      end
    end

    # <p>Represents the properties of a replica.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :region_name
    # @!attribute region_name
    #   <p>The Region where the replica needs to be created.</p>
    #   @return [String]
    class Replica
      include Hearth::Structure

      MEMBERS = %i[
        region_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The specified replica is already part of the global table.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class ReplicaAlreadyExistsException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the auto scaling settings of the replica.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :region_name
    #   @option params [Array<ReplicaGlobalSecondaryIndexAutoScalingDescription>] :global_secondary_indexes
    #   @option params [AutoScalingSettingsDescription] :replica_provisioned_read_capacity_auto_scaling_settings
    #   @option params [AutoScalingSettingsDescription] :replica_provisioned_write_capacity_auto_scaling_settings
    #   @option params [String] :replica_status
    # @!attribute region_name
    #   <p>The Region where the replica exists.</p>
    #   @return [String]
    # @!attribute global_secondary_indexes
    #   <p>Replica-specific global secondary index auto scaling settings.</p>
    #   @return [Array<ReplicaGlobalSecondaryIndexAutoScalingDescription>]
    # @!attribute replica_provisioned_read_capacity_auto_scaling_settings
    #   <p>Represents the auto scaling settings for a global table or global secondary
    #               index.</p>
    #   @return [AutoScalingSettingsDescription]
    # @!attribute replica_provisioned_write_capacity_auto_scaling_settings
    #   <p>Represents the auto scaling settings for a global table or global secondary
    #               index.</p>
    #   @return [AutoScalingSettingsDescription]
    # @!attribute replica_status
    #   <p>The current state of the replica:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The replica is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The replica is being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The replica is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The replica is ready for use.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"]
    #   @return [String]
    class ReplicaAutoScalingDescription
      include Hearth::Structure

      MEMBERS = %i[
        region_name
        global_secondary_indexes
        replica_provisioned_read_capacity_auto_scaling_settings
        replica_provisioned_write_capacity_auto_scaling_settings
        replica_status
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the auto scaling settings of a replica that will be modified.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :region_name
    #   @option params [Array<ReplicaGlobalSecondaryIndexAutoScalingUpdate>] :replica_global_secondary_index_updates
    #   @option params [AutoScalingSettingsUpdate] :replica_provisioned_read_capacity_auto_scaling_update
    # @!attribute region_name
    #   <p>The Region where the replica exists.</p>
    #   @return [String]
    # @!attribute replica_global_secondary_index_updates
    #   <p>Represents the auto scaling settings of global secondary indexes that will be
    #               modified.</p>
    #   @return [Array<ReplicaGlobalSecondaryIndexAutoScalingUpdate>]
    # @!attribute replica_provisioned_read_capacity_auto_scaling_update
    #   <p>Represents the auto scaling settings to be modified for a global table or global
    #               secondary index.</p>
    #   @return [AutoScalingSettingsUpdate]
    class ReplicaAutoScalingUpdate
      include Hearth::Structure

      MEMBERS = %i[
        region_name
        replica_global_secondary_index_updates
        replica_provisioned_read_capacity_auto_scaling_update
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Contains the details of the replica.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :region_name
    #   @option params [String] :replica_status
    #   @option params [String] :replica_status_description
    #   @option params [String] :replica_status_percent_progress
    #   @option params [String] :kms_master_key_id
    #   @option params [ProvisionedThroughputOverride] :provisioned_throughput_override
    #   @option params [Array<ReplicaGlobalSecondaryIndexDescription>] :global_secondary_indexes
    #   @option params [Time] :replica_inaccessible_date_time
    #   @option params [TableClassSummary] :replica_table_class_summary
    # @!attribute region_name
    #   <p>The name of the Region.</p>
    #   @return [String]
    # @!attribute replica_status
    #   <p>The current state of the replica:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The replica is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The replica is being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The replica is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The replica is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGION_DISABLED</code> - The replica is inaccessible because the Amazon Web Services Region has been disabled.</p>
    #                  <note>
    #                     <p>If the Amazon Web Services Region remains inaccessible for more than 20
    #                           hours, DynamoDB will remove this replica from the replication
    #                           group. The replica will not be deleted and replication will stop from and to
    #                           this region.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACCESSIBLE_ENCRYPTION_CREDENTIALS </code> - The KMS key
    #                       used to encrypt the table is inaccessible.</p>
    #                  <note>
    #                     <p>If the KMS key remains inaccessible for more than 20 hours,
    #                               DynamoDB will remove this replica from the replication group.
    #                           The replica will not be deleted and replication will stop from and to this
    #                           region.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #   Enum, one of: ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"]
    #   @return [String]
    # @!attribute replica_status_description
    #   <p>Detailed information about the replica status.</p>
    #   @return [String]
    # @!attribute replica_status_percent_progress
    #   <p>Specifies the progress of a Create, Update, or Delete action on the replica as a
    #               percentage.</p>
    #   @return [String]
    # @!attribute kms_master_key_id
    #   <p>The KMS key of the replica that will be used for KMS
    #               encryption.</p>
    #   @return [String]
    # @!attribute provisioned_throughput_override
    #   <p>Replica-specific provisioned throughput. If not described, uses the source table's
    #               provisioned throughput settings.</p>
    #   @return [ProvisionedThroughputOverride]
    # @!attribute global_secondary_indexes
    #   <p>Replica-specific global secondary index settings.</p>
    #   @return [Array<ReplicaGlobalSecondaryIndexDescription>]
    # @!attribute replica_inaccessible_date_time
    #   <p>The time at which the replica was first detected as inaccessible. To determine cause
    #               of inaccessibility check the <code>ReplicaStatus</code> property.</p>
    #   @return [Time]
    # @!attribute replica_table_class_summary
    #   <p>Contains details of the table class.</p>
    #   @return [TableClassSummary]
    class ReplicaDescription
      include Hearth::Structure

      MEMBERS = %i[
        region_name
        replica_status
        replica_status_description
        replica_status_percent_progress
        kms_master_key_id
        provisioned_throughput_override
        global_secondary_indexes
        replica_inaccessible_date_time
        replica_table_class_summary
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the properties of a replica global secondary index.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :index_name
    #   @option params [ProvisionedThroughputOverride] :provisioned_throughput_override
    # @!attribute index_name
    #   <p>The name of the global secondary index.</p>
    #   @return [String]
    # @!attribute provisioned_throughput_override
    #   <p>Replica table GSI-specific provisioned throughput. If not specified, uses the source
    #               table GSI's read capacity settings.</p>
    #   @return [ProvisionedThroughputOverride]
    class ReplicaGlobalSecondaryIndex
      include Hearth::Structure

      MEMBERS = %i[
        index_name
        provisioned_throughput_override
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the auto scaling configuration for a replica global secondary index.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :index_name
    #   @option params [String] :index_status
    #   @option params [AutoScalingSettingsDescription] :provisioned_read_capacity_auto_scaling_settings
    #   @option params [AutoScalingSettingsDescription] :provisioned_write_capacity_auto_scaling_settings
    # @!attribute index_name
    #   <p>The name of the global secondary index.</p>
    #   @return [String]
    # @!attribute index_status
    #   <p>The current state of the replica global secondary index:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The index is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The table/index configuration is being updated. The
    #                       table/index remains available for data operations when
    #                       <code>UPDATING</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The index is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The index is ready for use.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #   @return [String]
    # @!attribute provisioned_read_capacity_auto_scaling_settings
    #   <p>Represents the auto scaling settings for a global table or global secondary
    #               index.</p>
    #   @return [AutoScalingSettingsDescription]
    # @!attribute provisioned_write_capacity_auto_scaling_settings
    #   <p>Represents the auto scaling settings for a global table or global secondary
    #               index.</p>
    #   @return [AutoScalingSettingsDescription]
    class ReplicaGlobalSecondaryIndexAutoScalingDescription
      include Hearth::Structure

      MEMBERS = %i[
        index_name
        index_status
        provisioned_read_capacity_auto_scaling_settings
        provisioned_write_capacity_auto_scaling_settings
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the auto scaling settings of a global secondary index for a replica that
    #             will be modified.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :index_name
    #   @option params [AutoScalingSettingsUpdate] :provisioned_read_capacity_auto_scaling_update
    # @!attribute index_name
    #   <p>The name of the global secondary index.</p>
    #   @return [String]
    # @!attribute provisioned_read_capacity_auto_scaling_update
    #   <p>Represents the auto scaling settings to be modified for a global table or global
    #               secondary index.</p>
    #   @return [AutoScalingSettingsUpdate]
    class ReplicaGlobalSecondaryIndexAutoScalingUpdate
      include Hearth::Structure

      MEMBERS = %i[
        index_name
        provisioned_read_capacity_auto_scaling_update
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the properties of a replica global secondary index.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :index_name
    #   @option params [ProvisionedThroughputOverride] :provisioned_throughput_override
    # @!attribute index_name
    #   <p>The name of the global secondary index.</p>
    #   @return [String]
    # @!attribute provisioned_throughput_override
    #   <p>If not described, uses the source table GSI's read capacity settings.</p>
    #   @return [ProvisionedThroughputOverride]
    class ReplicaGlobalSecondaryIndexDescription
      include Hearth::Structure

      MEMBERS = %i[
        index_name
        provisioned_throughput_override
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the properties of a global secondary index.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :index_name
    #   @option params [String] :index_status
    #   @option params [Integer] :provisioned_read_capacity_units
    #   @option params [AutoScalingSettingsDescription] :provisioned_read_capacity_auto_scaling_settings
    #   @option params [Integer] :provisioned_write_capacity_units
    #   @option params [AutoScalingSettingsDescription] :provisioned_write_capacity_auto_scaling_settings
    # @!attribute index_name
    #   <p>The name of the global secondary index. The name must be unique among all other
    #               indexes on this table.</p>
    #   @return [String]
    # @!attribute index_status
    #   <p> The current status of the global secondary index:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The global secondary index is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The global secondary index is being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The global secondary index is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The global secondary index is ready for use.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "ACTIVE"]
    #   @return [String]
    # @!attribute provisioned_read_capacity_units
    #   <p>The maximum number of strongly consistent reads consumed per second before DynamoDB
    #               returns a <code>ThrottlingException</code>.</p>
    #   @return [Integer]
    # @!attribute provisioned_read_capacity_auto_scaling_settings
    #   <p>Auto scaling settings for a global secondary index replica's read capacity
    #               units.</p>
    #   @return [AutoScalingSettingsDescription]
    # @!attribute provisioned_write_capacity_units
    #   <p>The maximum number of writes consumed per second before DynamoDB returns a
    #                   <code>ThrottlingException</code>.</p>
    #   @return [Integer]
    # @!attribute provisioned_write_capacity_auto_scaling_settings
    #   <p>Auto scaling settings for a global secondary index replica's write capacity
    #               units.</p>
    #   @return [AutoScalingSettingsDescription]
    class ReplicaGlobalSecondaryIndexSettingsDescription
      include Hearth::Structure

      MEMBERS = %i[
        index_name
        index_status
        provisioned_read_capacity_units
        provisioned_read_capacity_auto_scaling_settings
        provisioned_write_capacity_units
        provisioned_write_capacity_auto_scaling_settings
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the settings of a global secondary index for a global table that will be
    #             modified.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :index_name
    #   @option params [Integer] :provisioned_read_capacity_units
    #   @option params [AutoScalingSettingsUpdate] :provisioned_read_capacity_auto_scaling_settings_update
    # @!attribute index_name
    #   <p>The name of the global secondary index. The name must be unique among all other
    #               indexes on this table.</p>
    #   @return [String]
    # @!attribute provisioned_read_capacity_units
    #   <p>The maximum number of strongly consistent reads consumed per second before DynamoDB
    #               returns a <code>ThrottlingException</code>.</p>
    #   @return [Integer]
    # @!attribute provisioned_read_capacity_auto_scaling_settings_update
    #   <p>Auto scaling settings for managing a global secondary index replica's read capacity
    #               units.</p>
    #   @return [AutoScalingSettingsUpdate]
    class ReplicaGlobalSecondaryIndexSettingsUpdate
      include Hearth::Structure

      MEMBERS = %i[
        index_name
        provisioned_read_capacity_units
        provisioned_read_capacity_auto_scaling_settings_update
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The specified replica is no longer part of the global table.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class ReplicaNotFoundException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the properties of a replica.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :region_name
    #   @option params [String] :replica_status
    #   @option params [BillingModeSummary] :replica_billing_mode_summary
    #   @option params [Integer] :replica_provisioned_read_capacity_units
    #   @option params [AutoScalingSettingsDescription] :replica_provisioned_read_capacity_auto_scaling_settings
    #   @option params [Integer] :replica_provisioned_write_capacity_units
    #   @option params [AutoScalingSettingsDescription] :replica_provisioned_write_capacity_auto_scaling_settings
    #   @option params [Array<ReplicaGlobalSecondaryIndexSettingsDescription>] :replica_global_secondary_index_settings
    #   @option params [TableClassSummary] :replica_table_class_summary
    # @!attribute region_name
    #   <p>The Region name of the replica.</p>
    #   @return [String]
    # @!attribute replica_status
    #   <p>The current state of the Region:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The Region is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The Region is being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The Region is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The Region is ready for use.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["CREATING", "CREATION_FAILED", "UPDATING", "DELETING", "ACTIVE", "REGION_DISABLED", "INACCESSIBLE_ENCRYPTION_CREDENTIALS"]
    #   @return [String]
    # @!attribute replica_billing_mode_summary
    #   <p>The read/write capacity mode of the replica.</p>
    #   @return [BillingModeSummary]
    # @!attribute replica_provisioned_read_capacity_units
    #   <p>The maximum number of strongly consistent reads consumed per second before DynamoDB
    #               returns a <code>ThrottlingException</code>. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB
    #                   Developer Guide</i>. </p>
    #   @return [Integer]
    # @!attribute replica_provisioned_read_capacity_auto_scaling_settings
    #   <p>Auto scaling settings for a global table replica's read capacity units.</p>
    #   @return [AutoScalingSettingsDescription]
    # @!attribute replica_provisioned_write_capacity_units
    #   <p>The maximum number of writes consumed per second before DynamoDB returns a
    #                   <code>ThrottlingException</code>. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB
    #                   Developer Guide</i>.</p>
    #   @return [Integer]
    # @!attribute replica_provisioned_write_capacity_auto_scaling_settings
    #   <p>Auto scaling settings for a global table replica's write capacity units.</p>
    #   @return [AutoScalingSettingsDescription]
    # @!attribute replica_global_secondary_index_settings
    #   <p>Replica global secondary index settings for the global table.</p>
    #   @return [Array<ReplicaGlobalSecondaryIndexSettingsDescription>]
    # @!attribute replica_table_class_summary
    #   <p>Contains details of the table class.</p>
    #   @return [TableClassSummary]
    class ReplicaSettingsDescription
      include Hearth::Structure

      MEMBERS = %i[
        region_name
        replica_status
        replica_billing_mode_summary
        replica_provisioned_read_capacity_units
        replica_provisioned_read_capacity_auto_scaling_settings
        replica_provisioned_write_capacity_units
        replica_provisioned_write_capacity_auto_scaling_settings
        replica_global_secondary_index_settings
        replica_table_class_summary
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the settings for a global table in a Region that will be modified.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :region_name
    #   @option params [Integer] :replica_provisioned_read_capacity_units
    #   @option params [AutoScalingSettingsUpdate] :replica_provisioned_read_capacity_auto_scaling_settings_update
    #   @option params [Array<ReplicaGlobalSecondaryIndexSettingsUpdate>] :replica_global_secondary_index_settings_update
    #   @option params [String] :replica_table_class
    # @!attribute region_name
    #   <p>The Region of the replica to be added.</p>
    #   @return [String]
    # @!attribute replica_provisioned_read_capacity_units
    #   <p>The maximum number of strongly consistent reads consumed per second before DynamoDB
    #               returns a <code>ThrottlingException</code>. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/WorkingWithTables.html#ProvisionedThroughput">Specifying Read and Write Requirements</a> in the <i>Amazon DynamoDB
    #                   Developer Guide</i>. </p>
    #   @return [Integer]
    # @!attribute replica_provisioned_read_capacity_auto_scaling_settings_update
    #   <p>Auto scaling settings for managing a global table replica's read capacity
    #               units.</p>
    #   @return [AutoScalingSettingsUpdate]
    # @!attribute replica_global_secondary_index_settings_update
    #   <p>Represents the settings of a global secondary index for a global table that will be
    #               modified.</p>
    #   @return [Array<ReplicaGlobalSecondaryIndexSettingsUpdate>]
    # @!attribute replica_table_class
    #   <p>Replica-specific table class. If not specified, uses the source table's table
    #               class.</p>
    #   Enum, one of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #   @return [String]
    class ReplicaSettingsUpdate
      include Hearth::Structure

      MEMBERS = %i[
        region_name
        replica_provisioned_read_capacity_units
        replica_provisioned_read_capacity_auto_scaling_settings_update
        replica_global_secondary_index_settings_update
        replica_table_class
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ReplicaStatus
    module ReplicaStatus
      CREATING = "CREATING"

      CREATION_FAILED = "CREATION_FAILED"

      UPDATING = "UPDATING"

      DELETING = "DELETING"

      ACTIVE = "ACTIVE"

      REGION_DISABLED = "REGION_DISABLED"

      INACCESSIBLE_ENCRYPTION_CREDENTIALS = "INACCESSIBLE_ENCRYPTION_CREDENTIALS"
    end

    # <p>Represents one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>A new replica to be added to an existing global table.</p>
    #             </li>
    #             <li>
    #                <p>New parameters for an existing replica.</p>
    #             </li>
    #             <li>
    #                <p>An existing replica to be removed from an existing global table.</p>
    #             </li>
    #          </ul>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [CreateReplicaAction] :create
    #   @option params [DeleteReplicaAction] :delete
    # @!attribute create
    #   <p>The parameters required for creating a replica on an existing global table.</p>
    #   @return [CreateReplicaAction]
    # @!attribute delete
    #   <p>The name of the existing replica to be removed.</p>
    #   @return [DeleteReplicaAction]
    class ReplicaUpdate
      include Hearth::Structure

      MEMBERS = %i[
        create
        delete
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>A new replica to be added to an existing regional table or global table. This
    #                     request invokes the <code>CreateTableReplica</code> action in the destination
    #                     Region.</p>
    #             </li>
    #             <li>
    #                <p>New parameters for an existing replica. This request invokes the
    #                         <code>UpdateTable</code> action in the destination Region.</p>
    #             </li>
    #             <li>
    #                <p>An existing replica to be deleted. The request invokes the
    #                         <code>DeleteTableReplica</code> action in the destination Region, deleting
    #                     the replica and all if its items in the destination Region.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>When you manually remove a table or global table replica, you do not automatically
    #                 remove any associated scalable targets, scaling policies, or CloudWatch
    #                 alarms.</p>
    #          </note>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [CreateReplicationGroupMemberAction] :create
    #   @option params [UpdateReplicationGroupMemberAction] :update
    #   @option params [DeleteReplicationGroupMemberAction] :delete
    # @!attribute create
    #   <p>The parameters required for creating a replica for the table.</p>
    #   @return [CreateReplicationGroupMemberAction]
    # @!attribute update
    #   <p>The parameters required for updating a replica for the table.</p>
    #   @return [UpdateReplicationGroupMemberAction]
    # @!attribute delete
    #   <p>The parameters required for deleting a replica for the table.</p>
    #   @return [DeleteReplicationGroupMemberAction]
    class ReplicationGroupUpdate
      include Hearth::Structure

      MEMBERS = %i[
        create
        update
        delete
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Throughput exceeds the current throughput quota for your account. Please contact
    #                 <a href="https://aws.amazon.com/support">Amazon Web Services Support</a> to request a
    #             quota increase.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class RequestLimitExceeded
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The operation conflicts with the resource's availability. For example, you
    #             attempted to recreate an existing table, or tried to delete a table currently in the
    #                 <code>CREATING</code> state.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   <p>The resource which is being attempted to be changed is in use.</p>
    #   @return [String]
    class ResourceInUseException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The operation tried to access a nonexistent table or index. The resource might not
    #             be specified correctly, or its status might not be <code>ACTIVE</code>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   <p>The resource which is being requested does not exist.</p>
    #   @return [String]
    class ResourceNotFoundException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Contains details for the restore.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :source_backup_arn
    #   @option params [String] :source_table_arn
    #   @option params [Time] :restore_date_time
    #   @option params [Boolean] :restore_in_progress
    # @!attribute source_backup_arn
    #   <p>The Amazon Resource Name (ARN) of the backup from which the table was restored.</p>
    #   @return [String]
    # @!attribute source_table_arn
    #   <p>The ARN of the source table of the backup that is being restored.</p>
    #   @return [String]
    # @!attribute restore_date_time
    #   <p>Point in time or source backup time.</p>
    #   @return [Time]
    # @!attribute restore_in_progress
    #   <p>Indicates if a restore is in progress or not.</p>
    #   @return [Boolean]
    class RestoreSummary
      include Hearth::Structure

      MEMBERS = %i[
        source_backup_arn
        source_table_arn
        restore_date_time
        restore_in_progress
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :target_table_name
    #   @option params [String] :backup_arn
    #   @option params [String] :billing_mode_override
    #   @option params [Array<GlobalSecondaryIndex>] :global_secondary_index_override
    #   @option params [Array<LocalSecondaryIndex>] :local_secondary_index_override
    #   @option params [ProvisionedThroughput] :provisioned_throughput_override
    #   @option params [SSESpecification] :sse_specification_override
    # @!attribute target_table_name
    #   <p>The name of the new table to which the backup must be restored.</p>
    #   @return [String]
    # @!attribute backup_arn
    #   <p>The Amazon Resource Name (ARN) associated with the backup.</p>
    #   @return [String]
    # @!attribute billing_mode_override
    #   <p>The billing mode of the restored table.</p>
    #   Enum, one of: ["PROVISIONED", "PAY_PER_REQUEST"]
    #   @return [String]
    # @!attribute global_secondary_index_override
    #   <p>List of global secondary indexes for the restored table. The indexes provided should
    #               match existing secondary indexes. You can choose to exclude some or all of the indexes
    #               at the time of restore.</p>
    #   @return [Array<GlobalSecondaryIndex>]
    # @!attribute local_secondary_index_override
    #   <p>List of local secondary indexes for the restored table. The indexes provided should
    #               match existing secondary indexes. You can choose to exclude some or all of the indexes
    #               at the time of restore.</p>
    #   @return [Array<LocalSecondaryIndex>]
    # @!attribute provisioned_throughput_override
    #   <p>Provisioned throughput settings for the restored table.</p>
    #   @return [ProvisionedThroughput]
    # @!attribute sse_specification_override
    #   <p>The new server-side encryption settings for the restored table.</p>
    #   @return [SSESpecification]
    class RestoreTableFromBackupInput
      include Hearth::Structure

      MEMBERS = %i[
        target_table_name
        backup_arn
        billing_mode_override
        global_secondary_index_override
        local_secondary_index_override
        provisioned_throughput_override
        sse_specification_override
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [TableDescription] :table_description
    # @!attribute table_description
    #   <p>The description of the table created from an existing backup.</p>
    #   @return [TableDescription]
    class RestoreTableFromBackupOutput
      include Hearth::Structure

      MEMBERS = %i[
        table_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :source_table_arn
    #   @option params [String] :source_table_name
    #   @option params [String] :target_table_name
    #   @option params [Boolean] :use_latest_restorable_time
    #   @option params [Time] :restore_date_time
    #   @option params [String] :billing_mode_override
    #   @option params [Array<GlobalSecondaryIndex>] :global_secondary_index_override
    #   @option params [Array<LocalSecondaryIndex>] :local_secondary_index_override
    #   @option params [ProvisionedThroughput] :provisioned_throughput_override
    #   @option params [SSESpecification] :sse_specification_override
    # @!attribute source_table_arn
    #   <p>The DynamoDB table that will be restored. This value is an Amazon Resource Name
    #               (ARN).</p>
    #   @return [String]
    # @!attribute source_table_name
    #   <p>Name of the source table that is being restored.</p>
    #   @return [String]
    # @!attribute target_table_name
    #   <p>The name of the new table to which it must be restored to.</p>
    #   @return [String]
    # @!attribute use_latest_restorable_time
    #   <p>Restore the table to the latest possible time. <code>LatestRestorableDateTime</code>
    #               is typically 5 minutes before the current time. </p>
    #   @return [Boolean]
    # @!attribute restore_date_time
    #   <p>Time in the past to restore the table to.</p>
    #   @return [Time]
    # @!attribute billing_mode_override
    #   <p>The billing mode of the restored table.</p>
    #   Enum, one of: ["PROVISIONED", "PAY_PER_REQUEST"]
    #   @return [String]
    # @!attribute global_secondary_index_override
    #   <p>List of global secondary indexes for the restored table. The indexes provided should
    #               match existing secondary indexes. You can choose to exclude some or all of the indexes
    #               at the time of restore.</p>
    #   @return [Array<GlobalSecondaryIndex>]
    # @!attribute local_secondary_index_override
    #   <p>List of local secondary indexes for the restored table. The indexes provided should
    #               match existing secondary indexes. You can choose to exclude some or all of the indexes
    #               at the time of restore.</p>
    #   @return [Array<LocalSecondaryIndex>]
    # @!attribute provisioned_throughput_override
    #   <p>Provisioned throughput settings for the restored table.</p>
    #   @return [ProvisionedThroughput]
    # @!attribute sse_specification_override
    #   <p>The new server-side encryption settings for the restored table.</p>
    #   @return [SSESpecification]
    class RestoreTableToPointInTimeInput
      include Hearth::Structure

      MEMBERS = %i[
        source_table_arn
        source_table_name
        target_table_name
        use_latest_restorable_time
        restore_date_time
        billing_mode_override
        global_secondary_index_override
        local_secondary_index_override
        provisioned_throughput_override
        sse_specification_override
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [TableDescription] :table_description
    # @!attribute table_description
    #   <p>Represents the properties of a table.</p>
    #   @return [TableDescription]
    class RestoreTableToPointInTimeOutput
      include Hearth::Structure

      MEMBERS = %i[
        table_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for ReturnConsumedCapacity
    # <p>Determines the level of detail about either provisioned or on-demand throughput
    #             consumption that is returned in the response:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>INDEXES</code> - The response includes the aggregate
    #                         <code>ConsumedCapacity</code> for the operation, together with
    #                         <code>ConsumedCapacity</code> for each table and secondary index that was
    #                     accessed.</p>
    #                <p>Note that some operations, such as <code>GetItem</code> and
    #                         <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                     specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                     information for table(s).</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>TOTAL</code> - The response includes only the aggregate
    #                         <code>ConsumedCapacity</code> for the operation.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                     response.</p>
    #             </li>
    #          </ul>
    module ReturnConsumedCapacity
      INDEXES = "INDEXES"

      TOTAL = "TOTAL"

      NONE = "NONE"
    end

    # Enum constants for ReturnItemCollectionMetrics
    module ReturnItemCollectionMetrics
      SIZE = "SIZE"

      NONE = "NONE"
    end

    # Enum constants for ReturnValue
    module ReturnValue
      NONE = "NONE"

      ALL_OLD = "ALL_OLD"

      UPDATED_OLD = "UPDATED_OLD"

      ALL_NEW = "ALL_NEW"

      UPDATED_NEW = "UPDATED_NEW"
    end

    # Enum constants for ReturnValuesOnConditionCheckFailure
    module ReturnValuesOnConditionCheckFailure
      ALL_OLD = "ALL_OLD"

      NONE = "NONE"
    end

    # <p> The S3 bucket that is being imported from. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :s3_bucket_owner
    #   @option params [String] :s3_bucket
    #   @option params [String] :s3_key_prefix
    # @!attribute s3_bucket_owner
    #   <p> The account number of the S3 bucket that is being imported from. If the bucket is
    #               owned by the requester this is optional. </p>
    #   @return [String]
    # @!attribute s3_bucket
    #   <p> The S3 bucket that is being imported from. </p>
    #   @return [String]
    # @!attribute s3_key_prefix
    #   <p> The key prefix shared by all S3 Objects that are being imported. </p>
    #   @return [String]
    class S3BucketSource
      include Hearth::Structure

      MEMBERS = %i[
        s3_bucket_owner
        s3_bucket
        s3_key_prefix
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for S3SseAlgorithm
    module S3SseAlgorithm
      AES256 = "AES256"

      KMS = "KMS"
    end

    # <p>The description of the server-side encryption status on the specified table.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :status
    #   @option params [String] :sse_type
    #   @option params [String] :kms_master_key_arn
    #   @option params [Time] :inaccessible_encryption_date_time
    # @!attribute status
    #   <p>Represents the current state of server-side encryption. The only supported values
    #               are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> - Server-side encryption is enabled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - Server-side encryption is being updated.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "UPDATING"]
    #   @return [String]
    # @!attribute sse_type
    #   <p>Server-side encryption type. The only supported value is:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>KMS</code> - Server-side encryption that uses Key Management Service. The
    #                       key is stored in your account and is managed by KMS (KMS charges apply).</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["AES256", "KMS"]
    #   @return [String]
    # @!attribute kms_master_key_arn
    #   <p>The KMS key ARN used for the KMS encryption.</p>
    #   @return [String]
    # @!attribute inaccessible_encryption_date_time
    #   <p>Indicates the time, in UNIX epoch date format, when DynamoDB detected that
    #               the table's KMS key was inaccessible. This attribute will automatically
    #               be cleared when DynamoDB detects that the table's KMS key is accessible
    #               again. DynamoDB will initiate the table archival process when table's KMS key remains inaccessible for more than seven days from this date.</p>
    #   @return [Time]
    class SSEDescription
      include Hearth::Structure

      MEMBERS = %i[
        status
        sse_type
        kms_master_key_arn
        inaccessible_encryption_date_time
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the settings used to enable server-side encryption.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :enabled
    #   @option params [String] :sse_type
    #   @option params [String] :kms_master_key_id
    # @!attribute enabled
    #   <p>Indicates whether server-side encryption is done using an Amazon Web Services managed
    #               key or an Amazon Web Services owned key. If enabled (true), server-side encryption type
    #               is set to <code>KMS</code> and an Amazon Web Services managed key is used (KMS charges apply). If disabled (false) or not specified, server-side
    #               encryption is set to Amazon Web Services owned key.</p>
    #   @return [Boolean]
    # @!attribute sse_type
    #   <p>Server-side encryption type. The only supported value is:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>KMS</code> - Server-side encryption that uses Key Management Service. The
    #                       key is stored in your account and is managed by KMS (KMS charges apply).</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["AES256", "KMS"]
    #   @return [String]
    # @!attribute kms_master_key_id
    #   <p>The KMS key that should be used for the KMS encryption.
    #               To specify a key, use its key ID, Amazon Resource Name (ARN), alias name, or alias ARN.
    #               Note that you should only provide this parameter if the key is different from the
    #               default DynamoDB key <code>alias/aws/dynamodb</code>.</p>
    #   @return [String]
    class SSESpecification
      include Hearth::Structure

      MEMBERS = %i[
        enabled
        sse_type
        kms_master_key_id
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for SSEStatus
    module SSEStatus
      ENABLING = "ENABLING"

      ENABLED = "ENABLED"

      DISABLING = "DISABLING"

      DISABLED = "DISABLED"

      UPDATING = "UPDATING"
    end

    # Enum constants for SSEType
    module SSEType
      AES256 = "AES256"

      KMS = "KMS"
    end

    # Enum constants for ScalarAttributeType
    module ScalarAttributeType
      S = "S"

      N = "N"

      B = "B"
    end

    # <p>Represents the input of a <code>Scan</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [String] :index_name
    #   @option params [Array<String>] :attributes_to_get
    #   @option params [Integer] :limit
    #   @option params [String] :select
    #   @option params [Hash<String, Condition>] :scan_filter
    #   @option params [String] :conditional_operator
    #   @option params [Hash<String, AttributeValue>] :exclusive_start_key
    #   @option params [String] :return_consumed_capacity
    #   @option params [Integer] :total_segments
    #   @option params [Integer] :segment
    #   @option params [String] :projection_expression
    #   @option params [String] :filter_expression
    #   @option params [Hash<String, String>] :expression_attribute_names
    #   @option params [Hash<String, AttributeValue>] :expression_attribute_values
    #   @option params [Boolean] :consistent_read
    # @!attribute table_name
    #   <p>The name of the table containing the requested items; or, if you provide
    #                   <code>IndexName</code>, the name of the table to which that index belongs.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of a secondary index to scan. This index can be any local secondary index or
    #               global secondary index. Note that if you use the <code>IndexName</code> parameter, you
    #               must also provide <code>TableName</code>.</p>
    #   @return [String]
    # @!attribute attributes_to_get
    #   <p>This is a legacy parameter. Use <code>ProjectionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributesToGet.html">AttributesToGet</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of items to evaluate (not necessarily the number of matching
    #               items). If DynamoDB processes the number of items up to the limit while processing the
    #               results, it stops the operation and returns the matching values up to that point, and a
    #               key in <code>LastEvaluatedKey</code> to apply in a subsequent operation, so that you can
    #               pick up where you left off. Also, if the processed dataset size exceeds 1 MB before
    #               DynamoDB reaches this limit, it stops the operation and returns the matching values up
    #               to the limit, and a key in <code>LastEvaluatedKey</code> to apply in a subsequent
    #               operation to continue the operation. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html">Working with Queries</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Integer]
    # @!attribute select
    #   <p>The attributes to be returned in the result. You can retrieve all item attributes,
    #               specific item attributes, the count of matching items, or in the case of an index, some
    #               or all of the attributes projected into the index.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL_ATTRIBUTES</code> - Returns all of the item attributes from the
    #                       specified table or index. If you query a local secondary index, then for each
    #                       matching item in the index, DynamoDB fetches the entire item from the parent
    #                       table. If the index is configured to project all item attributes, then all of
    #                       the data can be obtained from the local secondary index, and no fetching is
    #                       required.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_PROJECTED_ATTRIBUTES</code> - Allowed only when querying an index.
    #                       Retrieves all attributes that have been projected into the index. If the index
    #                       is configured to project all attributes, this return value is equivalent to
    #                       specifying <code>ALL_ATTRIBUTES</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COUNT</code> - Returns the number of matching items, rather than the
    #                       matching items themselves. Note that this uses the same quantity of read capacity units
    #                       as getting the items, and is subject to the same item size calculations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SPECIFIC_ATTRIBUTES</code> - Returns only the attributes listed in
    #                           <code>ProjectionExpression</code>. This return value is equivalent to
    #                       specifying <code>ProjectionExpression</code> without specifying any value for
    #                           <code>Select</code>.</p>
    #                  <p>If you query or scan a local secondary index and request only attributes that
    #                       are projected into that index, the operation reads only the index and not the
    #                       table. If any of the requested attributes are not projected into the local
    #                       secondary index, DynamoDB fetches each of these attributes from the parent
    #                       table. This extra fetching incurs additional throughput cost and latency.</p>
    #                  <p>If you query or scan a global secondary index, you can only request attributes
    #                       that are projected into the index. Global secondary index queries cannot fetch
    #                       attributes from the parent table.</p>
    #               </li>
    #            </ul>
    #            <p>If neither <code>Select</code> nor <code>ProjectionExpression</code> are specified,
    #               DynamoDB defaults to <code>ALL_ATTRIBUTES</code> when accessing a table, and
    #                   <code>ALL_PROJECTED_ATTRIBUTES</code> when accessing an index. You cannot use both
    #                   <code>Select</code> and <code>ProjectionExpression</code> together in a single
    #               request, unless the value for <code>Select</code> is <code>SPECIFIC_ATTRIBUTES</code>.
    #               (This usage is equivalent to specifying <code>ProjectionExpression</code> without any
    #               value for <code>Select</code>.)</p>
    #            <note>
    #               <p>If you use the <code>ProjectionExpression</code> parameter, then the value for
    #                       <code>Select</code> can only be <code>SPECIFIC_ATTRIBUTES</code>. Any other
    #                   value for <code>Select</code> will return an error.</p>
    #            </note>
    #   Enum, one of: ["ALL_ATTRIBUTES", "ALL_PROJECTED_ATTRIBUTES", "SPECIFIC_ATTRIBUTES", "COUNT"]
    #   @return [String]
    # @!attribute scan_filter
    #   <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ScanFilter.html">ScanFilter</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Hash<String, Condition>]
    # @!attribute conditional_operator
    #   <p>This is a legacy parameter. Use <code>FilterExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   Enum, one of: ["AND", "OR"]
    #   @return [String]
    # @!attribute exclusive_start_key
    #   <p>The primary key of the first item that this operation will evaluate. Use the value
    #               that was returned for <code>LastEvaluatedKey</code> in the previous operation.</p>
    #            <p>The data type for <code>ExclusiveStartKey</code> must be String, Number or Binary. No
    #               set data types are allowed.</p>
    #            <p>In a parallel scan, a <code>Scan</code> request that includes
    #                   <code>ExclusiveStartKey</code> must specify the same segment whose previous
    #                   <code>Scan</code> returned the corresponding value of
    #               <code>LastEvaluatedKey</code>.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["INDEXES", "TOTAL", "NONE"]
    #   @return [String]
    # @!attribute total_segments
    #   <p>For a parallel <code>Scan</code> request, <code>TotalSegments</code> represents the
    #               total number of segments into which the <code>Scan</code> operation will be divided. The
    #               value of <code>TotalSegments</code> corresponds to the number of application workers
    #               that will perform the parallel scan. For example, if you want to use four application
    #               threads to scan a table or an index, specify a <code>TotalSegments</code> value of
    #               4.</p>
    #            <p>The value for <code>TotalSegments</code> must be greater than or equal to 1, and less
    #               than or equal to 1000000. If you specify a <code>TotalSegments</code> value of 1, the
    #                   <code>Scan</code> operation will be sequential rather than parallel.</p>
    #            <p>If you specify <code>TotalSegments</code>, you must also specify
    #               <code>Segment</code>.</p>
    #   @return [Integer]
    # @!attribute segment
    #   <p>For a parallel <code>Scan</code> request, <code>Segment</code> identifies an
    #               individual segment to be scanned by an application worker.</p>
    #            <p>Segment IDs are zero-based, so the first segment is always 0. For example, if you want
    #               to use four application threads to scan a table or an index, then the first thread
    #               specifies a <code>Segment</code> value of 0, the second thread specifies 1, and so
    #               on.</p>
    #            <p>The value of <code>LastEvaluatedKey</code> returned from a parallel <code>Scan</code>
    #               request must be used as <code>ExclusiveStartKey</code> with the same segment ID in a
    #               subsequent <code>Scan</code> operation.</p>
    #            <p>The value for <code>Segment</code> must be greater than or equal to 0, and less than
    #               the value provided for <code>TotalSegments</code>.</p>
    #            <p>If you provide <code>Segment</code>, you must also provide
    #               <code>TotalSegments</code>.</p>
    #   @return [Integer]
    # @!attribute projection_expression
    #   <p>A string that identifies one or more attributes to retrieve from the specified table
    #               or index. These attributes can include scalars, sets, or elements of a JSON document.
    #               The attributes in the expression must be separated by commas.</p>
    #            <p>If no attribute names are specified, then all attributes will be returned. If any of
    #               the requested attributes are not found, they will not appear in the result.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute filter_expression
    #   <p>A string that contains conditions that DynamoDB applies after the <code>Scan</code>
    #               operation, but before the data is returned to you. Items that do not satisfy the
    #                   <code>FilterExpression</code> criteria are not returned.</p>
    #            <note>
    #               <p>A <code>FilterExpression</code> is applied after the items have already been read;
    #                   the process of filtering does not consume any additional read capacity units.</p>
    #            </note>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html#Scan.FilterExpression">Filter Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>). To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information on expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #            <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <code>ProductStatus</code> attribute was one of the following: </p>
    #            <p>
    #               <code>Available | Backordered | Discontinued</code>
    #            </p>
    #            <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #            <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #            </p>
    #            <p>You could then use these values in an expression, such as this:</p>
    #            <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #            </p>
    #            <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute consistent_read
    #   <p>A Boolean value that determines the read consistency model during the scan:</p>
    #            <ul>
    #               <li>
    #                  <p>If <code>ConsistentRead</code> is <code>false</code>, then the data returned
    #                       from <code>Scan</code> might not contain the results from other recently
    #                       completed write operations (<code>PutItem</code>, <code>UpdateItem</code>, or
    #                           <code>DeleteItem</code>).</p>
    #               </li>
    #               <li>
    #                  <p>If <code>ConsistentRead</code> is <code>true</code>, then all of the write
    #                       operations that completed before the <code>Scan</code> began are guaranteed to
    #                       be contained in the <code>Scan</code> response.</p>
    #               </li>
    #            </ul>
    #            <p>The default setting for <code>ConsistentRead</code> is <code>false</code>.</p>
    #            <p>The <code>ConsistentRead</code> parameter is not supported on global secondary
    #               indexes. If you scan a global secondary index with <code>ConsistentRead</code> set to
    #               true, you will receive a <code>ValidationException</code>.</p>
    #   @return [Boolean]
    class ScanInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        index_name
        attributes_to_get
        limit
        select
        scan_filter
        conditional_operator
        exclusive_start_key
        return_consumed_capacity
        total_segments
        segment
        projection_expression
        filter_expression
        expression_attribute_names
        expression_attribute_values
        consistent_read
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the output of a <code>Scan</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<Hash<String, AttributeValue>>] :items
    #   @option params [Integer] :count (0)
    #   @option params [Integer] :scanned_count (0)
    #   @option params [Hash<String, AttributeValue>] :last_evaluated_key
    #   @option params [ConsumedCapacity] :consumed_capacity
    # @!attribute items
    #   <p>An array of item attributes that match the scan criteria. Each element in this array
    #               consists of an attribute name and the value for that attribute.</p>
    #   @return [Array<Hash<String, AttributeValue>>]
    # @!attribute count
    #   <p>The number of items in the response.</p>
    #            <p>If you set <code>ScanFilter</code> in the request, then <code>Count</code> is the
    #               number of items returned after the filter was applied, and <code>ScannedCount</code> is
    #               the number of matching items before the filter was applied.</p>
    #            <p>If you did not use a filter in the request, then <code>Count</code> is the same as
    #                   <code>ScannedCount</code>.</p>
    #   @return [Integer]
    # @!attribute scanned_count
    #   <p>The number of items evaluated, before any <code>ScanFilter</code> is applied. A high
    #                   <code>ScannedCount</code> value with few, or no, <code>Count</code> results
    #               indicates an inefficient <code>Scan</code> operation. For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/QueryAndScan.html#Count">Count and
    #                   ScannedCount</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #            <p>If you did not use a filter in the request, then <code>ScannedCount</code> is the same
    #               as <code>Count</code>.</p>
    #   @return [Integer]
    # @!attribute last_evaluated_key
    #   <p>The primary key of the item where the operation stopped, inclusive of the previous
    #               result set. Use this value to start a new operation, excluding this value in the new
    #               request.</p>
    #            <p>If <code>LastEvaluatedKey</code> is empty, then the "last page" of results has been
    #               processed and there is no more data to be retrieved.</p>
    #            <p>If <code>LastEvaluatedKey</code> is not empty, it does not necessarily mean that there
    #               is more data in the result set. The only way to know when you have reached the end of
    #               the result set is when <code>LastEvaluatedKey</code> is empty.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the <code>Scan</code> operation. The data returned
    #               includes the total provisioned throughput consumed, along with statistics for the table
    #               and any indexes involved in the operation. <code>ConsumedCapacity</code> is only
    #               returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For more
    #               information, see
    #               <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html#ItemSizeCalculations.Reads">Provisioned Throughput</a>
    #               in the <i>Amazon DynamoDB Developer Guide</i>.</p>
    #   @return [ConsumedCapacity]
    class ScanOutput
      include Hearth::Structure

      MEMBERS = %i[
        items
        count
        scanned_count
        last_evaluated_key
        consumed_capacity
      ].freeze

      attr_accessor(*MEMBERS)

      private

      def _defaults
        {
          count: 0,
          scanned_count: 0
        }
      end
    end

    # Enum constants for Select
    module Select
      ALL_ATTRIBUTES = "ALL_ATTRIBUTES"

      ALL_PROJECTED_ATTRIBUTES = "ALL_PROJECTED_ATTRIBUTES"

      SPECIFIC_ATTRIBUTES = "SPECIFIC_ATTRIBUTES"

      COUNT = "COUNT"
    end

    # <p>Contains the details of the table when the backup was created. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [String] :table_id
    #   @option params [String] :table_arn
    #   @option params [Integer] :table_size_bytes
    #   @option params [Array<KeySchemaElement>] :key_schema
    #   @option params [Time] :table_creation_date_time
    #   @option params [ProvisionedThroughput] :provisioned_throughput
    #   @option params [Integer] :item_count
    #   @option params [String] :billing_mode
    # @!attribute table_name
    #   <p>The name of the table for which the backup was created. </p>
    #   @return [String]
    # @!attribute table_id
    #   <p>Unique identifier for the table for which the backup was created. </p>
    #   @return [String]
    # @!attribute table_arn
    #   <p>ARN of the table for which backup was created. </p>
    #   @return [String]
    # @!attribute table_size_bytes
    #   <p>Size of the table in bytes. Note that this is an approximate value.</p>
    #   @return [Integer]
    # @!attribute key_schema
    #   <p>Schema of the table. </p>
    #   @return [Array<KeySchemaElement>]
    # @!attribute table_creation_date_time
    #   <p>Time when the source table was created. </p>
    #   @return [Time]
    # @!attribute provisioned_throughput
    #   <p>Read IOPs and Write IOPS on the table when the backup was created.</p>
    #   @return [ProvisionedThroughput]
    # @!attribute item_count
    #   <p>Number of items in the table. Note that this is an approximate value. </p>
    #   @return [Integer]
    # @!attribute billing_mode
    #   <p>Controls how you are charged for read and write throughput and how you manage
    #               capacity. This setting can be changed later.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PROVISIONED</code> - Sets the read/write capacity mode to
    #                           <code>PROVISIONED</code>. We recommend using <code>PROVISIONED</code> for
    #                       predictable workloads.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PAY_PER_REQUEST</code> - Sets the read/write capacity mode to
    #                           <code>PAY_PER_REQUEST</code>. We recommend using
    #                           <code>PAY_PER_REQUEST</code> for unpredictable workloads. </p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["PROVISIONED", "PAY_PER_REQUEST"]
    #   @return [String]
    class SourceTableDetails
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        table_id
        table_arn
        table_size_bytes
        key_schema
        table_creation_date_time
        provisioned_throughput
        item_count
        billing_mode
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Contains the details of the features enabled on the table when the backup was created.
    #             For example, LSIs, GSIs, streams, TTL. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<LocalSecondaryIndexInfo>] :local_secondary_indexes
    #   @option params [Array<GlobalSecondaryIndexInfo>] :global_secondary_indexes
    #   @option params [StreamSpecification] :stream_description
    #   @option params [TimeToLiveDescription] :time_to_live_description
    #   @option params [SSEDescription] :sse_description
    # @!attribute local_secondary_indexes
    #   <p>Represents the LSI properties for the table when the backup was created. It includes
    #               the IndexName, KeySchema and Projection for the LSIs on the table at the time of backup.
    #           </p>
    #   @return [Array<LocalSecondaryIndexInfo>]
    # @!attribute global_secondary_indexes
    #   <p>Represents the GSI properties for the table when the backup was created. It includes
    #               the IndexName, KeySchema, Projection, and ProvisionedThroughput for the GSIs on the
    #               table at the time of backup. </p>
    #   @return [Array<GlobalSecondaryIndexInfo>]
    # @!attribute stream_description
    #   <p>Stream settings on the table when the backup was created.</p>
    #   @return [StreamSpecification]
    # @!attribute time_to_live_description
    #   <p>Time to Live settings on the table when the backup was created.</p>
    #   @return [TimeToLiveDescription]
    # @!attribute sse_description
    #   <p>The description of the server-side encryption status on the table when the backup was
    #               created.</p>
    #   @return [SSEDescription]
    class SourceTableFeatureDetails
      include Hearth::Structure

      MEMBERS = %i[
        local_secondary_indexes
        global_secondary_indexes
        stream_description
        time_to_live_description
        sse_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the DynamoDB Streams configuration for a table in DynamoDB.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :stream_enabled
    #   @option params [String] :stream_view_type
    # @!attribute stream_enabled
    #   <p>Indicates whether DynamoDB Streams is enabled (true) or disabled (false) on the
    #               table.</p>
    #   @return [Boolean]
    # @!attribute stream_view_type
    #   <p> When an item in the table is modified, <code>StreamViewType</code> determines what
    #               information is written to the stream for this table. Valid values for
    #                   <code>StreamViewType</code> are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>KEYS_ONLY</code> - Only the key attributes of the modified item are
    #                       written to the stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_IMAGE</code> - The entire item, as it appears after it was modified,
    #                       is written to the stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OLD_IMAGE</code> - The entire item, as it appeared before it was modified,
    #                       is written to the stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_AND_OLD_IMAGES</code> - Both the new and the old item images of the
    #                       item are written to the stream.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["NEW_IMAGE", "OLD_IMAGE", "NEW_AND_OLD_IMAGES", "KEYS_ONLY"]
    #   @return [String]
    class StreamSpecification
      include Hearth::Structure

      MEMBERS = %i[
        stream_enabled
        stream_view_type
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for StreamViewType
    module StreamViewType
      NEW_IMAGE = "NEW_IMAGE"

      OLD_IMAGE = "OLD_IMAGE"

      NEW_AND_OLD_IMAGES = "NEW_AND_OLD_IMAGES"

      KEYS_ONLY = "KEYS_ONLY"
    end

    # <p>A target table with the specified name already exists. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class TableAlreadyExistsException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the auto scaling configuration for a global table.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [String] :table_status
    #   @option params [Array<ReplicaAutoScalingDescription>] :replicas
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute table_status
    #   <p>The current state of the table:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The table is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The table is being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The table is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The table is ready for use.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED"]
    #   @return [String]
    # @!attribute replicas
    #   <p>Represents replicas of the global table.</p>
    #   @return [Array<ReplicaAutoScalingDescription>]
    class TableAutoScalingDescription
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        table_status
        replicas
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for TableClass
    module TableClass
      STANDARD = "STANDARD"

      STANDARD_INFREQUENT_ACCESS = "STANDARD_INFREQUENT_ACCESS"
    end

    # <p>Contains details of the table class.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_class
    #   @option params [Time] :last_update_date_time
    # @!attribute table_class
    #   <p>The table class of the specified table. Valid values are <code>STANDARD</code> and
    #                   <code>STANDARD_INFREQUENT_ACCESS</code>.</p>
    #   Enum, one of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #   @return [String]
    # @!attribute last_update_date_time
    #   <p>The date and time at which the table class was last updated.</p>
    #   @return [Time]
    class TableClassSummary
      include Hearth::Structure

      MEMBERS = %i[
        table_class
        last_update_date_time
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p> The parameters for the table created as part of the import operation. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [Array<AttributeDefinition>] :attribute_definitions
    #   @option params [Array<KeySchemaElement>] :key_schema
    #   @option params [String] :billing_mode
    #   @option params [ProvisionedThroughput] :provisioned_throughput
    #   @option params [SSESpecification] :sse_specification
    #   @option params [Array<GlobalSecondaryIndex>] :global_secondary_indexes
    # @!attribute table_name
    #   <p> The name of the table created as part of the import operation. </p>
    #   @return [String]
    # @!attribute attribute_definitions
    #   <p> The attributes of the table created as part of the import operation. </p>
    #   @return [Array<AttributeDefinition>]
    # @!attribute key_schema
    #   <p> The primary key and option sort key of the table created as part of the import
    #               operation. </p>
    #   @return [Array<KeySchemaElement>]
    # @!attribute billing_mode
    #   <p> The billing mode for provisioning the table created as part of the import operation.
    #           </p>
    #   Enum, one of: ["PROVISIONED", "PAY_PER_REQUEST"]
    #   @return [String]
    # @!attribute provisioned_throughput
    #   <p>Represents the provisioned throughput settings for a specified table or index. The
    #               settings can be modified using the <code>UpdateTable</code> operation.</p>
    #            <p>For current minimum and maximum provisioned throughput values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                   Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [ProvisionedThroughput]
    # @!attribute sse_specification
    #   <p>Represents the settings used to enable server-side encryption.</p>
    #   @return [SSESpecification]
    # @!attribute global_secondary_indexes
    #   <p> The Global Secondary Indexes (GSI) of the table to be created as part of the import
    #               operation. </p>
    #   @return [Array<GlobalSecondaryIndex>]
    class TableCreationParameters
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        attribute_definitions
        key_schema
        billing_mode
        provisioned_throughput
        sse_specification
        global_secondary_indexes
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the properties of a table.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<AttributeDefinition>] :attribute_definitions
    #   @option params [String] :table_name
    #   @option params [Array<KeySchemaElement>] :key_schema
    #   @option params [String] :table_status
    #   @option params [Time] :creation_date_time
    #   @option params [ProvisionedThroughputDescription] :provisioned_throughput
    #   @option params [Integer] :table_size_bytes
    #   @option params [Integer] :item_count
    #   @option params [String] :table_arn
    #   @option params [String] :table_id
    #   @option params [BillingModeSummary] :billing_mode_summary
    #   @option params [Array<LocalSecondaryIndexDescription>] :local_secondary_indexes
    #   @option params [Array<GlobalSecondaryIndexDescription>] :global_secondary_indexes
    #   @option params [StreamSpecification] :stream_specification
    #   @option params [String] :latest_stream_label
    #   @option params [String] :latest_stream_arn
    #   @option params [String] :global_table_version
    #   @option params [Array<ReplicaDescription>] :replicas
    #   @option params [RestoreSummary] :restore_summary
    #   @option params [SSEDescription] :sse_description
    #   @option params [ArchivalSummary] :archival_summary
    #   @option params [TableClassSummary] :table_class_summary
    #   @option params [Boolean] :deletion_protection_enabled
    # @!attribute attribute_definitions
    #   <p>An array of <code>AttributeDefinition</code> objects. Each of these objects describes
    #               one attribute in the table and index key schema.</p>
    #            <p>Each <code>AttributeDefinition</code> object in this array is composed of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AttributeName</code> - The name of the attribute.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AttributeType</code> - The data type for the attribute.</p>
    #               </li>
    #            </ul>
    #   @return [Array<AttributeDefinition>]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute key_schema
    #   <p>The primary key structure for the table. Each <code>KeySchemaElement</code> consists
    #               of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AttributeName</code> - The name of the attribute.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KeyType</code> - The role of the attribute:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>HASH</code> - partition key</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>RANGE</code> - sort key</p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>The partition key of an item is also known as its <i>hash
    #                               attribute</i>. The term "hash attribute" derives from DynamoDB's
    #                           usage of an internal hash function to evenly distribute data items across
    #                           partitions, based on their partition key values.</p>
    #                     <p>The sort key of an item is also known as its <i>range
    #                               attribute</i>. The term "range attribute" derives from the way
    #                           DynamoDB stores items with the same partition key physically close together,
    #                           in sorted order by the sort key value.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #            <p>For more information about primary keys, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DataModel.html#DataModelPrimaryKey">Primary Key</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Array<KeySchemaElement>]
    # @!attribute table_status
    #   <p>The current state of the table:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - The table is being created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - The table/index configuration is being updated. The
    #                       table/index remains available for data operations when
    #                       <code>UPDATING</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - The table is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> - The table is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACCESSIBLE_ENCRYPTION_CREDENTIALS</code> - The KMS key
    #                       used to encrypt the table in inaccessible. Table operations may fail due to
    #                       failure to use the KMS key. DynamoDB will initiate the
    #                       table archival process when a table's KMS key remains
    #                       inaccessible for more than seven days. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ARCHIVING</code> - The table is being archived. Operations are not allowed
    #                       until archival is complete. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ARCHIVED</code> - The table has been archived. See the ArchivalReason for
    #                       more information. </p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["CREATING", "UPDATING", "DELETING", "ACTIVE", "INACCESSIBLE_ENCRYPTION_CREDENTIALS", "ARCHIVING", "ARCHIVED"]
    #   @return [String]
    # @!attribute creation_date_time
    #   <p>The date and time when the table was created, in <a href="http://www.epochconverter.com/">UNIX epoch time</a> format.</p>
    #   @return [Time]
    # @!attribute provisioned_throughput
    #   <p>The provisioned throughput settings for the table, consisting of read and write
    #               capacity units, along with data about increases and decreases.</p>
    #   @return [ProvisionedThroughputDescription]
    # @!attribute table_size_bytes
    #   <p>The total size of the specified table, in bytes. DynamoDB updates this value
    #               approximately every six hours. Recent changes might not be reflected in this
    #               value.</p>
    #   @return [Integer]
    # @!attribute item_count
    #   <p>The number of items in the specified table. DynamoDB updates this value approximately
    #               every six hours. Recent changes might not be reflected in this value.</p>
    #   @return [Integer]
    # @!attribute table_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the table.</p>
    #   @return [String]
    # @!attribute table_id
    #   <p>Unique identifier for the table for which the backup was created. </p>
    #   @return [String]
    # @!attribute billing_mode_summary
    #   <p>Contains the details for the read/write capacity mode.</p>
    #   @return [BillingModeSummary]
    # @!attribute local_secondary_indexes
    #   <p>Represents one or more local secondary indexes on the table. Each index is scoped to a
    #               given partition key value. Tables with one or more local secondary indexes are subject
    #               to an item collection size limit, where the amount of data within a given item
    #               collection cannot exceed 10 GB. Each element is composed of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>IndexName</code> - The name of the local secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KeySchema</code> - Specifies the complete index key schema. The attribute
    #                       names in the key schema must be between 1 and 255 characters (inclusive). The
    #                       key schema must begin with the same partition key as the table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Projection</code> - Specifies attributes that are copied (projected) from
    #                       the table into the index. These are in addition to the primary key attributes
    #                       and index key attributes, which are automatically projected. Each attribute
    #                       specification is composed of:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>ProjectionType</code> - One of the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>KEYS_ONLY</code> - Only the index and primary keys are
    #                                       projected into the index.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>INCLUDE</code> - Only the specified table attributes are
    #                                       projected into the index. The list of projected attributes is in
    #                                           <code>NonKeyAttributes</code>.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ALL</code> - All of the table attributes are projected
    #                                       into the index.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NonKeyAttributes</code> - A list of one or more non-key attribute
    #                               names that are projected into the secondary index. The total count of
    #                               attributes provided in <code>NonKeyAttributes</code>, summed across all
    #                               of the secondary indexes, must not exceed 100. If you project the same
    #                               attribute into two different indexes, this counts as two distinct
    #                               attributes when determining the total.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IndexSizeBytes</code> - Represents the total size of the index, in bytes.
    #                       DynamoDB updates this value approximately every six hours. Recent changes might
    #                       not be reflected in this value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ItemCount</code> - Represents the number of items in the index. DynamoDB
    #                       updates this value approximately every six hours. Recent changes might not be
    #                       reflected in this value.</p>
    #               </li>
    #            </ul>
    #            <p>If the table is in the <code>DELETING</code> state, no information about indexes will
    #               be returned.</p>
    #   @return [Array<LocalSecondaryIndexDescription>]
    # @!attribute global_secondary_indexes
    #   <p>The global secondary indexes, if any, on the table. Each index is scoped to a given
    #               partition key value. Each element is composed of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Backfilling</code> - If true, then the index is currently in the
    #                       backfilling phase. Backfilling occurs only when a new global secondary index is
    #                       added to the table. It is the process by which DynamoDB populates the new index
    #                       with data from the table. (This attribute does not appear for indexes that were
    #                       created during a <code>CreateTable</code> operation.) </p>
    #                  <p> You can delete an index that is being created during the
    #                           <code>Backfilling</code> phase when <code>IndexStatus</code> is set to
    #                       CREATING and <code>Backfilling</code> is true. You can't delete the index that
    #                       is being created when <code>IndexStatus</code> is set to CREATING and
    #                           <code>Backfilling</code> is false. (This attribute does not appear for
    #                       indexes that were created during a <code>CreateTable</code> operation.)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IndexName</code> - The name of the global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IndexSizeBytes</code> - The total size of the global secondary index, in
    #                       bytes. DynamoDB updates this value approximately every six hours. Recent changes
    #                       might not be reflected in this value. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IndexStatus</code> - The current status of the global secondary
    #                       index:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>CREATING</code> - The index is being created.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>UPDATING</code> - The index is being updated.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>DELETING</code> - The index is being deleted.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ACTIVE</code> - The index is ready for use.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ItemCount</code> - The number of items in the global secondary index.
    #                       DynamoDB updates this value approximately every six hours. Recent changes might
    #                       not be reflected in this value. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KeySchema</code> - Specifies the complete index key schema. The attribute
    #                       names in the key schema must be between 1 and 255 characters (inclusive). The
    #                       key schema must begin with the same partition key as the table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Projection</code> - Specifies attributes that are copied (projected) from
    #                       the table into the index. These are in addition to the primary key attributes
    #                       and index key attributes, which are automatically projected. Each attribute
    #                       specification is composed of:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>ProjectionType</code> - One of the following:</p>
    #                        <ul>
    #                           <li>
    #                              <p>
    #                                 <code>KEYS_ONLY</code> - Only the index and primary keys are
    #                                       projected into the index.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>INCLUDE</code> - In addition to the attributes described
    #                                       in <code>KEYS_ONLY</code>, the secondary index will include
    #                                       other non-key attributes that you specify.</p>
    #                           </li>
    #                           <li>
    #                              <p>
    #                                 <code>ALL</code> - All of the table attributes are projected
    #                                       into the index.</p>
    #                           </li>
    #                        </ul>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>NonKeyAttributes</code> - A list of one or more non-key attribute
    #                               names that are projected into the secondary index. The total count of
    #                               attributes provided in <code>NonKeyAttributes</code>, summed across all
    #                               of the secondary indexes, must not exceed 100. If you project the same
    #                               attribute into two different indexes, this counts as two distinct
    #                               attributes when determining the total.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ProvisionedThroughput</code> - The provisioned throughput settings for the
    #                       global secondary index, consisting of read and write capacity units, along with
    #                       data about increases and decreases. </p>
    #               </li>
    #            </ul>
    #            <p>If the table is in the <code>DELETING</code> state, no information about indexes will
    #               be returned.</p>
    #   @return [Array<GlobalSecondaryIndexDescription>]
    # @!attribute stream_specification
    #   <p>The current DynamoDB Streams configuration for the table.</p>
    #   @return [StreamSpecification]
    # @!attribute latest_stream_label
    #   <p>A timestamp, in ISO 8601 format, for this stream.</p>
    #            <p>Note that <code>LatestStreamLabel</code> is not a unique identifier for the stream,
    #               because it is possible that a stream from another table might have the same timestamp.
    #               However, the combination of the following three elements is guaranteed to be
    #               unique:</p>
    #            <ul>
    #               <li>
    #                  <p>Amazon Web Services customer ID</p>
    #               </li>
    #               <li>
    #                  <p>Table name</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>StreamLabel</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute latest_stream_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the latest stream for this
    #               table.</p>
    #   @return [String]
    # @!attribute global_table_version
    #   <p>Represents the version of <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html">global tables</a>
    #               in use, if the table is replicated across Amazon Web Services Regions.</p>
    #   @return [String]
    # @!attribute replicas
    #   <p>Represents replicas of the table.</p>
    #   @return [Array<ReplicaDescription>]
    # @!attribute restore_summary
    #   <p>Contains details for the restore.</p>
    #   @return [RestoreSummary]
    # @!attribute sse_description
    #   <p>The description of the server-side encryption status on the specified table.</p>
    #   @return [SSEDescription]
    # @!attribute archival_summary
    #   <p>Contains information about the table archive.</p>
    #   @return [ArchivalSummary]
    # @!attribute table_class_summary
    #   <p>Contains details of the table class.</p>
    #   @return [TableClassSummary]
    # @!attribute deletion_protection_enabled
    #   <p>Indicates whether deletion protection is enabled (true) or disabled (false) on the table.</p>
    #   @return [Boolean]
    class TableDescription
      include Hearth::Structure

      MEMBERS = %i[
        attribute_definitions
        table_name
        key_schema
        table_status
        creation_date_time
        provisioned_throughput
        table_size_bytes
        item_count
        table_arn
        table_id
        billing_mode_summary
        local_secondary_indexes
        global_secondary_indexes
        stream_specification
        latest_stream_label
        latest_stream_arn
        global_table_version
        replicas
        restore_summary
        sse_description
        archival_summary
        table_class_summary
        deletion_protection_enabled
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>A target table with the specified name is either being created or deleted.
    #         </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class TableInUseException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>A source table with the name <code>TableName</code> does not currently exist within
    #             the subscriber's account or the subscriber is operating in the wrong Amazon Web Services Region.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class TableNotFoundException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for TableStatus
    module TableStatus
      CREATING = "CREATING"

      UPDATING = "UPDATING"

      DELETING = "DELETING"

      ACTIVE = "ACTIVE"

      INACCESSIBLE_ENCRYPTION_CREDENTIALS = "INACCESSIBLE_ENCRYPTION_CREDENTIALS"

      ARCHIVING = "ARCHIVING"

      ARCHIVED = "ARCHIVED"
    end

    # <p>Describes a tag. A tag is a key-value pair. You can add up to 50 tags to a single
    #             DynamoDB table. </p>
    #          <p>Amazon Web Services-assigned tag names and values are automatically assigned the
    #                 <code>aws:</code> prefix, which the user cannot assign. Amazon Web Services-assigned
    #             tag names do not count towards the tag limit of 50. User-assigned tag names have the
    #             prefix <code>user:</code> in the Cost Allocation Report. You cannot backdate the
    #             application of a tag.</p>
    #          <p>For an overview on tagging DynamoDB resources, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html">Tagging
    #                 for DynamoDB</a> in the <i>Amazon DynamoDB Developer
    #                 Guide</i>.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :key
    #   @option params [String] :value
    # @!attribute key
    #   <p>The key of the tag. Tag keys are case sensitive. Each DynamoDB table can
    #               only have up to one tag with the same key. If you try to add an existing tag (same key),
    #               the existing tag value will be updated to the new value.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag. Tag values are case-sensitive and can be null.</p>
    #   @return [String]
    class Tag
      include Hearth::Structure

      MEMBERS = %i[
        key
        value
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :resource_arn
    #   @option params [Array<Tag>] :tags
    # @!attribute resource_arn
    #   <p>Identifies the Amazon DynamoDB resource to which tags should be added. This value is
    #               an Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be assigned to the Amazon DynamoDB resource.</p>
    #   @return [Array<Tag>]
    class TagResourceInput
      include Hearth::Structure

      MEMBERS = %i[
        resource_arn
        tags
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class TagResourceOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The description of the Time to Live (TTL) status on the specified table. </p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :time_to_live_status
    #   @option params [String] :attribute_name
    # @!attribute time_to_live_status
    #   <p> The TTL status for the table.</p>
    #   Enum, one of: ["ENABLING", "DISABLING", "ENABLED", "DISABLED"]
    #   @return [String]
    # @!attribute attribute_name
    #   <p> The name of the TTL attribute for items in the table.</p>
    #   @return [String]
    class TimeToLiveDescription
      include Hearth::Structure

      MEMBERS = %i[
        time_to_live_status
        attribute_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the settings used to enable or disable Time to Live (TTL) for the specified
    #             table.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Boolean] :enabled
    #   @option params [String] :attribute_name
    # @!attribute enabled
    #   <p>Indicates whether TTL is to be enabled (true) or disabled (false) on the table.</p>
    #   @return [Boolean]
    # @!attribute attribute_name
    #   <p>The name of the TTL attribute used to store the expiration time for items in the
    #               table.</p>
    #   @return [String]
    class TimeToLiveSpecification
      include Hearth::Structure

      MEMBERS = %i[
        enabled
        attribute_name
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # Enum constants for TimeToLiveStatus
    module TimeToLiveStatus
      ENABLING = "ENABLING"

      DISABLING = "DISABLING"

      ENABLED = "ENABLED"

      DISABLED = "DISABLED"
    end

    # <p>Specifies an item to be retrieved as part of the transaction.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Get] :get
    # @!attribute get
    #   <p>Contains the primary key that identifies the item to get, together with the name of
    #               the table that contains the item, and optionally the specific attributes of the item to
    #               retrieve.</p>
    #   @return [Get]
    class TransactGetItem
      include Hearth::Structure

      MEMBERS = %i[
        get
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<TransactGetItem>] :transact_items
    #   @option params [String] :return_consumed_capacity
    # @!attribute transact_items
    #   <p>An ordered array of up to 100 <code>TransactGetItem</code> objects, each of which
    #               contains a <code>Get</code> structure.</p>
    #   @return [Array<TransactGetItem>]
    # @!attribute return_consumed_capacity
    #   <p>A value of <code>TOTAL</code> causes consumed capacity information to be returned, and
    #               a value of <code>NONE</code> prevents that information from being returned. No other
    #               value is valid.</p>
    #   Enum, one of: ["INDEXES", "TOTAL", "NONE"]
    #   @return [String]
    class TransactGetItemsInput
      include Hearth::Structure

      MEMBERS = %i[
        transact_items
        return_consumed_capacity
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<ConsumedCapacity>] :consumed_capacity
    #   @option params [Array<ItemResponse>] :responses
    # @!attribute consumed_capacity
    #   <p>If the <i>ReturnConsumedCapacity</i> value was <code>TOTAL</code>, this
    #               is an array of <code>ConsumedCapacity</code> objects, one for each table addressed by
    #                   <code>TransactGetItem</code> objects in the <i>TransactItems</i>
    #               parameter. These <code>ConsumedCapacity</code> objects report the read-capacity units
    #               consumed by the <code>TransactGetItems</code> call in that table.</p>
    #   @return [Array<ConsumedCapacity>]
    # @!attribute responses
    #   <p>An ordered array of up to 100 <code>ItemResponse</code> objects, each of which
    #               corresponds to the <code>TransactGetItem</code> object in the same position in the
    #                   <i>TransactItems</i> array. Each <code>ItemResponse</code> object
    #               contains a Map of the name-value pairs that are the projected attributes of the
    #               requested item.</p>
    #            <p>If a requested item could not be retrieved, the corresponding
    #                   <code>ItemResponse</code> object is Null, or if the requested item has no projected
    #               attributes, the corresponding <code>ItemResponse</code> object is an empty Map. </p>
    #   @return [Array<ItemResponse>]
    class TransactGetItemsOutput
      include Hearth::Structure

      MEMBERS = %i[
        consumed_capacity
        responses
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>A list of requests that can perform update, put, delete, or check operations on
    #             multiple items in one or more tables atomically.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [ConditionCheck] :condition_check
    #   @option params [Put] :put
    #   @option params [Delete] :delete
    #   @option params [Update] :update
    # @!attribute condition_check
    #   <p>A request to perform a check item operation.</p>
    #   @return [ConditionCheck]
    # @!attribute put
    #   <p>A request to perform a <code>PutItem</code> operation.</p>
    #   @return [Put]
    # @!attribute delete
    #   <p>A request to perform a <code>DeleteItem</code> operation.</p>
    #   @return [Delete]
    # @!attribute update
    #   <p>A request to perform an <code>UpdateItem</code> operation.</p>
    #   @return [Update]
    class TransactWriteItem
      include Hearth::Structure

      MEMBERS = %i[
        condition_check
        put
        delete
        update
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<TransactWriteItem>] :transact_items
    #   @option params [String] :return_consumed_capacity
    #   @option params [String] :return_item_collection_metrics
    #   @option params [String] :client_request_token
    # @!attribute transact_items
    #   <p>An ordered array of up to 100 <code>TransactWriteItem</code> objects, each of which
    #               contains a <code>ConditionCheck</code>, <code>Put</code>, <code>Update</code>, or
    #                   <code>Delete</code> object. These can operate on items in different tables, but the
    #               tables must reside in the same Amazon Web Services account and Region, and no two of them
    #               can operate on the same item. </p>
    #   @return [Array<TransactWriteItem>]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["INDEXES", "TOTAL", "NONE"]
    #   @return [String]
    # @!attribute return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections (if any), that were modified
    #               during the operation and are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned. </p>
    #   Enum, one of: ["SIZE", "NONE"]
    #   @return [String]
    # @!attribute client_request_token
    #   <p>Providing a <code>ClientRequestToken</code> makes the call to
    #                   <code>TransactWriteItems</code> idempotent, meaning that multiple identical calls
    #               have the same effect as one single call.</p>
    #            <p>Although multiple identical calls using the same client request token produce the same
    #               result on the server (no side effects), the responses to the calls might not be the
    #               same. If the <code>ReturnConsumedCapacity</code> parameter is set, then the initial
    #                   <code>TransactWriteItems</code> call returns the amount of write capacity units
    #               consumed in making the changes. Subsequent <code>TransactWriteItems</code> calls with
    #               the same client token return the number of read capacity units consumed in reading the
    #               item.</p>
    #            <p>A client request token is valid for 10 minutes after the first request that uses it is
    #               completed. After 10 minutes, any request with the same client token is treated as a new
    #               request. Do not resubmit the same request with the same client token for more than 10
    #               minutes, or the result might not be idempotent.</p>
    #            <p>If you submit a request with the same client token but a change in other parameters
    #               within the 10-minute idempotency window, DynamoDB returns an
    #                   <code>IdempotentParameterMismatch</code> exception.</p>
    #   @return [String]
    class TransactWriteItemsInput
      include Hearth::Structure

      MEMBERS = %i[
        transact_items
        return_consumed_capacity
        return_item_collection_metrics
        client_request_token
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<ConsumedCapacity>] :consumed_capacity
    #   @option params [Hash<String, Array<ItemCollectionMetrics>>] :item_collection_metrics
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the entire <code>TransactWriteItems</code> operation.
    #               The values of the list are ordered according to the ordering of the
    #                   <code>TransactItems</code> request parameter. </p>
    #   @return [Array<ConsumedCapacity>]
    # @!attribute item_collection_metrics
    #   <p>A list of tables that were processed by <code>TransactWriteItems</code> and, for each
    #               table, information about any item collections that were affected by individual
    #                   <code>UpdateItem</code>, <code>PutItem</code>, or <code>DeleteItem</code>
    #               operations. </p>
    #   @return [Hash<String, Array<ItemCollectionMetrics>>]
    class TransactWriteItemsOutput
      include Hearth::Structure

      MEMBERS = %i[
        consumed_capacity
        item_collection_metrics
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The entire transaction request was canceled.</p>
    #          <p>DynamoDB cancels a <code>TransactWriteItems</code> request under the following
    #             circumstances:</p>
    #          <ul>
    #             <li>
    #                <p>A condition in one of the condition expressions is not met.</p>
    #             </li>
    #             <li>
    #                <p>A table in the <code>TransactWriteItems</code> request is in a different
    #                     account or region.</p>
    #             </li>
    #             <li>
    #                <p>More than one action in the <code>TransactWriteItems</code> operation
    #                     targets the same item.</p>
    #             </li>
    #             <li>
    #                <p>There is insufficient provisioned capacity for the transaction to be
    #                     completed.</p>
    #             </li>
    #             <li>
    #                <p>An item size becomes too large (larger than 400 KB), or a local secondary
    #                     index (LSI) becomes too large, or a similar validation error occurs because of
    #                     changes made by the transaction.</p>
    #             </li>
    #             <li>
    #                <p>There is a user error, such as an invalid data format.</p>
    #             </li>
    #             <li>
    #                <p>
    #                     There is an ongoing <code>TransactWriteItems</code> operation that conflicts with a concurrent
    #                     <code>TransactWriteItems</code> request. In this case the <code>TransactWriteItems</code> operation
    #                     fails with a <code>TransactionCanceledException</code>.
    #                 </p>
    #             </li>
    #          </ul>
    #          <p>DynamoDB cancels a <code>TransactGetItems</code> request under the
    #             following circumstances:</p>
    #          <ul>
    #             <li>
    #                <p>There is an ongoing <code>TransactGetItems</code> operation that conflicts
    #                     with a concurrent <code>PutItem</code>, <code>UpdateItem</code>,
    #                         <code>DeleteItem</code> or <code>TransactWriteItems</code> request. In this
    #                     case the <code>TransactGetItems</code> operation fails with a
    #                         <code>TransactionCanceledException</code>.</p>
    #             </li>
    #             <li>
    #                <p>A table in the <code>TransactGetItems</code> request is in a different
    #                     account or region.</p>
    #             </li>
    #             <li>
    #                <p>There is insufficient provisioned capacity for the transaction to be
    #                     completed.</p>
    #             </li>
    #             <li>
    #                <p>There is a user error, such as an invalid data format.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>If using Java, DynamoDB lists the cancellation reasons on the
    #                     <code>CancellationReasons</code> property. This property is not set for other
    #                 languages. Transaction cancellation reasons are ordered in the order of requested
    #                 items, if an item has no error it will have <code>None</code> code and
    #                     <code>Null</code> message.</p>
    #          </note>
    #          <p>Cancellation reason codes and possible error messages:</p>
    #          <ul>
    #             <li>
    #                <p>No Errors:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>None</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Message: <code>null</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Conditional Check Failed:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>ConditionalCheckFailed</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Message: The conditional request failed. </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Item Collection Size Limit Exceeded:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>ItemCollectionSizeLimitExceeded</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Message: Collection size exceeded.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Transaction Conflict:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>TransactionConflict</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Message: Transaction is ongoing for the item.</p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Provisioned Throughput Exceeded:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>ProvisionedThroughputExceeded</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Messages:</p>
    #                      <ul>
    #                         <li>
    #                            <p>The level of configured provisioned throughput for the
    #                                     table was exceeded. Consider increasing your provisioning level
    #                                     with the UpdateTable API.</p>
    #                            <note>
    #                               <p>This Message is received when provisioned throughput is
    #                                         exceeded is on a provisioned DynamoDB
    #                                         table.</p>
    #                            </note>
    #                         </li>
    #                         <li>
    #                            <p>The level of configured provisioned throughput for one or
    #                                     more global secondary indexes of the table was exceeded.
    #                                     Consider increasing your provisioning level for the
    #                                     under-provisioned global secondary indexes with the UpdateTable
    #                                     API.</p>
    #                            <note>
    #                               <p>This message is returned when provisioned throughput is
    #                                         exceeded is on a provisioned GSI.</p>
    #                            </note>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Throttling Error:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>ThrottlingError</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Messages: </p>
    #                      <ul>
    #                         <li>
    #                            <p>Throughput exceeds the current capacity of your table or
    #                                     index. DynamoDB is automatically scaling your table or
    #                                     index so please try again shortly. If exceptions persist, check
    #                                     if you have a hot key:
    #                                     https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/bp-partition-key-design.html.</p>
    #                            <note>
    #                               <p>This message is returned when writes get throttled on an
    #                                         On-Demand table as DynamoDB is automatically
    #                                         scaling the table.</p>
    #                            </note>
    #                         </li>
    #                         <li>
    #                            <p>Throughput exceeds the current capacity for one or more
    #                                     global secondary indexes. DynamoDB is automatically
    #                                     scaling your index so please try again shortly.</p>
    #                            <note>
    #                               <p>This message is returned when writes get throttled on
    #                                         an On-Demand GSI as DynamoDB is automatically
    #                                         scaling the GSI.</p>
    #                            </note>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Validation Error:</p>
    #                <ul>
    #                   <li>
    #                      <p>Code: <code>ValidationError</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Messages: </p>
    #                      <ul>
    #                         <li>
    #                            <p>One or more parameter values were invalid.</p>
    #                         </li>
    #                         <li>
    #                            <p>The update expression attempted to update the secondary
    #                                     index key beyond allowed size limits.</p>
    #                         </li>
    #                         <li>
    #                            <p>The update expression attempted to update the secondary
    #                                     index key to unsupported type.</p>
    #                         </li>
    #                         <li>
    #                            <p>An operand in the update expression has an incorrect data
    #                                     type.</p>
    #                         </li>
    #                         <li>
    #                            <p>Item size to update has exceeded the maximum allowed
    #                                     size.</p>
    #                         </li>
    #                         <li>
    #                            <p>Number overflow. Attempting to store a number with
    #                                     magnitude larger than supported range.</p>
    #                         </li>
    #                         <li>
    #                            <p>Type mismatch for attribute to update.</p>
    #                         </li>
    #                         <li>
    #                            <p>Nesting Levels have exceeded supported limits.</p>
    #                         </li>
    #                         <li>
    #                            <p>The document path provided in the update expression is
    #                                     invalid for update.</p>
    #                         </li>
    #                         <li>
    #                            <p>The provided expression refers to an attribute that does
    #                                     not exist in the item.</p>
    #                         </li>
    #                      </ul>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    #   @option params [Array<CancellationReason>] :cancellation_reasons
    # @!attribute message
    #   @return [String]
    # @!attribute cancellation_reasons
    #   <p>A list of cancellation reasons.</p>
    #   @return [Array<CancellationReason>]
    class TransactionCanceledException
      include Hearth::Structure

      MEMBERS = %i[
        message
        cancellation_reasons
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Operation was rejected because there is an ongoing transaction for the
    #             item.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class TransactionConflictException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>The transaction with the given request token is already in progress.</p>
    #          <p>
    #             Recommended Settings
    #         </p>
    #          <note>
    #             <p>
    #                 This is a general recommendation for handling the <code>TransactionInProgressException</code>. These settings help
    #                 ensure that the client retries will trigger completion of the ongoing <code>TransactWriteItems</code> request.
    #             </p>
    #          </note>
    #          <ul>
    #             <li>
    #                <p>
    #                     Set <code>clientExecutionTimeout</code> to a value that allows at least one retry to be processed after 5
    #                     seconds have elapsed since the first attempt for the <code>TransactWriteItems</code> operation.
    #                 </p>
    #             </li>
    #             <li>
    #                <p>
    #                     Set <code>socketTimeout</code> to a value a little lower than the <code>requestTimeout</code> setting.
    #                 </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>requestTimeout</code> should be set based on the time taken for the individual retries of a single
    #                     HTTP request for your use case, but setting it to 1 second or higher should work well to reduce chances of
    #                     retries and <code>TransactionInProgressException</code> errors.
    #                 </p>
    #             </li>
    #             <li>
    #                <p>
    #                     Use exponential backoff when retrying and tune backoff if needed.
    #                 </p>
    #             </li>
    #          </ul>
    #          <p>
    #             Assuming <a href="https://github.com/aws/aws-sdk-java/blob/fd409dee8ae23fb8953e0bb4dbde65536a7e0514/aws-java-sdk-core/src/main/java/com/amazonaws/retry/PredefinedRetryPolicies.java#L97">default retry policy</a>,
    #             example timeout settings based on the guidelines above are as follows:
    #         </p>
    #          <p>Example timeline:</p>
    #          <ul>
    #             <li>
    #                <p>0-1000 first attempt</p>
    #             </li>
    #             <li>
    #                <p>1000-1500 first sleep/delay (default retry policy uses 500 ms as base delay for 4xx errors)</p>
    #             </li>
    #             <li>
    #                <p>1500-2500 second attempt</p>
    #             </li>
    #             <li>
    #                <p>2500-3500 second sleep/delay (500 * 2, exponential backoff)</p>
    #             </li>
    #             <li>
    #                <p>3500-4500 third attempt</p>
    #             </li>
    #             <li>
    #                <p>4500-6500 third sleep/delay (500 * 2^2)</p>
    #             </li>
    #             <li>
    #                <p>6500-7500 fourth attempt (this can trigger inline recovery since 5 seconds have elapsed since the first attempt reached TC)</p>
    #             </li>
    #          </ul>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :message
    # @!attribute message
    #   @return [String]
    class TransactionInProgressException
      include Hearth::Structure

      MEMBERS = %i[
        message
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :resource_arn
    #   @option params [Array<String>] :tag_keys
    # @!attribute resource_arn
    #   <p>The DynamoDB resource that the tags will be removed from. This value is an Amazon
    #               Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys. Existing tags of the resource whose keys are members of this list
    #               will be removed from the DynamoDB resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput
      include Hearth::Structure

      MEMBERS = %i[
        resource_arn
        tag_keys
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    class UntagResourceOutput
      include Hearth::Structure

      MEMBERS = [].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents a request to perform an <code>UpdateItem</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, AttributeValue>] :key
    #   @option params [String] :update_expression
    #   @option params [String] :table_name
    #   @option params [String] :condition_expression
    #   @option params [Hash<String, String>] :expression_attribute_names
    #   @option params [Hash<String, AttributeValue>] :expression_attribute_values
    #   @option params [String] :return_values_on_condition_check_failure
    # @!attribute key
    #   <p>The primary key of the item to be updated. Each element consists of an attribute name
    #               and a value for that attribute.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute update_expression
    #   <p>An expression that defines one or more attributes to be updated, the action to be
    #               performed on them, and new value(s) for them.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>Name of the table for the <code>UpdateItem</code> request.</p>
    #   @return [String]
    # @!attribute condition_expression
    #   <p>A condition that must be satisfied in order for a conditional update to
    #               succeed.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute return_values_on_condition_check_failure
    #   <p>Use <code>ReturnValuesOnConditionCheckFailure</code> to get the item attributes if the
    #                   <code>Update</code> condition fails. For
    #                   <code>ReturnValuesOnConditionCheckFailure</code>, the valid values are: NONE and
    #               ALL_OLD.</p>
    #   Enum, one of: ["ALL_OLD", "NONE"]
    #   @return [String]
    class Update
      include Hearth::Structure

      MEMBERS = %i[
        key
        update_expression
        table_name
        condition_expression
        expression_attribute_names
        expression_attribute_values
        return_values_on_condition_check_failure
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [PointInTimeRecoverySpecification] :point_in_time_recovery_specification
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute point_in_time_recovery_specification
    #   <p>Represents the settings used to enable point in time recovery.</p>
    #   @return [PointInTimeRecoverySpecification]
    class UpdateContinuousBackupsInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        point_in_time_recovery_specification
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [ContinuousBackupsDescription] :continuous_backups_description
    # @!attribute continuous_backups_description
    #   <p>Represents the continuous backups and point in time recovery settings on the
    #               table.</p>
    #   @return [ContinuousBackupsDescription]
    class UpdateContinuousBackupsOutput
      include Hearth::Structure

      MEMBERS = %i[
        continuous_backups_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [String] :index_name
    #   @option params [String] :contributor_insights_action
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The global secondary index name, if applicable.</p>
    #   @return [String]
    # @!attribute contributor_insights_action
    #   <p>Represents the contributor insights action.</p>
    #   Enum, one of: ["ENABLE", "DISABLE"]
    #   @return [String]
    class UpdateContributorInsightsInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        index_name
        contributor_insights_action
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [String] :index_name
    #   @option params [String] :contributor_insights_status
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute index_name
    #   <p>The name of the global secondary index, if applicable.</p>
    #   @return [String]
    # @!attribute contributor_insights_status
    #   <p>The status of contributor insights</p>
    #   Enum, one of: ["ENABLING", "ENABLED", "DISABLING", "DISABLED", "FAILED"]
    #   @return [String]
    class UpdateContributorInsightsOutput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        index_name
        contributor_insights_status
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the new provisioned throughput settings to be applied to a global secondary
    #             index.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :index_name
    #   @option params [ProvisionedThroughput] :provisioned_throughput
    # @!attribute index_name
    #   <p>The name of the global secondary index to be updated.</p>
    #   @return [String]
    # @!attribute provisioned_throughput
    #   <p>Represents the provisioned throughput settings for the specified global secondary
    #               index.</p>
    #            <p>For current minimum and maximum provisioned throughput values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html">Service,
    #                   Account, and Table Quotas</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [ProvisionedThroughput]
    class UpdateGlobalSecondaryIndexAction
      include Hearth::Structure

      MEMBERS = %i[
        index_name
        provisioned_throughput
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :global_table_name
    #   @option params [Array<ReplicaUpdate>] :replica_updates
    # @!attribute global_table_name
    #   <p>The global table name.</p>
    #   @return [String]
    # @!attribute replica_updates
    #   <p>A list of Regions that should be added or removed from the global table.</p>
    #   @return [Array<ReplicaUpdate>]
    class UpdateGlobalTableInput
      include Hearth::Structure

      MEMBERS = %i[
        global_table_name
        replica_updates
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [GlobalTableDescription] :global_table_description
    # @!attribute global_table_description
    #   <p>Contains the details of the global table.</p>
    #   @return [GlobalTableDescription]
    class UpdateGlobalTableOutput
      include Hearth::Structure

      MEMBERS = %i[
        global_table_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :global_table_name
    #   @option params [String] :global_table_billing_mode
    #   @option params [Integer] :global_table_provisioned_write_capacity_units
    #   @option params [AutoScalingSettingsUpdate] :global_table_provisioned_write_capacity_auto_scaling_settings_update
    #   @option params [Array<GlobalTableGlobalSecondaryIndexSettingsUpdate>] :global_table_global_secondary_index_settings_update
    #   @option params [Array<ReplicaSettingsUpdate>] :replica_settings_update
    # @!attribute global_table_name
    #   <p>The name of the global table</p>
    #   @return [String]
    # @!attribute global_table_billing_mode
    #   <p>The billing mode of the global table. If <code>GlobalTableBillingMode</code> is not
    #               specified, the global table defaults to <code>PROVISIONED</code> capacity billing
    #               mode.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PROVISIONED</code> - We recommend using <code>PROVISIONED</code> for
    #                       predictable workloads. <code>PROVISIONED</code> sets the billing mode to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual">Provisioned Mode</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PAY_PER_REQUEST</code> - We recommend using <code>PAY_PER_REQUEST</code>
    #                       for unpredictable workloads. <code>PAY_PER_REQUEST</code> sets the billing mode
    #                       to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand">On-Demand Mode</a>. </p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["PROVISIONED", "PAY_PER_REQUEST"]
    #   @return [String]
    # @!attribute global_table_provisioned_write_capacity_units
    #   <p>The maximum number of writes consumed per second before DynamoDB returns a
    #                   <code>ThrottlingException.</code>
    #            </p>
    #   @return [Integer]
    # @!attribute global_table_provisioned_write_capacity_auto_scaling_settings_update
    #   <p>Auto scaling settings for managing provisioned write capacity for the global
    #               table.</p>
    #   @return [AutoScalingSettingsUpdate]
    # @!attribute global_table_global_secondary_index_settings_update
    #   <p>Represents the settings of a global secondary index for a global table that will be
    #               modified.</p>
    #   @return [Array<GlobalTableGlobalSecondaryIndexSettingsUpdate>]
    # @!attribute replica_settings_update
    #   <p>Represents the settings for a global table in a Region that will be modified.</p>
    #   @return [Array<ReplicaSettingsUpdate>]
    class UpdateGlobalTableSettingsInput
      include Hearth::Structure

      MEMBERS = %i[
        global_table_name
        global_table_billing_mode
        global_table_provisioned_write_capacity_units
        global_table_provisioned_write_capacity_auto_scaling_settings_update
        global_table_global_secondary_index_settings_update
        replica_settings_update
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :global_table_name
    #   @option params [Array<ReplicaSettingsDescription>] :replica_settings
    # @!attribute global_table_name
    #   <p>The name of the global table.</p>
    #   @return [String]
    # @!attribute replica_settings
    #   <p>The Region-specific settings for the global table.</p>
    #   @return [Array<ReplicaSettingsDescription>]
    class UpdateGlobalTableSettingsOutput
      include Hearth::Structure

      MEMBERS = %i[
        global_table_name
        replica_settings
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the input of an <code>UpdateItem</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [Hash<String, AttributeValue>] :key
    #   @option params [Hash<String, AttributeValueUpdate>] :attribute_updates
    #   @option params [Hash<String, ExpectedAttributeValue>] :expected
    #   @option params [String] :conditional_operator
    #   @option params [String] :return_values
    #   @option params [String] :return_consumed_capacity
    #   @option params [String] :return_item_collection_metrics
    #   @option params [String] :update_expression
    #   @option params [String] :condition_expression
    #   @option params [Hash<String, String>] :expression_attribute_names
    #   @option params [Hash<String, AttributeValue>] :expression_attribute_values
    #   @option params [String] :return_values_on_condition_check_failure
    # @!attribute table_name
    #   <p>The name of the table containing the item to update.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The primary key of the item to be updated. Each element consists of an attribute name
    #               and a value for that attribute.</p>
    #            <p>For the primary key, you must provide all of the attributes. For example, with a
    #               simple primary key, you only need to provide a value for the partition key. For a
    #               composite primary key, you must provide values for both the partition key and the sort
    #               key.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute attribute_updates
    #   <p>This is a legacy parameter. Use <code>UpdateExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.AttributeUpdates.html">AttributeUpdates</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, AttributeValueUpdate>]
    # @!attribute expected
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.Expected.html">Expected</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.</p>
    #   @return [Hash<String, ExpectedAttributeValue>]
    # @!attribute conditional_operator
    #   <p>This is a legacy parameter. Use <code>ConditionExpression</code> instead. For more
    #               information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LegacyConditionalParameters.ConditionalOperator.html">ConditionalOperator</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   Enum, one of: ["AND", "OR"]
    #   @return [String]
    # @!attribute return_values
    #   <p>Use <code>ReturnValues</code> if you want to get the item attributes as they appear
    #               before or after they are successfully updated. For <code>UpdateItem</code>, the valid values
    #               are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - If <code>ReturnValues</code> is not specified, or if its
    #                       value is <code>NONE</code>, then nothing is returned. (This setting is the
    #                       default for <code>ReturnValues</code>.)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_OLD</code> - Returns all of the attributes of the item, as they
    #                       appeared before the UpdateItem operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATED_OLD</code> - Returns only the updated attributes, as they appeared
    #                       before the UpdateItem operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALL_NEW</code> - Returns all of the attributes of the item, as they appear
    #                       after the UpdateItem operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATED_NEW</code> - Returns only the updated attributes, as they appear
    #                       after the UpdateItem operation.</p>
    #               </li>
    #            </ul>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #            <p>The values returned are strongly consistent.</p>
    #   Enum, one of: ["NONE", "ALL_OLD", "UPDATED_OLD", "ALL_NEW", "UPDATED_NEW"]
    #   @return [String]
    # @!attribute return_consumed_capacity
    #   <p>Determines the level of detail about either provisioned or on-demand throughput
    #               consumption that is returned in the response:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INDEXES</code> - The response includes the aggregate
    #                           <code>ConsumedCapacity</code> for the operation, together with
    #                           <code>ConsumedCapacity</code> for each table and secondary index that was
    #                       accessed.</p>
    #                  <p>Note that some operations, such as <code>GetItem</code> and
    #                           <code>BatchGetItem</code>, do not access any indexes at all. In these cases,
    #                       specifying <code>INDEXES</code> will only return <code>ConsumedCapacity</code>
    #                       information for table(s).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOTAL</code> - The response includes only the aggregate
    #                           <code>ConsumedCapacity</code> for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NONE</code> - No <code>ConsumedCapacity</code> details are included in the
    #                       response.</p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["INDEXES", "TOTAL", "NONE"]
    #   @return [String]
    # @!attribute return_item_collection_metrics
    #   <p>Determines whether item collection metrics are returned. If set to <code>SIZE</code>,
    #               the response includes statistics about item collections, if any, that were modified
    #               during the operation are returned in the response. If set to <code>NONE</code> (the
    #               default), no statistics are returned.</p>
    #   Enum, one of: ["SIZE", "NONE"]
    #   @return [String]
    # @!attribute update_expression
    #   <p>An expression that defines one or more attributes to be updated, the action to be
    #               performed on them, and new values for them.</p>
    #            <p>The following action values are available for <code>UpdateExpression</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SET</code> - Adds one or more attributes and values to an item. If any of
    #                       these attributes already exist, they are replaced by the new values. You can
    #                       also use <code>SET</code> to add or subtract from an attribute that is of type
    #                       Number. For example: <code>SET myNum = myNum + :val</code>
    #                  </p>
    #                  <p>
    #                     <code>SET</code> supports the following functions:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>if_not_exists (path, operand)</code> - if the item does not
    #                               contain an attribute at the specified path, then
    #                                   <code>if_not_exists</code> evaluates to operand; otherwise, it
    #                               evaluates to path. You can use this function to avoid overwriting an
    #                               attribute that may already be present in the item.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>list_append (operand, operand)</code> - evaluates to a list with a
    #                               new element added to it. You can append the new element to the start or
    #                               the end of the list by reversing the order of the operands.</p>
    #                     </li>
    #                  </ul>
    #                  <p>These function names are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REMOVE</code> - Removes one or more attributes from an item.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ADD</code> - Adds the specified value to the item, if the attribute does
    #                       not already exist. If the attribute does exist, then the behavior of
    #                           <code>ADD</code> depends on the data type of the attribute:</p>
    #                  <ul>
    #                     <li>
    #                        <p>If the existing attribute is a number, and if <code>Value</code> is
    #                               also a number, then <code>Value</code> is mathematically added to the
    #                               existing attribute. If <code>Value</code> is a negative number, then it
    #                               is subtracted from the existing attribute.</p>
    #                        <note>
    #                           <p>If you use <code>ADD</code> to increment or decrement a number
    #                                   value for an item that doesn't exist before the update, DynamoDB
    #                                   uses <code>0</code> as the initial value.</p>
    #                           <p>Similarly, if you use <code>ADD</code> for an existing item to
    #                                   increment or decrement an attribute value that doesn't exist before
    #                                   the update, DynamoDB uses <code>0</code> as the initial value. For
    #                                   example, suppose that the item you want to update doesn't have an
    #                                   attribute named <code>itemcount</code>, but you decide to
    #                                       <code>ADD</code> the number <code>3</code> to this attribute
    #                                   anyway. DynamoDB will create the <code>itemcount</code> attribute,
    #                                   set its initial value to <code>0</code>, and finally add
    #                                       <code>3</code> to it. The result will be a new
    #                                       <code>itemcount</code> attribute in the item, with a value of
    #                                       <code>3</code>.</p>
    #                        </note>
    #                     </li>
    #                     <li>
    #                        <p>If the existing data type is a set and if <code>Value</code> is also a
    #                               set, then <code>Value</code> is added to the existing set. For example,
    #                               if the attribute value is the set <code>[1,2]</code>, and the
    #                                   <code>ADD</code> action specified <code>[3]</code>, then the final
    #                               attribute value is <code>[1,2,3]</code>. An error occurs if an
    #                                   <code>ADD</code> action is specified for a set attribute and the
    #                               attribute type specified does not match the existing set type. </p>
    #                        <p>Both sets must have the same primitive data type. For example, if the
    #                               existing data type is a set of strings, the <code>Value</code> must also
    #                               be a set of strings.</p>
    #                     </li>
    #                  </ul>
    #                  <important>
    #                     <p>The <code>ADD</code> action only supports Number and set data types. In
    #                           addition, <code>ADD</code> can only be used on top-level attributes, not
    #                           nested attributes.</p>
    #                  </important>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETE</code> - Deletes an element from a set.</p>
    #                  <p>If a set of values is specified, then those values are subtracted from the old
    #                       set. For example, if the attribute value was the set <code>[a,b,c]</code> and
    #                       the <code>DELETE</code> action specifies <code>[a,c]</code>, then the final
    #                       attribute value is <code>[b]</code>. Specifying an empty set is an error.</p>
    #                  <important>
    #                     <p>The <code>DELETE</code> action only supports set data types. In addition,
    #                               <code>DELETE</code> can only be used on top-level attributes, not nested
    #                           attributes.</p>
    #                  </important>
    #               </li>
    #            </ul>
    #            <p>You can have many actions in a single expression, such as the following: <code>SET
    #                   a=:value1, b=:value2 DELETE :value3, :value4, :value5</code>
    #            </p>
    #            <p>For more information on update expressions, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.Modifying.html">Modifying
    #                   Items and Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute condition_expression
    #   <p>A condition that must be satisfied in order for a conditional update to
    #               succeed.</p>
    #            <p>An expression can contain any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Functions: <code>attribute_exists | attribute_not_exists | attribute_type |
    #                           contains | begins_with | size</code>
    #                  </p>
    #                  <p>These function names are case-sensitive.</p>
    #               </li>
    #               <li>
    #                  <p>Comparison operators: <code>= | <> |
    #               < | > | <= | >= |
    #               BETWEEN | IN </code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p> Logical operators: <code>AND | OR | NOT</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information about condition expressions, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Specifying Conditions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [String]
    # @!attribute expression_attribute_names
    #   <p>One or more substitution tokens for attribute names in an expression. The following
    #               are some use cases for using <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>To access an attribute whose name conflicts with a DynamoDB reserved
    #                       word.</p>
    #               </li>
    #               <li>
    #                  <p>To create a placeholder for repeating occurrences of an attribute name in an
    #                       expression.</p>
    #               </li>
    #               <li>
    #                  <p>To prevent special characters in an attribute name from being misinterpreted
    #                       in an expression.</p>
    #               </li>
    #            </ul>
    #            <p>Use the <b>#</b> character in an expression to dereference
    #               an attribute name. For example, consider the following attribute name:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Percentile</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>The name of this attribute conflicts with a reserved word, so it cannot be used
    #               directly in an expression. (For the complete list of reserved words, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html">Reserved Words</a> in the <i>Amazon DynamoDB Developer
    #               Guide</i>.) To work around this, you could specify the following for
    #                   <code>ExpressionAttributeNames</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>{"#P":"Percentile"}</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>You could then use this substitution in an expression, as in this example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>#P = :val</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Tokens that begin with the <b>:</b> character are
    #                       <i>expression attribute values</i>, which are placeholders for the
    #                   actual value at runtime.</p>
    #            </note>
    #            <p>For more information about expression attribute names, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.AccessingItemAttributes.html">Specifying Item Attributes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, String>]
    # @!attribute expression_attribute_values
    #   <p>One or more values that can be substituted in an expression.</p>
    #            <p>Use the <b>:</b> (colon) character in an expression to
    #               dereference an attribute value. For example, suppose that you wanted to check whether
    #               the value of the <code>ProductStatus</code> attribute was one of the following: </p>
    #            <p>
    #               <code>Available | Backordered | Discontinued</code>
    #            </p>
    #            <p>You would first need to specify <code>ExpressionAttributeValues</code> as
    #               follows:</p>
    #            <p>
    #               <code>{ ":avail":{"S":"Available"}, ":back":{"S":"Backordered"},
    #                   ":disc":{"S":"Discontinued"} }</code>
    #            </p>
    #            <p>You could then use these values in an expression, such as this:</p>
    #            <p>
    #               <code>ProductStatus IN (:avail, :back, :disc)</code>
    #            </p>
    #            <p>For more information on expression attribute values, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Expressions.SpecifyingConditions.html">Condition Expressions</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute return_values_on_condition_check_failure
    #   <p>An optional parameter that returns the item attributes for an <code>UpdateItem</code> operation that failed a
    #               condition check.</p>
    #            <p>There is no additional cost associated with requesting a return value aside from the
    #               small network and processing overhead of receiving a larger response. No read capacity
    #               units are consumed.</p>
    #   Enum, one of: ["ALL_OLD", "NONE"]
    #   @return [String]
    class UpdateItemInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        key
        attribute_updates
        expected
        conditional_operator
        return_values
        return_consumed_capacity
        return_item_collection_metrics
        update_expression
        condition_expression
        expression_attribute_names
        expression_attribute_values
        return_values_on_condition_check_failure
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the output of an <code>UpdateItem</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Hash<String, AttributeValue>] :attributes
    #   @option params [ConsumedCapacity] :consumed_capacity
    #   @option params [ItemCollectionMetrics] :item_collection_metrics
    # @!attribute attributes
    #   <p>A map of attribute values as they appear before or after the <code>UpdateItem</code>
    #               operation, as determined by the <code>ReturnValues</code> parameter.</p>
    #            <p>The <code>Attributes</code> map is only present if the update was successful and <code>ReturnValues</code> was
    #               specified as something other than <code>NONE</code> in the request. Each element
    #               represents one attribute.</p>
    #   @return [Hash<String, AttributeValue>]
    # @!attribute consumed_capacity
    #   <p>The capacity units consumed by the <code>UpdateItem</code> operation. The data
    #               returned includes the total provisioned throughput consumed, along with statistics for
    #               the table and any indexes involved in the operation. <code>ConsumedCapacity</code> is
    #               only returned if the <code>ReturnConsumedCapacity</code> parameter was specified. For
    #               more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ProvisionedThroughput.html#ItemSizeCalculations.Reads">Provisioned Throughput</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>.</p>
    #   @return [ConsumedCapacity]
    # @!attribute item_collection_metrics
    #   <p>Information about item collections, if any, that were affected by the
    #                   <code>UpdateItem</code> operation. <code>ItemCollectionMetrics</code> is only
    #               returned if the <code>ReturnItemCollectionMetrics</code> parameter was specified. If the
    #               table does not have any local secondary indexes, this information is not returned in the
    #               response.</p>
    #            <p>Each <code>ItemCollectionMetrics</code> element consists of:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ItemCollectionKey</code> - The partition key value of the item collection.
    #                       This is the same as the partition key value of the item itself.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SizeEstimateRangeGB</code> - An estimate of item collection size, in
    #                       gigabytes. This value is a two-element array containing a lower bound and an
    #                       upper bound for the estimate. The estimate includes the size of all the items in
    #                       the table, plus the size of all attributes projected into all of the local
    #                       secondary indexes on that table. Use this estimate to measure whether a local
    #                       secondary index is approaching its size limit.</p>
    #                  <p>The estimate is subject to change over time; therefore, do not rely on the
    #                       precision or accuracy of the estimate.</p>
    #               </li>
    #            </ul>
    #   @return [ItemCollectionMetrics]
    class UpdateItemOutput
      include Hearth::Structure

      MEMBERS = %i[
        attributes
        consumed_capacity
        item_collection_metrics
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Enables updating the configuration for Kinesis Streaming.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :approximate_creation_date_time_precision
    # @!attribute approximate_creation_date_time_precision
    #   <p>Enables updating the precision of Kinesis data stream timestamp. </p>
    #   Enum, one of: ["MILLISECOND", "MICROSECOND"]
    #   @return [String]
    class UpdateKinesisStreamingConfiguration
      include Hearth::Structure

      MEMBERS = %i[
        approximate_creation_date_time_precision
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [String] :stream_arn
    #   @option params [UpdateKinesisStreamingConfiguration] :update_kinesis_streaming_configuration
    # @!attribute table_name
    #   <p>The table name for the Kinesis streaming destination input.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN for the Kinesis stream input.</p>
    #   @return [String]
    # @!attribute update_kinesis_streaming_configuration
    #   <p>The command to update the Kinesis stream configuration.</p>
    #   @return [UpdateKinesisStreamingConfiguration]
    class UpdateKinesisStreamingDestinationInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        stream_arn
        update_kinesis_streaming_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [String] :stream_arn
    #   @option params [String] :destination_status
    #   @option params [UpdateKinesisStreamingConfiguration] :update_kinesis_streaming_configuration
    # @!attribute table_name
    #   <p>The table name for the Kinesis streaming destination output.</p>
    #   @return [String]
    # @!attribute stream_arn
    #   <p>The ARN for the Kinesis stream input.</p>
    #   @return [String]
    # @!attribute destination_status
    #   <p>The status of the attempt to update the Kinesis streaming destination output.</p>
    #   Enum, one of: ["ENABLING", "ACTIVE", "DISABLING", "DISABLED", "ENABLE_FAILED", "UPDATING"]
    #   @return [String]
    # @!attribute update_kinesis_streaming_configuration
    #   <p>The command to update the Kinesis streaming destination configuration.</p>
    #   @return [UpdateKinesisStreamingConfiguration]
    class UpdateKinesisStreamingDestinationOutput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        stream_arn
        destination_status
        update_kinesis_streaming_configuration
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents a replica to be modified.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :region_name
    #   @option params [String] :kms_master_key_id
    #   @option params [ProvisionedThroughputOverride] :provisioned_throughput_override
    #   @option params [Array<ReplicaGlobalSecondaryIndex>] :global_secondary_indexes
    #   @option params [String] :table_class_override
    # @!attribute region_name
    #   <p>The Region where the replica exists.</p>
    #   @return [String]
    # @!attribute kms_master_key_id
    #   <p>The KMS key of the replica that should be used for KMS
    #               encryption. To specify a key, use its key ID, Amazon Resource Name (ARN), alias name, or
    #               alias ARN. Note that you should only provide this parameter if the key is different from
    #               the default DynamoDB KMS key <code>alias/aws/dynamodb</code>.</p>
    #   @return [String]
    # @!attribute provisioned_throughput_override
    #   <p>Replica-specific provisioned throughput. If not specified, uses the source table's
    #               provisioned throughput settings.</p>
    #   @return [ProvisionedThroughputOverride]
    # @!attribute global_secondary_indexes
    #   <p>Replica-specific global secondary index settings.</p>
    #   @return [Array<ReplicaGlobalSecondaryIndex>]
    # @!attribute table_class_override
    #   <p>Replica-specific table class. If not specified, uses the source table's table
    #               class.</p>
    #   Enum, one of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #   @return [String]
    class UpdateReplicationGroupMemberAction
      include Hearth::Structure

      MEMBERS = %i[
        region_name
        kms_master_key_id
        provisioned_throughput_override
        global_secondary_indexes
        table_class_override
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the input of an <code>UpdateTable</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<AttributeDefinition>] :attribute_definitions
    #   @option params [String] :table_name
    #   @option params [String] :billing_mode
    #   @option params [ProvisionedThroughput] :provisioned_throughput
    #   @option params [Array<GlobalSecondaryIndexUpdate>] :global_secondary_index_updates
    #   @option params [StreamSpecification] :stream_specification
    #   @option params [SSESpecification] :sse_specification
    #   @option params [Array<ReplicationGroupUpdate>] :replica_updates
    #   @option params [String] :table_class
    #   @option params [Boolean] :deletion_protection_enabled
    # @!attribute attribute_definitions
    #   <p>An array of attributes that describe the key schema for the table and indexes. If you
    #               are adding a new global secondary index to the table, <code>AttributeDefinitions</code>
    #               must include the key element(s) of the new index.</p>
    #   @return [Array<AttributeDefinition>]
    # @!attribute table_name
    #   <p>The name of the table to be updated.</p>
    #   @return [String]
    # @!attribute billing_mode
    #   <p>Controls how you are charged for read and write throughput and how you manage
    #               capacity. When switching from pay-per-request to provisioned capacity, initial
    #               provisioned capacity values must be set. The initial provisioned capacity values are
    #               estimated based on the consumed read and write capacity of your table and global
    #               secondary indexes over the past 30 minutes.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PROVISIONED</code> - We recommend using <code>PROVISIONED</code> for
    #                       predictable workloads. <code>PROVISIONED</code> sets the billing mode to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.ProvisionedThroughput.Manual">Provisioned Mode</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PAY_PER_REQUEST</code> - We recommend using <code>PAY_PER_REQUEST</code>
    #                       for unpredictable workloads. <code>PAY_PER_REQUEST</code> sets the billing mode
    #                       to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.ReadWriteCapacityMode.html#HowItWorks.OnDemand">On-Demand Mode</a>. </p>
    #               </li>
    #            </ul>
    #   Enum, one of: ["PROVISIONED", "PAY_PER_REQUEST"]
    #   @return [String]
    # @!attribute provisioned_throughput
    #   <p>The new provisioned throughput settings for the specified table or index.</p>
    #   @return [ProvisionedThroughput]
    # @!attribute global_secondary_index_updates
    #   <p>An array of one or more global secondary indexes for the table. For each index in the
    #               array, you can request one action:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Create</code> - add a new global secondary index to the table.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Update</code> - modify the provisioned throughput settings of an existing
    #                       global secondary index.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Delete</code> - remove a global secondary index from the table.</p>
    #               </li>
    #            </ul>
    #            <p>You can create or delete only one global secondary index per <code>UpdateTable</code>
    #               operation.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.OnlineOps.html">Managing Global
    #                   Secondary Indexes</a> in the <i>Amazon DynamoDB Developer
    #                   Guide</i>. </p>
    #   @return [Array<GlobalSecondaryIndexUpdate>]
    # @!attribute stream_specification
    #   <p>Represents the DynamoDB Streams configuration for the table.</p>
    #            <note>
    #               <p>You receive a <code>ValidationException</code> if you try to enable a stream on a
    #                   table that already has a stream, or if you try to disable a stream on a table that
    #                   doesn't have a stream.</p>
    #            </note>
    #   @return [StreamSpecification]
    # @!attribute sse_specification
    #   <p>The new server-side encryption settings for the specified table.</p>
    #   @return [SSESpecification]
    # @!attribute replica_updates
    #   <p>A list of replica update actions (create, delete, or update) for the table.</p>
    #            <note>
    #               <p>This property only applies to <a href="https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables.V2.html">Version 2019.11.21 (Current)</a>
    #                   of global tables.
    #               </p>
    #            </note>
    #   @return [Array<ReplicationGroupUpdate>]
    # @!attribute table_class
    #   <p>The table class of the table to be updated. Valid values are <code>STANDARD</code> and
    #                   <code>STANDARD_INFREQUENT_ACCESS</code>.</p>
    #   Enum, one of: ["STANDARD", "STANDARD_INFREQUENT_ACCESS"]
    #   @return [String]
    # @!attribute deletion_protection_enabled
    #   <p>Indicates whether deletion protection is to be enabled (true) or disabled (false) on the table.</p>
    #   @return [Boolean]
    class UpdateTableInput
      include Hearth::Structure

      MEMBERS = %i[
        attribute_definitions
        table_name
        billing_mode
        provisioned_throughput
        global_secondary_index_updates
        stream_specification
        sse_specification
        replica_updates
        table_class
        deletion_protection_enabled
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the output of an <code>UpdateTable</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [TableDescription] :table_description
    # @!attribute table_description
    #   <p>Represents the properties of the table.</p>
    #   @return [TableDescription]
    class UpdateTableOutput
      include Hearth::Structure

      MEMBERS = %i[
        table_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [Array<GlobalSecondaryIndexAutoScalingUpdate>] :global_secondary_index_updates
    #   @option params [String] :table_name
    #   @option params [AutoScalingSettingsUpdate] :provisioned_write_capacity_auto_scaling_update
    #   @option params [Array<ReplicaAutoScalingUpdate>] :replica_updates
    # @!attribute global_secondary_index_updates
    #   <p>Represents the auto scaling settings of the global secondary indexes of the replica to
    #               be updated.</p>
    #   @return [Array<GlobalSecondaryIndexAutoScalingUpdate>]
    # @!attribute table_name
    #   <p>The name of the global table to be updated.</p>
    #   @return [String]
    # @!attribute provisioned_write_capacity_auto_scaling_update
    #   <p>Represents the auto scaling settings to be modified for a global table or global
    #               secondary index.</p>
    #   @return [AutoScalingSettingsUpdate]
    # @!attribute replica_updates
    #   <p>Represents the auto scaling settings of replicas of the table that will be
    #               modified.</p>
    #   @return [Array<ReplicaAutoScalingUpdate>]
    class UpdateTableReplicaAutoScalingInput
      include Hearth::Structure

      MEMBERS = %i[
        global_secondary_index_updates
        table_name
        provisioned_write_capacity_auto_scaling_update
        replica_updates
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [TableAutoScalingDescription] :table_auto_scaling_description
    # @!attribute table_auto_scaling_description
    #   <p>Returns information about the auto scaling settings of a table with replicas.</p>
    #   @return [TableAutoScalingDescription]
    class UpdateTableReplicaAutoScalingOutput
      include Hearth::Structure

      MEMBERS = %i[
        table_auto_scaling_description
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents the input of an <code>UpdateTimeToLive</code> operation.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [String] :table_name
    #   @option params [TimeToLiveSpecification] :time_to_live_specification
    # @!attribute table_name
    #   <p>The name of the table to be configured.</p>
    #   @return [String]
    # @!attribute time_to_live_specification
    #   <p>Represents the settings used to enable or disable Time to Live for the specified
    #               table.</p>
    #   @return [TimeToLiveSpecification]
    class UpdateTimeToLiveInput
      include Hearth::Structure

      MEMBERS = %i[
        table_name
        time_to_live_specification
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [TimeToLiveSpecification] :time_to_live_specification
    # @!attribute time_to_live_specification
    #   <p>Represents the output of an <code>UpdateTimeToLive</code> operation.</p>
    #   @return [TimeToLiveSpecification]
    class UpdateTimeToLiveOutput
      include Hearth::Structure

      MEMBERS = %i[
        time_to_live_specification
      ].freeze

      attr_accessor(*MEMBERS)
    end

    # <p>Represents an operation to perform - either <code>DeleteItem</code> or
    #                 <code>PutItem</code>. You can only request one of these operations, not both, in a
    #             single <code>WriteRequest</code>. If you do need to perform both of these operations,
    #             you need to provide two separate <code>WriteRequest</code> objects.</p>
    # @!method initialize(params = {})
    #   @param [Hash] params
    #   @option params [PutRequest] :put_request
    #   @option params [DeleteRequest] :delete_request
    # @!attribute put_request
    #   <p>A request to perform a <code>PutItem</code> operation.</p>
    #   @return [PutRequest]
    # @!attribute delete_request
    #   <p>A request to perform a <code>DeleteItem</code> operation.</p>
    #   @return [DeleteRequest]
    class WriteRequest
      include Hearth::Structure

      MEMBERS = %i[
        put_request
        delete_request
      ].freeze

      attr_accessor(*MEMBERS)
    end

  end
end
