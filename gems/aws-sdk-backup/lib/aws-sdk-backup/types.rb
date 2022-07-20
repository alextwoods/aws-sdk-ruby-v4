# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Backup
  module Types

    # <p>A list of backup options for each resource type.</p>
    #
    # @!attribute resource_type
    #   <p>Specifies an object containing resource type and backup options. The only supported
    #            resource type is Amazon EC2 instances with Windows Volume Shadow Copy Service
    #            (VSS). For a CloudFormation example, see the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/integrate-cloudformation-with-aws-backup.html">sample
    #               CloudFormation template to enable Windows VSS</a> in the <i>Backup User Guide</i>.</p>
    #            <p>Valid values: <code>EC2</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_options
    #   <p>Specifies the backup option for a selected resource. This option is only available for
    #            Windows VSS backup jobs.</p>
    #            <p>Valid values: </p>
    #            <p>Set to <code>"WindowsVSS":"enabled"</code> to enable the <code>WindowsVSS</code> backup
    #            option and create a Windows VSS backup. </p>
    #            <p>Set to <code>"WindowsVSS":"disabled"</code> to create a regular backup. The
    #               <code>WindowsVSS</code> option is not enabled by default.</p>
    #            <p>If you specify an invalid option, you get an <code>InvalidParameterValueException</code>
    #            exception.</p>
    #            <p>For more information about Windows VSS backups, see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/windows-backups.html">Creating a VSS-Enabled Windows
    #               Backup</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    AdvancedBackupSetting = ::Struct.new(
      :resource_type,
      :backup_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The required resource already exists.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute creator_request_id
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p></p>
    #
    #   @return [String]
    #
    AlreadyExistsException = ::Struct.new(
      :code,
      :message,
      :creator_request_id,
      :arn,
      :type,
      :context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains detailed information about a backup job.</p>
    #
    # @!attribute account_id
    #   <p>The account ID that owns the backup job.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_job_id
    #   <p>Uniquely identifies a request to Backup to back up a resource.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>An ARN that uniquely identifies a resource. The format of the ARN depends on the
    #            resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time a backup job is created, in Unix format and Coordinated Universal Time
    #            (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For example, the
    #            value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute completion_date
    #   <p>The date and time a job to create a backup job is completed, in Unix format and
    #            Coordinated Universal Time (UTC). The value of <code>CompletionDate</code> is accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute state
    #   <p>The current state of a resource recovery point.</p>
    #
    #   Enum, one of: ["CREATED", "PENDING", "RUNNING", "ABORTING", "ABORTED", "COMPLETED", "FAILED", "EXPIRED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A detailed message explaining the status of the job to back up a resource.</p>
    #
    #   @return [String]
    #
    # @!attribute percent_done
    #   <p>Contains an estimated percentage complete of a job at the time the job status was
    #            queried.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_size_in_bytes
    #   <p>The size, in bytes, of a backup.</p>
    #
    #   @return [Integer]
    #
    # @!attribute iam_role_arn
    #   <p>Specifies the IAM role ARN used to create the target recovery point. IAM roles other
    #            than the default role must include either <code>AWSBackup</code> or <code>AwsBackup</code>
    #            in the role name. For example,
    #               <code>arn:aws:iam::123456789012:role/AWSBackupRDSAccess</code>. Role names without those
    #            strings lack permissions to perform backup jobs.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>Contains identifying information about the creation of a backup job, including the
    #               <code>BackupPlanArn</code>, <code>BackupPlanId</code>, <code>BackupPlanVersion</code>,
    #            and <code>BackupRuleId</code> of the backup plan used to create it.</p>
    #
    #   @return [RecoveryPointCreator]
    #
    # @!attribute expected_completion_date
    #   <p>The date and time a job to back up resources is expected to be completed, in Unix format
    #            and Coordinated Universal Time (UTC). The value of <code>ExpectedCompletionDate</code> is
    #            accurate to milliseconds. For example, the value 1516925490.087 represents Friday, January
    #            26, 2018 12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute start_by
    #   <p>Specifies the time in Unix format and Coordinated Universal Time (UTC) when a backup job
    #            must be started before it is canceled. The value is calculated by adding the start window
    #            to the scheduled time. So if the scheduled time were 6:00 PM and the start window is 2
    #            hours, the <code>StartBy</code> time would be 8:00 PM on the date specified. The value of
    #               <code>StartBy</code> is accurate to milliseconds. For example, the value 1516925490.087
    #            represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource to be backed up; for example, an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database. For Windows Volume Shadow Copy Service (VSS) backups, the only
    #            supported resource type is Amazon EC2.</p>
    #
    #   @return [String]
    #
    # @!attribute bytes_transferred
    #   <p>The size in bytes transferred to a backup vault at the time that the job status was
    #            queried.</p>
    #
    #   @return [Integer]
    #
    # @!attribute backup_options
    #   <p>Specifies the backup option for a selected resource. This option is only available for
    #            Windows Volume Shadow Copy Service (VSS) backup jobs.</p>
    #            <p>Valid values: Set to <code>"WindowsVSS":"enabled"</code> to enable the
    #               <code>WindowsVSS</code> backup option and create a Windows VSS backup. Set to
    #               <code>"WindowsVSS":"disabled"</code> to create a regular backup. If you specify an
    #            invalid option, you get an <code>InvalidParameterValueException</code> exception.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute backup_type
    #   <p>Represents the type of backup for a backup job.</p>
    #
    #   @return [String]
    #
    BackupJob = ::Struct.new(
      :account_id,
      :backup_job_id,
      :backup_vault_name,
      :backup_vault_arn,
      :recovery_point_arn,
      :resource_arn,
      :creation_date,
      :completion_date,
      :state,
      :status_message,
      :percent_done,
      :backup_size_in_bytes,
      :iam_role_arn,
      :created_by,
      :expected_completion_date,
      :start_by,
      :resource_type,
      :bytes_transferred,
      :backup_options,
      :backup_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BackupJobState
    #
    module BackupJobState
      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      ABORTING = "ABORTING"

      # No documentation available.
      #
      ABORTED = "ABORTED"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      EXPIRED = "EXPIRED"
    end

    # <p>Contains an optional backup plan display name and an array of <code>BackupRule</code>
    #          objects, each of which specifies a backup rule. Each rule in a backup plan is a separate
    #          scheduled task and can back up a different selection of Amazon Web Services
    #          resources.</p>
    #
    # @!attribute backup_plan_name
    #   <p>The display name of a backup plan. Must contain 1 to 50 alphanumeric or '-_.'
    #            characters.</p>
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>An array of <code>BackupRule</code> objects, each of which specifies a scheduled task
    #            that is used to back up a selection of resources. </p>
    #
    #   @return [Array<BackupRule>]
    #
    # @!attribute advanced_backup_settings
    #   <p>Contains a list of <code>BackupOptions</code> for each resource type.</p>
    #
    #   @return [Array<AdvancedBackupSetting>]
    #
    BackupPlan = ::Struct.new(
      :backup_plan_name,
      :rules,
      :advanced_backup_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains an optional backup plan display name and an array of <code>BackupRule</code>
    #          objects, each of which specifies a backup rule. Each rule in a backup plan is a separate
    #          scheduled task. </p>
    #
    # @!attribute backup_plan_name
    #   <p>The display name of a backup plan. Must contain 1 to 50 alphanumeric or '-_.'
    #            characters.</p>
    #
    #   @return [String]
    #
    # @!attribute rules
    #   <p>An array of <code>BackupRule</code> objects, each of which specifies a scheduled task
    #            that is used to back up a selection of resources.</p>
    #
    #   @return [Array<BackupRuleInput>]
    #
    # @!attribute advanced_backup_settings
    #   <p>Specifies a list of <code>BackupOptions</code> for each resource type. These settings
    #            are only available for Windows Volume Shadow Copy Service (VSS) backup jobs.</p>
    #
    #   @return [Array<AdvancedBackupSetting>]
    #
    BackupPlanInput = ::Struct.new(
      :backup_plan_name,
      :rules,
      :advanced_backup_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object specifying metadata associated with a backup plan template.</p>
    #
    # @!attribute backup_plan_template_id
    #   <p>Uniquely identifies a stored backup plan template.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_plan_template_name
    #   <p>The optional display name of a backup plan template.</p>
    #
    #   @return [String]
    #
    BackupPlanTemplatesListMember = ::Struct.new(
      :backup_plan_template_id,
      :backup_plan_template_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains metadata about a backup plan.</p>
    #
    # @!attribute backup_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup plan; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time a resource backup plan is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute deletion_date
    #   <p>The date and time a backup plan is deleted, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>DeletionDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute version_id
    #   <p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
    #            long. Version IDs cannot be edited.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_plan_name
    #   <p>The display name of a saved backup plan.</p>
    #
    #   @return [String]
    #
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice. This parameter is optional.</p>
    #            <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    #
    #   @return [String]
    #
    # @!attribute last_execution_date
    #   <p>The last time a job to back up resources was run with this rule. A date and time, in
    #            Unix format and Coordinated Universal Time (UTC). The value of
    #               <code>LastExecutionDate</code> is accurate to milliseconds. For example, the value
    #            1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute advanced_backup_settings
    #   <p>Contains a list of <code>BackupOptions</code> for a resource type.</p>
    #
    #   @return [Array<AdvancedBackupSetting>]
    #
    BackupPlansListMember = ::Struct.new(
      :backup_plan_arn,
      :backup_plan_id,
      :creation_date,
      :deletion_date,
      :version_id,
      :backup_plan_name,
      :creator_request_id,
      :last_execution_date,
      :advanced_backup_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a scheduled task used to back up a selection of resources.</p>
    #
    # @!attribute rule_name
    #   <p>A display name for a backup rule. Must contain 1 to 50 alphanumeric or '-_.'
    #            characters.</p>
    #
    #   @return [String]
    #
    # @!attribute target_backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_expression
    #   <p>A cron expression in UTC specifying when Backup initiates a backup job. For
    #            more information about Amazon Web Services cron expressions, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html">Schedule Expressions for Rules</a> in the <i>Amazon CloudWatch Events User
    #               Guide.</i>. Two examples of Amazon Web Services cron expressions are <code> 15 * ?
    #               * * *</code> (take a backup every hour at 15 minutes past the hour) and <code>0 12 * * ?
    #               *</code> (take a backup every day at 12 noon UTC). For a table of examples, click the
    #            preceding link and scroll down the page.</p>
    #
    #   @return [String]
    #
    # @!attribute start_window_minutes
    #   <p>A value in minutes after a backup is scheduled before a job will be canceled if it
    #            doesn't start successfully. This value is optional.</p>
    #
    #   @return [Integer]
    #
    # @!attribute completion_window_minutes
    #   <p>A value in minutes after a backup job is successfully started before it must be
    #            completed or it will be canceled by Backup. This value is optional.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lifecycle
    #   <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #            it expires. Backup transitions and expires backups automatically according to
    #            the lifecycle that you define. </p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #            cold after days” setting. The “transition to cold after days” setting cannot be changed
    #            after a backup has been transitioned to cold. </p>
    #            <p>Only resource types that support full Backup management can transition their
    #            backups to cold storage. Those resource types are listed in the "Full Backup
    #            management" section of the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html features-by-resource"> Feature
    #               availability by resource</a> table. Backup ignores this expression for
    #            other resource types.</p>
    #
    #   @return [Lifecycle]
    #
    # @!attribute recovery_point_tags
    #   <p>An array of key-value pair strings that are assigned to resources that are associated
    #            with this rule when restored from backup.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute rule_id
    #   <p>Uniquely identifies a rule that is used to schedule the backup of a selection of
    #            resources.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_actions
    #   <p>An array of <code>CopyAction</code> objects, which contains the details of the copy
    #            operation.</p>
    #
    #   @return [Array<CopyAction>]
    #
    # @!attribute enable_continuous_backup
    #   <p>Specifies whether Backup creates continuous backups. True causes Backup to create continuous backups capable of point-in-time restore (PITR). False
    #            (or not specified) causes Backup to create snapshot backups.</p>
    #
    #   @return [Boolean]
    #
    BackupRule = ::Struct.new(
      :rule_name,
      :target_backup_vault_name,
      :schedule_expression,
      :start_window_minutes,
      :completion_window_minutes,
      :lifecycle,
      :recovery_point_tags,
      :rule_id,
      :copy_actions,
      :enable_continuous_backup,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Backup::Types::BackupRule "\
          "rule_name=#{rule_name || 'nil'}, "\
          "target_backup_vault_name=#{target_backup_vault_name || 'nil'}, "\
          "schedule_expression=#{schedule_expression || 'nil'}, "\
          "start_window_minutes=#{start_window_minutes || 'nil'}, "\
          "completion_window_minutes=#{completion_window_minutes || 'nil'}, "\
          "lifecycle=#{lifecycle || 'nil'}, "\
          "recovery_point_tags=\"[SENSITIVE]\", "\
          "rule_id=#{rule_id || 'nil'}, "\
          "copy_actions=#{copy_actions || 'nil'}, "\
          "enable_continuous_backup=#{enable_continuous_backup || 'nil'}>"
      end
    end

    # <p>Specifies a scheduled task used to back up a selection of resources.</p>
    #
    # @!attribute rule_name
    #   <p>A display name for a backup rule. Must contain 1 to 50 alphanumeric or '-_.'
    #            characters.</p>
    #
    #   @return [String]
    #
    # @!attribute target_backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute schedule_expression
    #   <p>A CRON expression in UTC specifying when Backup initiates a backup
    #            job.</p>
    #
    #   @return [String]
    #
    # @!attribute start_window_minutes
    #   <p>A value in minutes after a backup is scheduled before a job will be canceled if it
    #            doesn't start successfully. This value is optional.</p>
    #
    #   @return [Integer]
    #
    # @!attribute completion_window_minutes
    #   <p>A value in minutes after a backup job is successfully started before it must be
    #            completed or it will be canceled by Backup. This value is optional.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lifecycle
    #   <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #            it expires. Backup will transition and expire backups automatically according
    #            to the lifecycle that you define. </p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #            cold after days” setting. The “transition to cold after days” setting cannot be changed
    #            after a backup has been transitioned to cold.</p>
    #            <p>Only resource types that support full Backup management can transition their
    #            backups to cold storage. Those resource types are listed in the "Full Backup
    #            management" section of the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html features-by-resource"> Feature
    #               availability by resource</a> table. Backup ignores this expression for
    #            other resource types.</p>
    #
    #   @return [Lifecycle]
    #
    # @!attribute recovery_point_tags
    #   <p>To help organize your resources, you can assign your own metadata to the resources that
    #            you create. Each tag is a key-value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute copy_actions
    #   <p>An array of <code>CopyAction</code> objects, which contains the details of the copy
    #            operation.</p>
    #
    #   @return [Array<CopyAction>]
    #
    # @!attribute enable_continuous_backup
    #   <p>Specifies whether Backup creates continuous backups. True causes Backup to create continuous backups capable of point-in-time restore (PITR). False
    #            (or not specified) causes Backup to create snapshot backups.</p>
    #
    #   @return [Boolean]
    #
    BackupRuleInput = ::Struct.new(
      :rule_name,
      :target_backup_vault_name,
      :schedule_expression,
      :start_window_minutes,
      :completion_window_minutes,
      :lifecycle,
      :recovery_point_tags,
      :copy_actions,
      :enable_continuous_backup,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Backup::Types::BackupRuleInput "\
          "rule_name=#{rule_name || 'nil'}, "\
          "target_backup_vault_name=#{target_backup_vault_name || 'nil'}, "\
          "schedule_expression=#{schedule_expression || 'nil'}, "\
          "start_window_minutes=#{start_window_minutes || 'nil'}, "\
          "completion_window_minutes=#{completion_window_minutes || 'nil'}, "\
          "lifecycle=#{lifecycle || 'nil'}, "\
          "recovery_point_tags=\"[SENSITIVE]\", "\
          "copy_actions=#{copy_actions || 'nil'}, "\
          "enable_continuous_backup=#{enable_continuous_backup || 'nil'}>"
      end
    end

    # <p>Used to specify a set of resources to a backup plan.</p>
    #
    # @!attribute selection_name
    #   <p>The display name of a resource selection document. Must contain 1 to 50 alphanumeric or
    #            '-_.' characters.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role_arn
    #   <p>The ARN of the IAM role that Backup uses to authenticate when backing up the
    #            target resource; for example, <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute resources
    #   <p>A list of Amazon Resource Names (ARNs) to assign to a backup plan. The maximum number of
    #            ARNs is 500 without wildcards, or 30 ARNs with wildcards.</p>
    #            <p>If you need to assign many resources to a backup plan, consider a different resource
    #            selection strategy, such as assigning all resources of a resource type or refining your
    #            resource selection using tags.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute list_of_tags
    #   <p>A list of conditions that you define to assign resources to your backup plans using
    #            tags. For example, <code>"StringEquals": {"Department": "accounting"</code>. Condition
    #            operators are case sensitive.</p>
    #            <p>
    #               <code>ListOfTags</code> differs from <code>Conditions</code> as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>When you specify more than one condition, you assign all resources that match AT
    #                  LEAST ONE condition (using OR logic).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ListOfTags</code> only supports <code>StringEquals</code>.
    #                     <code>Conditions</code> supports <code>StringEquals</code>,
    #                     <code>StringLike</code>, <code>StringNotEquals</code>, and
    #                     <code>StringNotLike</code>. </p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<Condition>]
    #
    # @!attribute not_resources
    #   <p>A list of Amazon Resource Names (ARNs) to exclude from a backup plan. The maximum number
    #            of ARNs is 500 without wildcards, or 30 ARNs with wildcards.</p>
    #            <p>If you need to exclude many resources from a backup plan, consider a different resource
    #            selection strategy, such as assigning only one or a few resource types or refining your
    #            resource selection using tags.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute conditions
    #   <p>A list of conditions that you define to assign resources to your backup plans using
    #            tags. For example, <code>"StringEquals": {"Department": "accounting"</code>. Condition
    #            operators are case sensitive.</p>
    #            <p>
    #               <code>Conditions</code> differs from <code>ListOfTags</code> as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>When you specify more than one condition, you only assign the resources that match
    #                  ALL conditions (using AND logic).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Conditions</code> supports <code>StringEquals</code>,
    #                     <code>StringLike</code>, <code>StringNotEquals</code>, and
    #                     <code>StringNotLike</code>. <code>ListOfTags</code> only supports
    #                     <code>StringEquals</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Conditions]
    #
    BackupSelection = ::Struct.new(
      :selection_name,
      :iam_role_arn,
      :resources,
      :list_of_tags,
      :not_resources,
      :conditions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains metadata about a <code>BackupSelection</code> object.</p>
    #
    # @!attribute selection_id
    #   <p>Uniquely identifies a request to assign a set of resources to a backup plan.</p>
    #
    #   @return [String]
    #
    # @!attribute selection_name
    #   <p>The display name of a resource selection document.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time a backup plan is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice. This parameter is optional.</p>
    #            <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role_arn
    #   <p>Specifies the IAM role Amazon Resource Name (ARN) to create the target recovery point;
    #            for example, <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #
    #   @return [String]
    #
    BackupSelectionsListMember = ::Struct.new(
      :selection_id,
      :selection_name,
      :backup_plan_id,
      :creation_date,
      :creator_request_id,
      :iam_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BackupVaultEvent
    #
    module BackupVaultEvent
      # No documentation available.
      #
      BACKUP_JOB_STARTED = "BACKUP_JOB_STARTED"

      # No documentation available.
      #
      BACKUP_JOB_COMPLETED = "BACKUP_JOB_COMPLETED"

      # No documentation available.
      #
      BACKUP_JOB_SUCCESSFUL = "BACKUP_JOB_SUCCESSFUL"

      # No documentation available.
      #
      BACKUP_JOB_FAILED = "BACKUP_JOB_FAILED"

      # No documentation available.
      #
      BACKUP_JOB_EXPIRED = "BACKUP_JOB_EXPIRED"

      # No documentation available.
      #
      RESTORE_JOB_STARTED = "RESTORE_JOB_STARTED"

      # No documentation available.
      #
      RESTORE_JOB_COMPLETED = "RESTORE_JOB_COMPLETED"

      # No documentation available.
      #
      RESTORE_JOB_SUCCESSFUL = "RESTORE_JOB_SUCCESSFUL"

      # No documentation available.
      #
      RESTORE_JOB_FAILED = "RESTORE_JOB_FAILED"

      # No documentation available.
      #
      COPY_JOB_STARTED = "COPY_JOB_STARTED"

      # No documentation available.
      #
      COPY_JOB_SUCCESSFUL = "COPY_JOB_SUCCESSFUL"

      # No documentation available.
      #
      COPY_JOB_FAILED = "COPY_JOB_FAILED"

      # No documentation available.
      #
      RECOVERY_POINT_MODIFIED = "RECOVERY_POINT_MODIFIED"

      # No documentation available.
      #
      BACKUP_PLAN_CREATED = "BACKUP_PLAN_CREATED"

      # No documentation available.
      #
      BACKUP_PLAN_MODIFIED = "BACKUP_PLAN_MODIFIED"

      # No documentation available.
      #
      S3_BACKUP_OBJECT_FAILED = "S3_BACKUP_OBJECT_FAILED"

      # No documentation available.
      #
      S3_RESTORE_OBJECT_FAILED = "S3_RESTORE_OBJECT_FAILED"
    end

    # <p>Contains metadata about a backup vault.</p>
    #
    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time a resource backup is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute encryption_key_arn
    #   <p>A server-side encryption key you can specify to encrypt your backups from services
    #         that support full Backup management; for example,
    #         <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.
    #         If you specify a key, you must specify its ARN, not its alias. If you do not specify a key,
    #         Backup creates a KMS key for you by default.</p>
    #            <p>To learn which Backup services support full Backup management
    #            and how Backup handles encryption for backups from services that do not yet support
    #            full Backup, see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/encryption.html">
    #               Encryption for backups in Backup</a>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice. This parameter is optional.</p>
    #            <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_recovery_points
    #   <p>The number of recovery points that are stored in a backup vault.</p>
    #
    #   @return [Integer]
    #
    # @!attribute locked
    #   <p>A Boolean value that indicates whether Backup Vault Lock applies to the
    #            selected backup vault. If <code>true</code>, Vault Lock prevents delete and update
    #            operations on the recovery points in the selected vault.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute min_retention_days
    #   <p>The Backup Vault Lock setting that specifies the minimum retention period
    #            that the vault retains its recovery points. If this parameter is not specified, Vault Lock
    #            does not enforce a minimum retention period.</p>
    #            <p>If specified, any backup or copy job to the vault must have a lifecycle policy with a
    #            retention period equal to or longer than the minimum retention period. If the job's
    #            retention period is shorter than that minimum retention period, then the vault fails the
    #            backup or copy job, and you should either modify your lifecycle settings or use a different
    #            vault. Recovery points already stored in the vault prior to Vault Lock are not
    #            affected.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_retention_days
    #   <p>The Backup Vault Lock setting that specifies the maximum retention period
    #            that the vault retains its recovery points. If this parameter is not specified, Vault Lock
    #            does not enforce a maximum retention period on the recovery points in the vault (allowing
    #            indefinite storage).</p>
    #            <p>If specified, any backup or copy job to the vault must have a lifecycle policy with a
    #            retention period equal to or shorter than the maximum retention period. If the job's
    #            retention period is longer than that maximum retention period, then the vault fails the
    #            backup or copy job, and you should either modify your lifecycle settings or use a different
    #            vault. Recovery points already stored in the vault prior to Vault Lock are not
    #            affected.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lock_date
    #   <p>The date and time when Backup Vault Lock configuration becomes immutable,
    #            meaning it cannot be changed or deleted.</p>
    #            <p>If you applied Vault Lock to your vault without specifying a lock date, you can change
    #            your Vault Lock settings, or delete Vault Lock from the vault entirely, at any time.</p>
    #            <p>This value is in Unix format, Coordinated Universal Time (UTC), and accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    BackupVaultListMember = ::Struct.new(
      :backup_vault_name,
      :backup_vault_arn,
      :creation_date,
      :encryption_key_arn,
      :creator_request_id,
      :number_of_recovery_points,
      :locked,
      :min_retention_days,
      :max_retention_days,
      :lock_date,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.number_of_recovery_points ||= 0
      end
    end

    # <p>Contains <code>DeleteAt</code> and <code>MoveToColdStorageAt</code> timestamps, which
    #          are used to specify a lifecycle for a recovery point.</p>
    #          <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #          it expires. Backup transitions and expires backups automatically according to
    #          the lifecycle that you define.</p>
    #          <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #          days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #          cold after days” setting. The “transition to cold after days” setting cannot be changed
    #          after a backup has been transitioned to cold.</p>
    #          <p>Only resource types that support full Backup management can transition their
    #          backups to cold storage. Those resource types are listed in the "Full Backup
    #          management" section of the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource"> Feature
    #             availability by resource</a> table. Backup ignores this expression for
    #          other resource types.</p>
    #
    # @!attribute move_to_cold_storage_at
    #   <p>A timestamp that specifies when to transition a recovery point to cold storage.</p>
    #
    #   @return [Time]
    #
    # @!attribute delete_at
    #   <p>A timestamp that specifies when to delete a recovery point.</p>
    #
    #   @return [Time]
    #
    CalculatedLifecycle = ::Struct.new(
      :move_to_cold_storage_at,
      :delete_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains an array of triplets made up of a condition type (such as
    #             <code>StringEquals</code>), a key, and a value. Used to filter resources using their
    #          tags and assign them to a backup plan. Case sensitive.</p>
    #
    # @!attribute condition_type
    #   <p>An operation applied to a key-value pair used to assign resources to your backup plan.
    #            Condition only supports <code>StringEquals</code>. For more flexible assignment options,
    #            including <code>StringLike</code> and the ability to exclude resources from your backup
    #            plan, use <code>Conditions</code> (with an "s" on the end) for your <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BackupSelection.html">
    #                  <code>BackupSelection</code>
    #               </a>.</p>
    #
    #   Enum, one of: ["STRINGEQUALS"]
    #
    #   @return [String]
    #
    # @!attribute condition_key
    #   <p>The key in a key-value pair. For example, in the tag <code>Department:
    #            Accounting</code>, <code>Department</code> is the key.</p>
    #
    #   @return [String]
    #
    # @!attribute condition_value
    #   <p>The value in a key-value pair. For example, in the tag <code>Department:
    #               Accounting</code>, <code>Accounting</code> is the value.</p>
    #
    #   @return [String]
    #
    Condition = ::Struct.new(
      :condition_type,
      :condition_key,
      :condition_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Includes information about tags you define to assign tagged resources to a backup
    #          plan.</p>
    #
    # @!attribute condition_key
    #   <p>The key in a key-value pair. For example, in the tag <code>Department:
    #            Accounting</code>, <code>Department</code> is the key.</p>
    #
    #   @return [String]
    #
    # @!attribute condition_value
    #   <p>The value in a key-value pair. For example, in the tag <code>Department:
    #               Accounting</code>, <code>Accounting</code> is the value.</p>
    #
    #   @return [String]
    #
    ConditionParameter = ::Struct.new(
      :condition_key,
      :condition_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConditionType
    #
    module ConditionType
      # No documentation available.
      #
      STRINGEQUALS = "STRINGEQUALS"
    end

    # <p>Contains information about which resources to include or exclude from a backup plan
    #          using their tags. Conditions are case sensitive.</p>
    #
    # @!attribute string_equals
    #   <p>Filters the values of your tagged resources for only those resources that you tagged
    #            with the same value. Also called "exact matching."</p>
    #
    #   @return [Array<ConditionParameter>]
    #
    # @!attribute string_not_equals
    #   <p>Filters the values of your tagged resources for only those resources that you tagged
    #            that do not have the same value. Also called "negated matching."</p>
    #
    #   @return [Array<ConditionParameter>]
    #
    # @!attribute string_like
    #   <p>Filters the values of your tagged resources for matching tag values with the use of a
    #            wildcard character (*) anywhere in the string. For example, "prod*" or "*rod*" matches the
    #            tag value "production".</p>
    #
    #   @return [Array<ConditionParameter>]
    #
    # @!attribute string_not_like
    #   <p>Filters the values of your tagged resources for non-matching tag values with the use of
    #            a wildcard character (*) anywhere in the string.</p>
    #
    #   @return [Array<ConditionParameter>]
    #
    Conditions = ::Struct.new(
      :string_equals,
      :string_not_equals,
      :string_like,
      :string_not_like,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Backup can't perform the action that you requested until it finishes
    #          performing a previous action. Try again later.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p></p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :code,
      :message,
      :type,
      :context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of parameters for a control. A control can have zero, one, or more than one
    #          parameter. An example of a control with two parameters is: "backup plan frequency is at
    #          least <code>daily</code> and the retention period is at least <code>1 year</code>". The
    #          first parameter is <code>daily</code>. The second parameter is <code>1 year</code>.</p>
    #
    # @!attribute parameter_name
    #   <p>The name of a parameter, for example, <code>BackupPlanFrequency</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_value
    #   <p>The value of parameter, for example, <code>hourly</code>.</p>
    #
    #   @return [String]
    #
    ControlInputParameter = ::Struct.new(
      :parameter_name,
      :parameter_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A framework consists of one or more controls. Each control has its own control scope.
    #          The control scope can include one or more resource types, a combination of a tag key and
    #          value, or a combination of one resource type and one resource ID. If no scope is specified,
    #          evaluations for the rule are triggered when any resource in your recording group changes in
    #          configuration.</p>
    #          <note>
    #             <p>To set a control scope that includes all of a particular resource, leave the
    #                <code>ControlScope</code> empty or do not pass it when calling
    #                <code>CreateFramework</code>.</p>
    #          </note>
    #
    # @!attribute compliance_resource_ids
    #   <p>The ID of the only Amazon Web Services resource that you want your control scope to
    #            contain.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute compliance_resource_types
    #   <p>Describes whether the control scope includes one or more types of resources, such as
    #               <code>EFS</code> or <code>RDS</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The tag key-value pair applied to those Amazon Web Services resources that you want to
    #            trigger an evaluation for a rule. A maximum of one key-value pair can be provided. The tag
    #            value is optional, but it cannot be an empty string. The structure to assign a tag is:
    #               <code>[{"Key":"string","Value":"string"}]</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    ControlScope = ::Struct.new(
      :compliance_resource_ids,
      :compliance_resource_types,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the copy operation.</p>
    #
    # @!attribute lifecycle
    #   <p>Contains an array of <code>Transition</code> objects specifying how long in days before
    #            a recovery point transitions to cold storage or is deleted.</p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, on the console, the “retention” setting must be 90 days greater than the
    #            “transition to cold after days” setting. The “transition to cold after days” setting cannot
    #            be changed after a backup has been transitioned to cold.</p>
    #            <p>Only resource types that support full Backup management can transition their
    #            backups to cold storage. Those resource types are listed in the "Full Backup
    #            management" section of the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html features-by-resource"> Feature
    #               availability by resource</a> table. Backup ignores this expression for
    #            other resource types.</p>
    #
    #   @return [Lifecycle]
    #
    # @!attribute destination_backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies the destination backup vault for
    #            the copied backup. For example,
    #               <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>
    #
    #   @return [String]
    #
    CopyAction = ::Struct.new(
      :lifecycle,
      :destination_backup_vault_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains detailed information about a copy job.</p>
    #
    # @!attribute account_id
    #   <p>The account ID that owns the copy job.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_job_id
    #   <p>Uniquely identifies a copy job.</p>
    #
    #   @return [String]
    #
    # @!attribute source_backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a source copy vault; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute source_recovery_point_arn
    #   <p>An ARN that uniquely identifies a source recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a destination copy vault; for
    #            example, <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_recovery_point_arn
    #   <p>An ARN that uniquely identifies a destination recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Web Services resource to be copied; for example, an Amazon Elastic Block Store
    #               (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS)
    #            database.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time a copy job is created, in Unix format and Coordinated Universal Time
    #            (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For example, the
    #            value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute completion_date
    #   <p>The date and time a copy job is completed, in Unix format and Coordinated Universal Time
    #            (UTC). The value of <code>CompletionDate</code> is accurate to milliseconds. For example,
    #            the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute state
    #   <p>The current state of a copy job.</p>
    #
    #   Enum, one of: ["CREATED", "RUNNING", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A detailed message explaining the status of the job to copy a resource.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_size_in_bytes
    #   <p>The size, in bytes, of a copy job.</p>
    #
    #   @return [Integer]
    #
    # @!attribute iam_role_arn
    #   <p>Specifies the IAM role ARN used to copy the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>Contains information about the backup plan and rule that Backup used to
    #            initiate the recovery point backup.</p>
    #
    #   @return [RecoveryPointCreator]
    #
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource to be copied; for example, an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.</p>
    #
    #   @return [String]
    #
    CopyJob = ::Struct.new(
      :account_id,
      :copy_job_id,
      :source_backup_vault_arn,
      :source_recovery_point_arn,
      :destination_backup_vault_arn,
      :destination_recovery_point_arn,
      :resource_arn,
      :creation_date,
      :completion_date,
      :state,
      :status_message,
      :backup_size_in_bytes,
      :iam_role_arn,
      :created_by,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CopyJobState
    #
    module CopyJobState
      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # @!attribute backup_plan
    #   <p>Specifies the body of a backup plan. Includes a <code>BackupPlanName</code> and one or
    #            more sets of <code>Rules</code>.</p>
    #
    #   @return [BackupPlanInput]
    #
    # @!attribute backup_plan_tags
    #   <p>To help organize your resources, you can assign your own metadata to the resources that
    #            you create. Each tag is a key-value pair. The specified tags are assigned to all backups
    #            created with this plan.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute creator_request_id
    #   <p>Identifies the request and allows failed requests to be retried without the risk of
    #            running the operation twice. If the request includes a <code>CreatorRequestId</code> that
    #            matches an existing backup plan, that plan is returned. This parameter is optional.</p>
    #            <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    #
    #   @return [String]
    #
    CreateBackupPlanInput = ::Struct.new(
      :backup_plan,
      :backup_plan_tags,
      :creator_request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Backup::Types::CreateBackupPlanInput "\
          "backup_plan=#{backup_plan || 'nil'}, "\
          "backup_plan_tags=\"[SENSITIVE]\", "\
          "creator_request_id=#{creator_request_id || 'nil'}>"
      end
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup plan; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time that a backup plan is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute version_id
    #   <p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
    #            long. They cannot be edited.</p>
    #
    #   @return [String]
    #
    # @!attribute advanced_backup_settings
    #   <p>A list of <code>BackupOptions</code> settings for a resource type. This option is only
    #            available for Windows Volume Shadow Copy Service (VSS) backup jobs.</p>
    #
    #   @return [Array<AdvancedBackupSetting>]
    #
    CreateBackupPlanOutput = ::Struct.new(
      :backup_plan_id,
      :backup_plan_arn,
      :creation_date,
      :version_id,
      :advanced_backup_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies the backup plan to be associated with the selection of
    #            resources.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_selection
    #   <p>Specifies the body of a request to assign a set of resources to a backup plan.</p>
    #
    #   @return [BackupSelection]
    #
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice. This parameter is optional.</p>
    #            <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    #
    #   @return [String]
    #
    CreateBackupSelectionInput = ::Struct.new(
      :backup_plan_id,
      :backup_selection,
      :creator_request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute selection_id
    #   <p>Uniquely identifies the body of a request to assign a set of resources to a backup
    #            plan.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time a backup selection is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    CreateBackupSelectionOutput = ::Struct.new(
      :selection_id,
      :backup_plan_id,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of letters, numbers, and hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_vault_tags
    #   <p>Metadata that you can assign to help organize the resources that you create. Each tag is
    #            a key-value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute encryption_key_arn
    #   <p>The server-side encryption key that is used to protect your backups; for example,
    #               <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice. This parameter is optional.</p>
    #            <p>If used, this parameter must contain 1 to 50 alphanumeric or '-_.' characters.</p>
    #
    #   @return [String]
    #
    CreateBackupVaultInput = ::Struct.new(
      :backup_vault_name,
      :backup_vault_tags,
      :encryption_key_arn,
      :creator_request_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Backup::Types::CreateBackupVaultInput "\
          "backup_vault_name=#{backup_vault_name || 'nil'}, "\
          "backup_vault_tags=\"[SENSITIVE]\", "\
          "encryption_key_arn=#{encryption_key_arn || 'nil'}, "\
          "creator_request_id=#{creator_request_id || 'nil'}>"
      end
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Region where they are
    #            created. They consist of lowercase letters, numbers, and hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time a backup vault is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    CreateBackupVaultOutput = ::Struct.new(
      :backup_vault_name,
      :backup_vault_arn,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute framework_name
    #   <p>The unique name of the framework. The name must be between 1 and 256 characters,
    #            starting with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and
    #            underscores (_).</p>
    #
    #   @return [String]
    #
    # @!attribute framework_description
    #   <p>An optional description of the framework with a maximum of 1,024 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute framework_controls
    #   <p>A list of the controls that make up the framework. Each control in the list has a name,
    #            input parameters, and scope.</p>
    #
    #   @return [Array<FrameworkControl>]
    #
    # @!attribute idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>CreateFrameworkInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #
    #   @return [String]
    #
    # @!attribute framework_tags
    #   <p>Metadata that you can assign to help organize the frameworks that you create. Each tag
    #            is a key-value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateFrameworkInput = ::Struct.new(
      :framework_name,
      :framework_description,
      :framework_controls,
      :idempotency_token,
      :framework_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute framework_name
    #   <p>The unique name of the framework. The name must be between 1 and 256 characters,
    #            starting with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and
    #            underscores (_).</p>
    #
    #   @return [String]
    #
    # @!attribute framework_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #
    #   @return [String]
    #
    CreateFrameworkOutput = ::Struct.new(
      :framework_name,
      :framework_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_plan_name
    #   <p>The unique name of the report plan. The name must be between 1 and 256 characters,
    #            starting with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and
    #            underscores (_).</p>
    #
    #   @return [String]
    #
    # @!attribute report_plan_description
    #   <p>An optional description of the report plan with a maximum of 1,024 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute report_delivery_channel
    #   <p>A structure that contains information about where and how to deliver your reports,
    #            specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your
    #            reports.</p>
    #
    #   @return [ReportDeliveryChannel]
    #
    # @!attribute report_setting
    #   <p>Identifies the report template for the report. Reports are built using a report
    #            template. The report templates are:</p>
    #            <p>
    #               <code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT |
    #               COPY_JOB_REPORT | RESTORE_JOB_REPORT</code>
    #            </p>
    #            <p>If the report template is <code>RESOURCE_COMPLIANCE_REPORT</code> or
    #               <code>CONTROL_COMPLIANCE_REPORT</code>, this API resource also describes the report
    #            coverage by Amazon Web Services Regions and frameworks.</p>
    #
    #   @return [ReportSetting]
    #
    # @!attribute report_plan_tags
    #   <p>Metadata that you can assign to help organize the report plans that you create. Each tag
    #            is a key-value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>CreateReportPlanInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #
    #   @return [String]
    #
    CreateReportPlanInput = ::Struct.new(
      :report_plan_name,
      :report_plan_description,
      :report_delivery_channel,
      :report_setting,
      :report_plan_tags,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_plan_name
    #   <p>The unique name of the report plan.</p>
    #
    #   @return [String]
    #
    # @!attribute report_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time a backup vault is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    CreateReportPlanOutput = ::Struct.new(
      :report_plan_name,
      :report_plan_arn,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    #   @return [String]
    #
    DeleteBackupPlanInput = ::Struct.new(
      :backup_plan_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup plan; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute deletion_date
    #   <p>The date and time a backup plan is deleted, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>DeletionDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute version_id
    #   <p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
    #            long. Version IDs cannot be edited.</p>
    #
    #   @return [String]
    #
    DeleteBackupPlanOutput = ::Struct.new(
      :backup_plan_id,
      :backup_plan_arn,
      :deletion_date,
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    #   @return [String]
    #
    # @!attribute selection_id
    #   <p>Uniquely identifies the body of a request to assign a set of resources to a backup
    #            plan.</p>
    #
    #   @return [String]
    #
    DeleteBackupSelectionInput = ::Struct.new(
      :backup_plan_id,
      :selection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBackupSelectionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    #   @return [String]
    #
    DeleteBackupVaultAccessPolicyInput = ::Struct.new(
      :backup_vault_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBackupVaultAccessPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    #   @return [String]
    #
    DeleteBackupVaultInput = ::Struct.new(
      :backup_vault_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of the backup vault from which to delete Backup Vault Lock.</p>
    #
    #   @return [String]
    #
    DeleteBackupVaultLockConfigurationInput = ::Struct.new(
      :backup_vault_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBackupVaultLockConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Region where they are
    #            created. They consist of lowercase letters, numbers, and hyphens.</p>
    #
    #   @return [String]
    #
    DeleteBackupVaultNotificationsInput = ::Struct.new(
      :backup_vault_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBackupVaultNotificationsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBackupVaultOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute framework_name
    #   <p>The unique name of a framework.</p>
    #
    #   @return [String]
    #
    DeleteFrameworkInput = ::Struct.new(
      :framework_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteFrameworkOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    #   @return [String]
    #
    DeleteRecoveryPointInput = ::Struct.new(
      :backup_vault_name,
      :recovery_point_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRecoveryPointOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_plan_name
    #   <p>The unique name of a report plan.</p>
    #
    #   @return [String]
    #
    DeleteReportPlanInput = ::Struct.new(
      :report_plan_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteReportPlanOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A dependent Amazon Web Services service or resource returned an error to the Backup service, and the action cannot be completed.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p></p>
    #
    #   @return [String]
    #
    DependencyFailureException = ::Struct.new(
      :code,
      :message,
      :type,
      :context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_job_id
    #   <p>Uniquely identifies a request to Backup to back up a resource.</p>
    #
    #   @return [String]
    #
    DescribeBackupJobInput = ::Struct.new(
      :backup_job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>Returns the account ID that owns the backup job.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_job_id
    #   <p>Uniquely identifies a request to Backup to back up a resource.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>An ARN that uniquely identifies a saved resource. The format of the ARN depends on the
    #            resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time that a backup job is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute completion_date
    #   <p>The date and time that a job to create a backup job is completed, in Unix format and
    #            Coordinated Universal Time (UTC). The value of <code>CompletionDate</code> is accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute state
    #   <p>The current state of a resource recovery point.</p>
    #
    #   Enum, one of: ["CREATED", "PENDING", "RUNNING", "ABORTING", "ABORTED", "COMPLETED", "FAILED", "EXPIRED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A detailed message explaining the status of the job to back up a resource.</p>
    #
    #   @return [String]
    #
    # @!attribute percent_done
    #   <p>Contains an estimated percentage that is complete of a job at the time the job status
    #            was queried.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_size_in_bytes
    #   <p>The size, in bytes, of a backup.</p>
    #
    #   @return [Integer]
    #
    # @!attribute iam_role_arn
    #   <p>Specifies the IAM role ARN used to create the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>Contains identifying information about the creation of a backup job, including the
    #               <code>BackupPlanArn</code>, <code>BackupPlanId</code>, <code>BackupPlanVersion</code>,
    #            and <code>BackupRuleId</code> of the backup plan that is used to create it.</p>
    #
    #   @return [RecoveryPointCreator]
    #
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource to be backed up; for example, an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.</p>
    #
    #   @return [String]
    #
    # @!attribute bytes_transferred
    #   <p>The size in bytes transferred to a backup vault at the time that the job status was
    #            queried.</p>
    #
    #   @return [Integer]
    #
    # @!attribute expected_completion_date
    #   <p>The date and time that a job to back up resources is expected to be completed, in Unix
    #            format and Coordinated Universal Time (UTC). The value of
    #               <code>ExpectedCompletionDate</code> is accurate to milliseconds. For example, the value
    #            1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute start_by
    #   <p>Specifies the time in Unix format and Coordinated Universal Time (UTC) when a backup job
    #            must be started before it is canceled. The value is calculated by adding the start window
    #            to the scheduled time. So if the scheduled time were 6:00 PM and the start window is 2
    #            hours, the <code>StartBy</code> time would be 8:00 PM on the date specified. The value of
    #               <code>StartBy</code> is accurate to milliseconds. For example, the value 1516925490.087
    #            represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute backup_options
    #   <p>Represents the options specified as part of backup plan or on-demand backup job.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute backup_type
    #   <p>Represents the actual backup type selected for a backup job. For example, if a
    #            successful Windows Volume Shadow Copy Service (VSS) backup was taken,
    #               <code>BackupType</code> returns <code>"WindowsVSS"</code>. If <code>BackupType</code> is
    #            empty, then the backup type was a regular backup.</p>
    #
    #   @return [String]
    #
    DescribeBackupJobOutput = ::Struct.new(
      :account_id,
      :backup_job_id,
      :backup_vault_name,
      :backup_vault_arn,
      :recovery_point_arn,
      :resource_arn,
      :creation_date,
      :completion_date,
      :state,
      :status_message,
      :percent_done,
      :backup_size_in_bytes,
      :iam_role_arn,
      :created_by,
      :resource_type,
      :bytes_transferred,
      :expected_completion_date,
      :start_by,
      :backup_options,
      :backup_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    #   @return [String]
    #
    DescribeBackupVaultInput = ::Struct.new(
      :backup_vault_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Region where they are
    #            created. They consist of lowercase letters, numbers, and hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_key_arn
    #   <p>The server-side encryption key that is used to protect your backups; for example,
    #               <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time that a backup vault is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_recovery_points
    #   <p>The number of recovery points that are stored in a backup vault.</p>
    #
    #   @return [Integer]
    #
    # @!attribute locked
    #   <p>A Boolean that indicates whether Backup Vault Lock is currently protecting
    #            the backup vault. <code>True</code> means that Vault Lock causes delete or update
    #            operations on the recovery points stored in the vault to fail.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute min_retention_days
    #   <p>The Backup Vault Lock setting that specifies the minimum retention period
    #            that the vault retains its recovery points. If this parameter is not specified, Vault Lock
    #            does not enforce a minimum retention period.</p>
    #            <p>If specified, any backup or copy job to the vault must have a lifecycle policy with a
    #            retention period equal to or longer than the minimum retention period. If the job's
    #            retention period is shorter than that minimum retention period, then the vault fails the
    #            backup or copy job, and you should either modify your lifecycle settings or use a different
    #            vault. Recovery points already stored in the vault prior to Vault Lock are not
    #            affected.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_retention_days
    #   <p>The Backup Vault Lock setting that specifies the maximum retention period
    #            that the vault retains its recovery points. If this parameter is not specified, Vault Lock
    #            does not enforce a maximum retention period on the recovery points in the vault (allowing
    #            indefinite storage).</p>
    #            <p>If specified, any backup or copy job to the vault must have a lifecycle policy with a
    #            retention period equal to or shorter than the maximum retention period. If the job's
    #            retention period is longer than that maximum retention period, then the vault fails the
    #            backup or copy job, and you should either modify your lifecycle settings or use a different
    #            vault. Recovery points already stored in the vault prior to Vault Lock are not
    #            affected.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lock_date
    #   <p>The date and time when Backup Vault Lock configuration cannot be changed or
    #            deleted.</p>
    #            <p>If you applied Vault Lock to your vault without specifying a lock date, you can change
    #            any of your Vault Lock settings, or delete Vault Lock from the vault entirely, at any
    #            time.</p>
    #            <p>This value is in Unix format, Coordinated Universal Time (UTC), and accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    DescribeBackupVaultOutput = ::Struct.new(
      :backup_vault_name,
      :backup_vault_arn,
      :encryption_key_arn,
      :creation_date,
      :creator_request_id,
      :number_of_recovery_points,
      :locked,
      :min_retention_days,
      :max_retention_days,
      :lock_date,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.number_of_recovery_points ||= 0
      end
    end

    # @!attribute copy_job_id
    #   <p>Uniquely identifies a copy job.</p>
    #
    #   @return [String]
    #
    DescribeCopyJobInput = ::Struct.new(
      :copy_job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute copy_job
    #   <p>Contains detailed information about a copy job.</p>
    #
    #   @return [CopyJob]
    #
    DescribeCopyJobOutput = ::Struct.new(
      :copy_job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute framework_name
    #   <p>The unique name of a framework.</p>
    #
    #   @return [String]
    #
    DescribeFrameworkInput = ::Struct.new(
      :framework_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute framework_name
    #   <p>The unique name of a framework.</p>
    #
    #   @return [String]
    #
    # @!attribute framework_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute framework_description
    #   <p>An optional description of the framework.</p>
    #
    #   @return [String]
    #
    # @!attribute framework_controls
    #   <p>A list of the controls that make up the framework. Each control in the list has a name,
    #            input parameters, and scope.</p>
    #
    #   @return [Array<FrameworkControl>]
    #
    # @!attribute creation_time
    #   <p>The date and time that a framework is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute deployment_status
    #   <p>The deployment status of a framework. The statuses are:</p>
    #            <p>
    #               <code>CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS | COMPLETED |
    #               FAILED</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute framework_status
    #   <p>A framework consists of one or more controls. Each control governs a resource, such as
    #            backup plans, backup selections, backup vaults, or recovery points. You can also turn
    #               Config recording on or off for each resource. The statuses are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> when recording is turned on for all resources governed by the
    #                  framework.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PARTIALLY_ACTIVE</code> when recording is turned off for at least one
    #                  resource governed by the framework.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INACTIVE</code> when recording is turned off for all resources governed by
    #                  the framework.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNAVAILABLE</code> when Backup is unable to validate recording
    #                  status at this time.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>DescribeFrameworkOutput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #
    #   @return [String]
    #
    DescribeFrameworkOutput = ::Struct.new(
      :framework_name,
      :framework_arn,
      :framework_description,
      :framework_controls,
      :creation_time,
      :deployment_status,
      :framework_status,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeGlobalSettingsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_settings
    #   <p>The status of the flag <code>isCrossAccountBackupEnabled</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute last_update_time
    #   <p>The date and time that the flag <code>isCrossAccountBackupEnabled</code> was last
    #            updated. This update is in Unix format and Coordinated Universal Time (UTC). The value of
    #               <code>LastUpdateTime</code> is accurate to milliseconds. For example, the value
    #            1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    DescribeGlobalSettingsOutput = ::Struct.new(
      :global_settings,
      :last_update_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #
    #   @return [String]
    #
    DescribeProtectedResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>An ARN that uniquely identifies a resource. The format of the ARN depends on the
    #            resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource saved as a recovery point; for example, an
    #               Amazon EBS volume or an Amazon RDS database.</p>
    #
    #   @return [String]
    #
    # @!attribute last_backup_time
    #   <p>The date and time that a resource was last backed up, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>LastBackupTime</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    DescribeProtectedResourceOutput = ::Struct.new(
      :resource_arn,
      :resource_type,
      :last_backup_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    #   @return [String]
    #
    DescribeRecoveryPointInput = ::Struct.new(
      :backup_vault_name,
      :recovery_point_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Region where they are
    #            created. They consist of lowercase letters, numbers, and hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_vault_arn
    #   <p>An ARN that uniquely identifies a backup vault; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute source_backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies the source vault where the
    #            resource was originally backed up in; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:vault:BackupVault</code>. If the recovery is
    #            restored to the same Amazon Web Services account or Region, this value will be
    #               <code>null</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>An ARN that uniquely identifies a saved resource. The format of the ARN depends on the
    #            resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource to save as a recovery point; for example, an
    #               Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>Contains identifying information about the creation of a recovery point, including the
    #               <code>BackupPlanArn</code>, <code>BackupPlanId</code>, <code>BackupPlanVersion</code>,
    #            and <code>BackupRuleId</code> of the backup plan used to create it.</p>
    #
    #   @return [RecoveryPointCreator]
    #
    # @!attribute iam_role_arn
    #   <p>Specifies the IAM role ARN used to create the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>A status code specifying the state of the recovery point.</p>
    #            <p>
    #               <code>PARTIAL</code> status indicates Backup could not create the recovery
    #            point before the backup window closed. To increase your backup plan window using the API,
    #            see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/API_UpdateBackupPlan.html">UpdateBackupPlan</a>. You can also increase your backup plan window using the
    #            Console by choosing and editing your backup plan.</p>
    #            <p>
    #               <code>EXPIRED</code> status indicates that the recovery point has exceeded its retention
    #            period, but Backup lacks permission or is otherwise unable to delete it. To
    #            manually delete these recovery points, see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/gs-cleanup-resources.html cleanup-backups"> Step 3:
    #               Delete the recovery points</a> in the <i>Clean up resources</i>
    #            section of <i>Getting started</i>.</p>
    #
    #   Enum, one of: ["COMPLETED", "PARTIAL", "DELETING", "EXPIRED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A status message explaining the reason for the recovery point deletion failure.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time that a recovery point is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute completion_date
    #   <p>The date and time that a job to create a recovery point is completed, in Unix format and
    #            Coordinated Universal Time (UTC). The value of <code>CompletionDate</code> is accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute backup_size_in_bytes
    #   <p>The size, in bytes, of a backup.</p>
    #
    #   @return [Integer]
    #
    # @!attribute calculated_lifecycle
    #   <p>A <code>CalculatedLifecycle</code> object containing <code>DeleteAt</code> and
    #               <code>MoveToColdStorageAt</code> timestamps.</p>
    #
    #   @return [CalculatedLifecycle]
    #
    # @!attribute lifecycle
    #   <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #            it expires. Backup transitions and expires backups automatically according to
    #            the lifecycle that you define.</p>
    #            <p>Backups that are transitioned to cold storage must be stored in cold storage for a
    #            minimum of 90 days. Therefore, the “retention” setting must be 90 days greater than the
    #            “transition to cold after days” setting. The “transition to cold after days” setting cannot
    #            be changed after a backup has been transitioned to cold. </p>
    #            <p>Only resource types that support full Backup management can transition their
    #            backups to cold storage. Those resource types are listed in the "Full Backup
    #            management" section of the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html features-by-resource"> Feature
    #               availability by resource</a> table. Backup ignores this expression for
    #            other resource types.</p>
    #
    #   @return [Lifecycle]
    #
    # @!attribute encryption_key_arn
    #   <p>The server-side encryption key used to protect your backups; for example,
    #               <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute is_encrypted
    #   <p>A Boolean value that is returned as <code>TRUE</code> if the specified recovery point is
    #            encrypted, or <code>FALSE</code> if the recovery point is not encrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute storage_class
    #   <p>Specifies the storage class of the recovery point. Valid values are <code>WARM</code> or
    #               <code>COLD</code>.</p>
    #
    #   Enum, one of: ["WARM", "COLD", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute last_restore_time
    #   <p>The date and time that a recovery point was last restored, in Unix format and
    #            Coordinated Universal Time (UTC). The value of <code>LastRestoreTime</code> is accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    DescribeRecoveryPointOutput = ::Struct.new(
      :recovery_point_arn,
      :backup_vault_name,
      :backup_vault_arn,
      :source_backup_vault_arn,
      :resource_arn,
      :resource_type,
      :created_by,
      :iam_role_arn,
      :status,
      :status_message,
      :creation_date,
      :completion_date,
      :backup_size_in_bytes,
      :calculated_lifecycle,
      :lifecycle,
      :encryption_key_arn,
      :is_encrypted,
      :storage_class,
      :last_restore_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_encrypted ||= false
      end
    end

    DescribeRegionSettingsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_type_opt_in_preference
    #   <p>Returns a list of all services along with the opt-in preferences in the Region.</p>
    #
    #   @return [Hash<String, Boolean>]
    #
    # @!attribute resource_type_management_preference
    #   <p>Returns whether Backup fully manages the backups for a resource type.</p>
    #            <p>For the benefits of full Backup management, see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html full-management"> Full Backup management</a>.</p>
    #            <p>For a list of resource types and whether each supports full Backup
    #            management, see the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html features-by-resource"> Feature
    #               availability by resource</a> table.</p>
    #            <p>If <code>"DynamoDB":false</code>, you can enable full Backup management for
    #            DynamoDB backup by enabling <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html advanced-ddb-backup-enable-cli">
    #               Backup's advanced DynamoDB backup features</a>.</p>
    #
    #   @return [Hash<String, Boolean>]
    #
    DescribeRegionSettingsOutput = ::Struct.new(
      :resource_type_opt_in_preference,
      :resource_type_management_preference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_job_id
    #   <p>The identifier of the report job. A unique, randomly generated, Unicode, UTF-8 encoded
    #            string that is at most 1,024 bytes long. The report job ID cannot be edited.</p>
    #
    #   @return [String]
    #
    DescribeReportJobInput = ::Struct.new(
      :report_job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_job
    #   <p>A list of information about a report job, including its completion and creation times,
    #            report destination, unique report job ID, Amazon Resource Name (ARN), report template,
    #            status, and status message.</p>
    #
    #   @return [ReportJob]
    #
    DescribeReportJobOutput = ::Struct.new(
      :report_job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_plan_name
    #   <p>The unique name of a report plan.</p>
    #
    #   @return [String]
    #
    DescribeReportPlanInput = ::Struct.new(
      :report_plan_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_plan
    #   <p>Returns details about the report plan that is specified by its name. These details
    #            include the report plan's Amazon Resource Name (ARN), description, settings, delivery
    #            channel, deployment status, creation time, and last attempted and successful run
    #            times.</p>
    #
    #   @return [ReportPlan]
    #
    DescribeReportPlanOutput = ::Struct.new(
      :report_plan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute restore_job_id
    #   <p>Uniquely identifies the job that restores a recovery point.</p>
    #
    #   @return [String]
    #
    DescribeRestoreJobInput = ::Struct.new(
      :restore_job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>Returns the account ID that owns the restore job.</p>
    #
    #   @return [String]
    #
    # @!attribute restore_job_id
    #   <p>Uniquely identifies the job that restores a recovery point.</p>
    #
    #   @return [String]
    #
    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time that a restore job is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute completion_date
    #   <p>The date and time that a job to restore a recovery point is completed, in Unix format
    #            and Coordinated Universal Time (UTC). The value of <code>CompletionDate</code> is accurate
    #            to milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>Status code specifying the state of the job that is initiated by Backup to
    #            restore a recovery point.</p>
    #
    #   Enum, one of: ["PENDING", "RUNNING", "COMPLETED", "ABORTED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A message showing the status of a job to restore a recovery point.</p>
    #
    #   @return [String]
    #
    # @!attribute percent_done
    #   <p>Contains an estimated percentage that is complete of a job at the time the job status
    #            was queried.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_size_in_bytes
    #   <p>The size, in bytes, of the restored resource.</p>
    #
    #   @return [Integer]
    #
    # @!attribute iam_role_arn
    #   <p>Specifies the IAM role ARN used to create the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_completion_time_minutes
    #   <p>The amount of time in minutes that a job restoring a recovery point is expected to
    #            take.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource whose recovery point
    #            is being restored. The format of the ARN depends on the resource type of the backed-up
    #            resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Returns metadata associated with a restore job listed by resource type.</p>
    #
    #   @return [String]
    #
    DescribeRestoreJobOutput = ::Struct.new(
      :account_id,
      :restore_job_id,
      :recovery_point_arn,
      :creation_date,
      :completion_date,
      :status,
      :status_message,
      :percent_done,
      :backup_size_in_bytes,
      :iam_role_arn,
      :expected_completion_time_minutes,
      :created_resource_arn,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The unique name of an Backup vault.</p>
    #
    #   @return [String]
    #
    # @!attribute recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies an Backup recovery
    #            point.</p>
    #
    #   @return [String]
    #
    DisassociateRecoveryPointInput = ::Struct.new(
      :backup_vault_name,
      :recovery_point_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateRecoveryPointOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    #   @return [String]
    #
    ExportBackupPlanTemplateInput = ::Struct.new(
      :backup_plan_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_plan_template_json
    #   <p>The body of a backup plan template in JSON format.</p>
    #            <note>
    #               <p>This is a signed JSON document that cannot be modified before being passed to
    #                  <code>GetBackupPlanFromJSON.</code>
    #               </p>
    #            </note>
    #
    #   @return [String]
    #
    ExportBackupPlanTemplateOutput = ::Struct.new(
      :backup_plan_template_json,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains detailed information about a framework. Frameworks contain controls, which
    #          evaluate and report on your backup events and resources. Frameworks generate daily
    #          compliance results.</p>
    #
    # @!attribute framework_name
    #   <p>The unique name of a framework. This name is between 1 and 256 characters, starting with
    #            a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores (_).</p>
    #
    #   @return [String]
    #
    # @!attribute framework_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute framework_description
    #   <p>An optional description of the framework with a maximum 1,024 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute number_of_controls
    #   <p>The number of controls contained by the framework.</p>
    #
    #   @return [Integer]
    #
    # @!attribute creation_time
    #   <p>The date and time that a framework is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute deployment_status
    #   <p>The deployment status of a framework. The statuses are:</p>
    #            <p>
    #               <code>CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS | COMPLETED |
    #               FAILED</code>
    #            </p>
    #
    #   @return [String]
    #
    Framework = ::Struct.new(
      :framework_name,
      :framework_arn,
      :framework_description,
      :number_of_controls,
      :creation_time,
      :deployment_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.number_of_controls ||= 0
      end
    end

    # <p>Contains detailed information about all of the controls of a framework. Each framework
    #          must contain at least one control.</p>
    #
    # @!attribute control_name
    #   <p>The name of a control. This name is between 1 and 256 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute control_input_parameters
    #   <p>A list of <code>ParameterName</code> and <code>ParameterValue</code> pairs.</p>
    #
    #   @return [Array<ControlInputParameter>]
    #
    # @!attribute control_scope
    #   <p>The scope of a control. The control scope defines what the control will evaluate. Three
    #            examples of control scopes are: a specific backup plan, all backup plans with a specific
    #            tag, or all backup plans. For more information, see <a href="aws-backup/latest/devguide/API_ControlScope.html">
    #                  <code>ControlScope</code>.</a>
    #            </p>
    #
    #   @return [ControlScope]
    #
    FrameworkControl = ::Struct.new(
      :control_name,
      :control_input_parameters,
      :control_scope,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_plan_template_json
    #   <p>A customer-supplied backup plan document in JSON format.</p>
    #
    #   @return [String]
    #
    GetBackupPlanFromJSONInput = ::Struct.new(
      :backup_plan_template_json,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_plan
    #   <p>Specifies the body of a backup plan. Includes a <code>BackupPlanName</code> and one or
    #            more sets of <code>Rules</code>.</p>
    #
    #   @return [BackupPlan]
    #
    GetBackupPlanFromJSONOutput = ::Struct.new(
      :backup_plan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_plan_template_id
    #   <p>Uniquely identifies a stored backup plan template.</p>
    #
    #   @return [String]
    #
    GetBackupPlanFromTemplateInput = ::Struct.new(
      :backup_plan_template_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_plan_document
    #   <p>Returns the body of a backup plan based on the target template, including the name,
    #            rules, and backup vault of the plan.</p>
    #
    #   @return [BackupPlan]
    #
    GetBackupPlanFromTemplateOutput = ::Struct.new(
      :backup_plan_document,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
    #            long. Version IDs cannot be edited.</p>
    #
    #   @return [String]
    #
    GetBackupPlanInput = ::Struct.new(
      :backup_plan_id,
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_plan
    #   <p>Specifies the body of a backup plan. Includes a <code>BackupPlanName</code> and one or
    #            more sets of <code>Rules</code>.</p>
    #
    #   @return [BackupPlan]
    #
    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup plan; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
    #            long. Version IDs cannot be edited.</p>
    #
    #   @return [String]
    #
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time that a backup plan is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute deletion_date
    #   <p>The date and time that a backup plan is deleted, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>DeletionDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_execution_date
    #   <p>The last time a job to back up resources was run with this backup plan. A date and time,
    #            in Unix format and Coordinated Universal Time (UTC). The value of
    #               <code>LastExecutionDate</code> is accurate to milliseconds. For example, the value
    #            1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute advanced_backup_settings
    #   <p>Contains a list of <code>BackupOptions</code> for each resource type. The list is
    #            populated only if the advanced option is set for the backup plan.</p>
    #
    #   @return [Array<AdvancedBackupSetting>]
    #
    GetBackupPlanOutput = ::Struct.new(
      :backup_plan,
      :backup_plan_id,
      :backup_plan_arn,
      :version_id,
      :creator_request_id,
      :creation_date,
      :deletion_date,
      :last_execution_date,
      :advanced_backup_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    #   @return [String]
    #
    # @!attribute selection_id
    #   <p>Uniquely identifies the body of a request to assign a set of resources to a backup
    #            plan.</p>
    #
    #   @return [String]
    #
    GetBackupSelectionInput = ::Struct.new(
      :backup_plan_id,
      :selection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_selection
    #   <p>Specifies the body of a request to assign a set of resources to a backup plan.</p>
    #
    #   @return [BackupSelection]
    #
    # @!attribute selection_id
    #   <p>Uniquely identifies the body of a request to assign a set of resources to a backup
    #            plan.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time a backup selection is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute creator_request_id
    #   <p>A unique string that identifies the request and allows failed requests to be retried
    #            without the risk of running the operation twice.</p>
    #
    #   @return [String]
    #
    GetBackupSelectionOutput = ::Struct.new(
      :backup_selection,
      :selection_id,
      :backup_plan_id,
      :creation_date,
      :creator_request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    #   @return [String]
    #
    GetBackupVaultAccessPolicyInput = ::Struct.new(
      :backup_vault_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Region where they are
    #            created. They consist of lowercase letters, numbers, and hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The backup vault access policy document in JSON format.</p>
    #
    #   @return [String]
    #
    GetBackupVaultAccessPolicyOutput = ::Struct.new(
      :backup_vault_name,
      :backup_vault_arn,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    #   @return [String]
    #
    GetBackupVaultNotificationsInput = ::Struct.new(
      :backup_vault_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Region where they are
    #            created. They consist of lowercase letters, numbers, and hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup vault; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>An ARN that uniquely identifies an Amazon Simple Notification Service (Amazon SNS)
    #            topic; for example, <code>arn:aws:sns:us-west-2:111122223333:MyTopic</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_vault_events
    #   <p>An array of events that indicate the status of jobs to back up resources to the backup
    #            vault.</p>
    #
    #   @return [Array<String>]
    #
    GetBackupVaultNotificationsOutput = ::Struct.new(
      :backup_vault_name,
      :backup_vault_arn,
      :sns_topic_arn,
      :backup_vault_events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    #   @return [String]
    #
    GetRecoveryPointRestoreMetadataInput = ::Struct.new(
      :backup_vault_name,
      :recovery_point_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_arn
    #   <p>An ARN that uniquely identifies a backup vault; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute restore_metadata
    #   <p>The set of metadata key-value pairs that describe the original configuration of the
    #            backed-up resource. These values vary depending on the service that is being
    #            restored.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetRecoveryPointRestoreMetadataOutput = ::Struct.new(
      :backup_vault_arn,
      :recovery_point_arn,
      :restore_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Backup::Types::GetRecoveryPointRestoreMetadataOutput "\
          "backup_vault_arn=#{backup_vault_arn || 'nil'}, "\
          "recovery_point_arn=#{recovery_point_arn || 'nil'}, "\
          "restore_metadata=\"[SENSITIVE]\">"
      end
    end

    GetSupportedResourceTypesInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_types
    #   <p>Contains a string with the supported Amazon Web Services resource types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Aurora</code> for Amazon Aurora</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DynamoDB</code> for Amazon DynamoDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> for Amazon Elastic Compute Cloud</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EFS</code> for Amazon Elastic File System</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FSX</code> for Amazon FSx</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RDS</code> for Amazon Relational Database Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Storage Gateway</code> for Storage Gateway</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DocDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Neptune</code> for Amazon Neptune</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    GetSupportedResourceTypesOutput = ::Struct.new(
      :resource_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that something is wrong with a parameter's value. For example, the value is
    #          out of range.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p></p>
    #
    #   @return [String]
    #
    InvalidParameterValueException = ::Struct.new(
      :code,
      :message,
      :type,
      :context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Indicates that something is wrong with the input to the request. For example, a
    #          parameter is of the wrong type.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p></p>
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :code,
      :message,
      :type,
      :context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Backup is already performing an action on this recovery point. It can't
    #          perform the action you requested until the first action finishes. Try again later.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p></p>
    #
    #   @return [String]
    #
    InvalidResourceStateException = ::Struct.new(
      :code,
      :message,
      :type,
      :context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains an array of <code>Transition</code> objects specifying how long in days before
    #          a recovery point transitions to cold storage or is deleted.</p>
    #          <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #          days. Therefore, on the console, the “retention” setting must be 90 days greater than the
    #          “transition to cold after days” setting. The “transition to cold after days” setting cannot
    #          be changed after a backup has been transitioned to cold.</p>
    #          <p>Only resource types that support full Backup management can transition their
    #          backups to cold storage. Those resource types are listed in the "Full Backup
    #          management" section of the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html#features-by-resource"> Feature
    #             availability by resource</a> table. Backup ignores this expression for
    #          other resource types.</p>
    #
    # @!attribute move_to_cold_storage_after_days
    #   <p>Specifies the number of days after creation that a recovery point is moved to cold
    #            storage.</p>
    #
    #   @return [Integer]
    #
    # @!attribute delete_after_days
    #   <p>Specifies the number of days after creation that a recovery point is deleted. Must be
    #            greater than 90 days plus <code>MoveToColdStorageAfterDays</code>.</p>
    #
    #   @return [Integer]
    #
    Lifecycle = ::Struct.new(
      :move_to_cold_storage_after_days,
      :delete_after_days,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A limit in the request has been exceeded; for example, a maximum number of items allowed
    #          in a request.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p></p>
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :code,
      :message,
      :type,
      :context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute by_resource_arn
    #   <p>Returns only backup jobs that match the specified resource Amazon Resource Name
    #            (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute by_state
    #   <p>Returns only backup jobs that are in the specified state.</p>
    #
    #   Enum, one of: ["CREATED", "PENDING", "RUNNING", "ABORTING", "ABORTED", "COMPLETED", "FAILED", "EXPIRED"]
    #
    #   @return [String]
    #
    # @!attribute by_backup_vault_name
    #   <p>Returns only backup jobs that will be stored in the specified backup vault. Backup
    #            vaults are identified by names that are unique to the account used to create them and the
    #               Amazon Web Services Region where they are created. They consist of lowercase letters,
    #            numbers, and hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute by_created_before
    #   <p>Returns only backup jobs that were created before the specified date.</p>
    #
    #   @return [Time]
    #
    # @!attribute by_created_after
    #   <p>Returns only backup jobs that were created after the specified date.</p>
    #
    #   @return [Time]
    #
    # @!attribute by_resource_type
    #   <p>Returns only backup jobs for the specified resources:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Aurora</code> for Amazon Aurora</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DocumentDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DynamoDB</code> for Amazon DynamoDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> for Amazon Elastic Compute Cloud</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EFS</code> for Amazon Elastic File System</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FSx</code> for Amazon FSx</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Neptune</code> for Amazon Neptune</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RDS</code> for Amazon Relational Database Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Storage Gateway</code> for Storage Gateway</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon S3</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VirtualMachine</code> for virtual machines</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute by_account_id
    #   <p>The account ID to list the jobs from. Returns only backup jobs associated with the
    #            specified account ID.</p>
    #            <p>If used from an Organizations management account, passing <code>*</code> returns
    #            all jobs across the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute by_complete_after
    #   <p>Returns only backup jobs completed after a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    #
    #   @return [Time]
    #
    # @!attribute by_complete_before
    #   <p>Returns only backup jobs completed before a date expressed in Unix format and
    #            Coordinated Universal Time (UTC).</p>
    #
    #   @return [Time]
    #
    ListBackupJobsInput = ::Struct.new(
      :next_token,
      :max_results,
      :by_resource_arn,
      :by_state,
      :by_backup_vault_name,
      :by_created_before,
      :by_created_after,
      :by_resource_type,
      :by_account_id,
      :by_complete_after,
      :by_complete_before,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_jobs
    #   <p>An array of structures containing metadata about your backup jobs returned in JSON
    #            format.</p>
    #
    #   @return [Array<BackupJob>]
    #
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    ListBackupJobsOutput = ::Struct.new(
      :backup_jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    #   @return [Integer]
    #
    ListBackupPlanTemplatesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_plan_templates_list
    #   <p>An array of template list items containing metadata about your saved templates.</p>
    #
    #   @return [Array<BackupPlanTemplatesListMember>]
    #
    ListBackupPlanTemplatesOutput = ::Struct.new(
      :next_token,
      :backup_plan_templates_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    #   @return [Integer]
    #
    ListBackupPlanVersionsInput = ::Struct.new(
      :backup_plan_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_plan_versions_list
    #   <p>An array of version list items containing metadata about your backup plans.</p>
    #
    #   @return [Array<BackupPlansListMember>]
    #
    ListBackupPlanVersionsOutput = ::Struct.new(
      :next_token,
      :backup_plan_versions_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute include_deleted
    #   <p>A Boolean value with a default value of <code>FALSE</code> that returns deleted backup
    #            plans when set to <code>TRUE</code>.</p>
    #
    #   @return [Boolean]
    #
    ListBackupPlansInput = ::Struct.new(
      :next_token,
      :max_results,
      :include_deleted,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_plans_list
    #   <p>An array of backup plan list items containing metadata about your saved backup
    #            plans.</p>
    #
    #   @return [Array<BackupPlansListMember>]
    #
    ListBackupPlansOutput = ::Struct.new(
      :next_token,
      :backup_plans_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    #   @return [Integer]
    #
    ListBackupSelectionsInput = ::Struct.new(
      :backup_plan_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_selections_list
    #   <p>An array of backup selection list items containing metadata about each resource in the
    #            list.</p>
    #
    #   @return [Array<BackupSelectionsListMember>]
    #
    ListBackupSelectionsOutput = ::Struct.new(
      :next_token,
      :backup_selections_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    #   @return [Integer]
    #
    ListBackupVaultsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_list
    #   <p>An array of backup vault list members containing vault metadata, including Amazon
    #            Resource Name (ARN), display name, creation date, number of saved recovery points, and
    #            encryption information if the resources saved in the backup vault are encrypted.</p>
    #
    #   @return [Array<BackupVaultListMember>]
    #
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    ListBackupVaultsOutput = ::Struct.new(
      :backup_vault_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return maxResults number of items, NextToken allows you to return more items in
    #            your list starting at the location pointed to by the next token. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute by_resource_arn
    #   <p>Returns only copy jobs that match the specified resource Amazon Resource Name (ARN).
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute by_state
    #   <p>Returns only copy jobs that are in the specified state.</p>
    #
    #   Enum, one of: ["CREATED", "RUNNING", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute by_created_before
    #   <p>Returns only copy jobs that were created before the specified date.</p>
    #
    #   @return [Time]
    #
    # @!attribute by_created_after
    #   <p>Returns only copy jobs that were created after the specified date.</p>
    #
    #   @return [Time]
    #
    # @!attribute by_resource_type
    #   <p>Returns only backup jobs for the specified resources:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Aurora</code> for Amazon Aurora</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DocumentDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DynamoDB</code> for Amazon DynamoDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> for Amazon Elastic Compute Cloud</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EFS</code> for Amazon Elastic File System</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FSx</code> for Amazon FSx</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Neptune</code> for Amazon Neptune</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RDS</code> for Amazon Relational Database Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Storage Gateway</code> for Storage Gateway</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon S3</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VirtualMachine</code> for virtual machines</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute by_destination_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a source backup vault to copy
    #            from; for example, <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute by_account_id
    #   <p>The account ID to list the jobs from. Returns only copy jobs associated with the
    #            specified account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute by_complete_before
    #   <p>Returns only copy jobs completed before a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    #
    #   @return [Time]
    #
    # @!attribute by_complete_after
    #   <p>Returns only copy jobs completed after a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    #
    #   @return [Time]
    #
    ListCopyJobsInput = ::Struct.new(
      :next_token,
      :max_results,
      :by_resource_arn,
      :by_state,
      :by_created_before,
      :by_created_after,
      :by_resource_type,
      :by_destination_vault_arn,
      :by_account_id,
      :by_complete_before,
      :by_complete_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute copy_jobs
    #   <p>An array of structures containing metadata about your copy jobs returned in JSON format.
    #         </p>
    #
    #   @return [Array<CopyJob>]
    #
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return maxResults number of items, NextToken allows you to return more items in
    #            your list starting at the location pointed to by the next token. </p>
    #
    #   @return [String]
    #
    ListCopyJobsOutput = ::Struct.new(
      :copy_jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The number of desired results from 1 to 1000. Optional. If unspecified, the query will
    #            return 1 MB of data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #            used to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    ListFrameworksInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute frameworks
    #   <p>A list of frameworks with details for each framework, including the framework name,
    #            Amazon Resource Name (ARN), description, number of controls, creation time, and deployment
    #            status.</p>
    #
    #   @return [Array<Framework>]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #            used to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    ListFrameworksOutput = ::Struct.new(
      :frameworks,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    #   @return [Integer]
    #
    ListProtectedResourcesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute results
    #   <p>An array of resources successfully backed up by Backup including the time
    #            the resource was saved, an Amazon Resource Name (ARN) of the resource, and a resource
    #            type.</p>
    #
    #   @return [Array<ProtectedResource>]
    #
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    ListProtectedResourcesOutput = ::Struct.new(
      :results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #            <note>
    #               <p>Backup vault name might not be available when a supported service creates the
    #               backup.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute by_resource_arn
    #   <p>Returns only recovery points that match the specified resource Amazon Resource Name
    #            (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute by_resource_type
    #   <p>Returns only recovery points that match the specified resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute by_backup_plan_id
    #   <p>Returns only recovery points that match the specified backup plan ID.</p>
    #
    #   @return [String]
    #
    # @!attribute by_created_before
    #   <p>Returns only recovery points that were created before the specified timestamp.</p>
    #
    #   @return [Time]
    #
    # @!attribute by_created_after
    #   <p>Returns only recovery points that were created after the specified timestamp.</p>
    #
    #   @return [Time]
    #
    ListRecoveryPointsByBackupVaultInput = ::Struct.new(
      :backup_vault_name,
      :next_token,
      :max_results,
      :by_resource_arn,
      :by_resource_type,
      :by_backup_plan_id,
      :by_created_before,
      :by_created_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute recovery_points
    #   <p>An array of objects that contain detailed information about recovery points saved in a
    #            backup vault.</p>
    #
    #   @return [Array<RecoveryPointByBackupVault>]
    #
    ListRecoveryPointsByBackupVaultOutput = ::Struct.new(
      :next_token,
      :recovery_points,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>An ARN that uniquely identifies a resource. The format of the ARN depends on the
    #            resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #            <note>
    #               <p>Amazon RDS requires a value of at least 20.</p>
    #            </note>
    #
    #   @return [Integer]
    #
    ListRecoveryPointsByResourceInput = ::Struct.new(
      :resource_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute recovery_points
    #   <p>An array of objects that contain detailed information about recovery points of the
    #            specified resource type.</p>
    #            <note>
    #               <p>Only Amazon EFS and Amazon EC2 recovery points return
    #               BackupVaultName.</p>
    #            </note>
    #
    #   @return [Array<RecoveryPointByResource>]
    #
    ListRecoveryPointsByResourceOutput = ::Struct.new(
      :next_token,
      :recovery_points,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute by_report_plan_name
    #   <p>Returns only report jobs with the specified report plan name.</p>
    #
    #   @return [String]
    #
    # @!attribute by_creation_before
    #   <p>Returns only report jobs that were created before the date and time specified in Unix
    #            format and Coordinated Universal Time (UTC). For example, the value 1516925490 represents
    #            Friday, January 26, 2018 12:11:30 AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute by_creation_after
    #   <p>Returns only report jobs that were created after the date and time specified in Unix
    #            format and Coordinated Universal Time (UTC). For example, the value 1516925490 represents
    #            Friday, January 26, 2018 12:11:30 AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute by_status
    #   <p>Returns only report jobs that are in the specified status. The statuses are:</p>
    #            <p>
    #               <code>CREATED | RUNNING | COMPLETED | FAILED</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The number of desired results from 1 to 1000. Optional. If unspecified, the query will
    #            return 1 MB of data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #            used to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    ListReportJobsInput = ::Struct.new(
      :by_report_plan_name,
      :by_creation_before,
      :by_creation_after,
      :by_status,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_jobs
    #   <p>Details about your report jobs in JSON format.</p>
    #
    #   @return [Array<ReportJob>]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #            used to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    ListReportJobsOutput = ::Struct.new(
      :report_jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The number of desired results from 1 to 1000. Optional. If unspecified, the query will
    #            return 1 MB of data.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #            used to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    ListReportPlansInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_plans
    #   <p>A list of your report plans with detailed information for each plan. This information
    #            includes the Amazon Resource Name (ARN), report plan name, description, settings, delivery
    #            channel, deployment status, creation time, and last times the report plan attempted to and
    #            successfully ran.</p>
    #
    #   @return [Array<ReportPlan>]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous call to this operation, which can be
    #            used to return the next set of items in the list.</p>
    #
    #   @return [String]
    #
    ListReportPlansOutput = ::Struct.new(
      :report_plans,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    #   @return [Integer]
    #
    # @!attribute by_account_id
    #   <p>The account ID to list the jobs from. Returns only restore jobs associated with the
    #            specified account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute by_created_before
    #   <p>Returns only restore jobs that were created before the specified date.</p>
    #
    #   @return [Time]
    #
    # @!attribute by_created_after
    #   <p>Returns only restore jobs that were created after the specified date.</p>
    #
    #   @return [Time]
    #
    # @!attribute by_status
    #   <p>Returns only restore jobs associated with the specified job status.</p>
    #
    #   Enum, one of: ["PENDING", "RUNNING", "COMPLETED", "ABORTED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute by_complete_before
    #   <p>Returns only copy jobs completed before a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    #
    #   @return [Time]
    #
    # @!attribute by_complete_after
    #   <p>Returns only copy jobs completed after a date expressed in Unix format and Coordinated
    #            Universal Time (UTC).</p>
    #
    #   @return [Time]
    #
    ListRestoreJobsInput = ::Struct.new(
      :next_token,
      :max_results,
      :by_account_id,
      :by_created_before,
      :by_created_after,
      :by_status,
      :by_complete_before,
      :by_complete_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute restore_jobs
    #   <p>An array of objects that contain detailed information about jobs to restore saved
    #            resources.</p>
    #
    #   @return [Array<RestoreJobsListMember>]
    #
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    ListRestoreJobsOutput = ::Struct.new(
      :restore_jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the type of resource. Valid targets for <code>ListTags</code> are recovery
    #            points, backup plans, and backup vaults.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to be returned.</p>
    #
    #   @return [Integer]
    #
    ListTagsInput = ::Struct.new(
      :resource_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The next item following a partial list of returned items. For example, if a request is
    #            made to return <code>maxResults</code> number of items, <code>NextToken</code> allows you
    #            to return more items in your list starting at the location pointed to by the next
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>To help organize your resources, you can assign your own metadata to the resources you
    #            create. Each tag is a key-value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsOutput = ::Struct.new(
      :next_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Backup::Types::ListTagsOutput "\
          "next_token=#{next_token || 'nil'}, "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    # <p>Indicates that a required parameter is missing.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p></p>
    #
    #   @return [String]
    #
    MissingParameterValueException = ::Struct.new(
      :code,
      :message,
      :type,
      :context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains information about a backed-up resource.</p>
    #
    # @!attribute resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource; for example, an Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database. For
    #            Windows Volume Shadow Copy Service (VSS) backups, the only supported resource type is
    #               Amazon EC2.</p>
    #
    #   @return [String]
    #
    # @!attribute last_backup_time
    #   <p>The date and time a resource was last backed up, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>LastBackupTime</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    ProtectedResource = ::Struct.new(
      :resource_arn,
      :resource_type,
      :last_backup_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute policy
    #   <p>The backup vault access policy document in JSON format.</p>
    #
    #   @return [String]
    #
    PutBackupVaultAccessPolicyInput = ::Struct.new(
      :backup_vault_name,
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBackupVaultAccessPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The Backup Vault Lock configuration that specifies the name of the backup
    #            vault it protects.</p>
    #
    #   @return [String]
    #
    # @!attribute min_retention_days
    #   <p>The Backup Vault Lock configuration that specifies the minimum retention
    #            period that the vault retains its recovery points. This setting can be useful if, for
    #            example, your organization's policies require you to retain certain data for at least seven
    #            years (2555 days).</p>
    #            <p>If this parameter is not specified, Vault Lock will not enforce a minimum retention
    #            period.</p>
    #            <p>If this parameter is specified, any backup or copy job to the vault must have a
    #            lifecycle policy with a retention period equal to or longer than the minimum retention
    #            period. If the job's retention period is shorter than that minimum retention period, then
    #            the vault fails that backup or copy job, and you should either modify your lifecycle
    #            settings or use a different vault. The shortest minimum retention period
    #            you can specify is 1 day. Recovery points already saved in the vault prior to
    #            Vault Lock are not affected.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_retention_days
    #   <p>The Backup Vault Lock configuration that specifies the maximum retention
    #            period that the vault retains its recovery points. This setting can be useful if, for
    #            example, your organization's policies require you to destroy certain data after retaining
    #            it for four years (1460 days).</p>
    #            <p>If this parameter is not included, Vault Lock does not enforce a maximum retention
    #            period on the recovery points in the vault. If this parameter is included without a value,
    #            Vault Lock will not enforce a maximum retention period.</p>
    #            <p>If this parameter is specified, any backup or copy job to the vault must have a
    #            lifecycle policy with a retention period equal to or shorter than the maximum retention
    #            period. If the job's retention period is longer than that maximum retention period, then
    #            the vault fails the backup or copy job, and you should either modify your lifecycle
    #            settings or use a different vault. The longest maximum retention period
    #            you can specify is 36500 days (approximately 100 years).
    #            Recovery points already saved in the vault prior to
    #            Vault Lock are not affected.</p>
    #
    #   @return [Integer]
    #
    # @!attribute changeable_for_days
    #   <p>The Backup Vault Lock configuration that specifies the number of days before
    #            the lock date. For example, setting <code>ChangeableForDays</code> to 30 on Jan. 1, 2022 at
    #            8pm UTC will set the lock date to Jan. 31, 2022 at 8pm UTC.</p>
    #            <p>Backup enforces a 72-hour cooling-off period before Vault Lock takes effect
    #            and becomes immutable. Therefore, you must set <code>ChangeableForDays</code> to 3 or
    #            greater.</p>
    #            <p>Before the lock date, you can delete Vault Lock from the vault using
    #               <code>DeleteBackupVaultLockConfiguration</code> or change the Vault Lock configuration
    #            using <code>PutBackupVaultLockConfiguration</code>. On and after the lock date, the Vault
    #            Lock becomes immutable and cannot be changed or deleted.</p>
    #            <p>If this parameter is not specified, you can delete Vault Lock from the vault using
    #               <code>DeleteBackupVaultLockConfiguration</code> or change the Vault Lock configuration
    #            using <code>PutBackupVaultLockConfiguration</code> at any time.</p>
    #
    #   @return [Integer]
    #
    PutBackupVaultLockConfigurationInput = ::Struct.new(
      :backup_vault_name,
      :min_retention_days,
      :max_retention_days,
      :changeable_for_days,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBackupVaultLockConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) that specifies the topic for a backup vault’s events; for
    #            example, <code>arn:aws:sns:us-west-2:111122223333:MyVaultTopic</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_vault_events
    #   <p>An array of events that indicate the status of jobs to back up resources to the backup
    #            vault.</p>
    #            <p>For common use cases and code samples, see <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/sns-notifications.html">Using Amazon SNS to
    #               track Backup events</a>.</p>
    #            <p>The following events are supported:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BACKUP_JOB_STARTED</code> | <code>BACKUP_JOB_COMPLETED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COPY_JOB_STARTED</code> | <code>COPY_JOB_SUCCESSFUL</code> |
    #                     <code>COPY_JOB_FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESTORE_JOB_STARTED</code> | <code>RESTORE_JOB_COMPLETED</code> |
    #                     <code>RECOVERY_POINT_MODIFIED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3_BACKUP_OBJECT_FAILED</code> | <code>S3_RESTORE_OBJECT_FAILED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Ignore the list below because it includes deprecated events. Refer to the list
    #               above.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    PutBackupVaultNotificationsInput = ::Struct.new(
      :backup_vault_name,
      :sns_topic_arn,
      :backup_vault_events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutBackupVaultNotificationsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains detailed information about the recovery points stored in a backup vault.</p>
    #
    # @!attribute recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_vault_arn
    #   <p>An ARN that uniquely identifies a backup vault; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute source_backup_vault_arn
    #   <p>The backup vault where the recovery point was originally copied from. If the recovery
    #            point is restored to the same account this value will be <code>null</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>An ARN that uniquely identifies a resource. The format of the ARN depends on the
    #            resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of Amazon Web Services resource saved as a recovery point; for example, an
    #               Amazon Elastic Block Store (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database. For Windows Volume Shadow Copy Service (VSS) backups, the only
    #            supported resource type is Amazon EC2.</p>
    #
    #   @return [String]
    #
    # @!attribute created_by
    #   <p>Contains identifying information about the creation of a recovery point, including the
    #               <code>BackupPlanArn</code>, <code>BackupPlanId</code>, <code>BackupPlanVersion</code>,
    #            and <code>BackupRuleId</code> of the backup plan that is used to create it.</p>
    #
    #   @return [RecoveryPointCreator]
    #
    # @!attribute iam_role_arn
    #   <p>Specifies the IAM role ARN used to create the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>A status code specifying the state of the recovery point.</p>
    #
    #   Enum, one of: ["COMPLETED", "PARTIAL", "DELETING", "EXPIRED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A message explaining the reason of the recovery point deletion failure.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time a recovery point is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute completion_date
    #   <p>The date and time a job to restore a recovery point is completed, in Unix format and
    #            Coordinated Universal Time (UTC). The value of <code>CompletionDate</code> is accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute backup_size_in_bytes
    #   <p>The size, in bytes, of a backup.</p>
    #
    #   @return [Integer]
    #
    # @!attribute calculated_lifecycle
    #   <p>A <code>CalculatedLifecycle</code> object containing <code>DeleteAt</code> and
    #               <code>MoveToColdStorageAt</code> timestamps.</p>
    #
    #   @return [CalculatedLifecycle]
    #
    # @!attribute lifecycle
    #   <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #            it expires. Backup transitions and expires backups automatically according to
    #            the lifecycle that you define. </p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #            cold after days” setting. The “transition to cold after days” setting cannot be changed
    #            after a backup has been transitioned to cold. </p>
    #            <p>Only resource types that support full Backup management can transition their
    #            backups to cold storage. Those resource types are listed in the "Full Backup
    #            management" section of the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html features-by-resource"> Feature
    #               availability by resource</a> table. Backup ignores this expression for
    #            other resource types.</p>
    #
    #   @return [Lifecycle]
    #
    # @!attribute encryption_key_arn
    #   <p>The server-side encryption key that is used to protect your backups; for example,
    #               <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute is_encrypted
    #   <p>A Boolean value that is returned as <code>TRUE</code> if the specified recovery point is
    #            encrypted, or <code>FALSE</code> if the recovery point is not encrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_restore_time
    #   <p>The date and time a recovery point was last restored, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>LastRestoreTime</code> is accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    RecoveryPointByBackupVault = ::Struct.new(
      :recovery_point_arn,
      :backup_vault_name,
      :backup_vault_arn,
      :source_backup_vault_arn,
      :resource_arn,
      :resource_type,
      :created_by,
      :iam_role_arn,
      :status,
      :status_message,
      :creation_date,
      :completion_date,
      :backup_size_in_bytes,
      :calculated_lifecycle,
      :lifecycle,
      :encryption_key_arn,
      :is_encrypted,
      :last_restore_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_encrypted ||= false
      end
    end

    # <p>Contains detailed information about a saved recovery point.</p>
    #
    # @!attribute recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time a recovery point is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>A status code specifying the state of the recovery point.</p>
    #
    #   Enum, one of: ["COMPLETED", "PARTIAL", "DELETING", "EXPIRED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A message explaining the reason of the recovery point deletion failure.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_key_arn
    #   <p>The server-side encryption key that is used to protect your backups; for example,
    #               <code>arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_size_bytes
    #   <p>The size, in bytes, of a backup.</p>
    #
    #   @return [Integer]
    #
    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    #   @return [String]
    #
    RecoveryPointByResource = ::Struct.new(
      :recovery_point_arn,
      :creation_date,
      :status,
      :status_message,
      :encryption_key_arn,
      :backup_size_bytes,
      :backup_vault_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the backup plan and rule that Backup used to
    #          initiate the recovery point backup.</p>
    #
    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup plan; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_plan_version
    #   <p>Version IDs are unique, randomly generated, Unicode, UTF-8 encoded strings that are at
    #            most 1,024 bytes long. They cannot be edited.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_rule_id
    #   <p>Uniquely identifies a rule used to schedule the backup of a selection of
    #            resources.</p>
    #
    #   @return [String]
    #
    RecoveryPointCreator = ::Struct.new(
      :backup_plan_id,
      :backup_plan_arn,
      :backup_plan_version,
      :backup_rule_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RecoveryPointStatus
    #
    module RecoveryPointStatus
      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      PARTIAL = "PARTIAL"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      EXPIRED = "EXPIRED"
    end

    # <p>Contains information from your report plan about where to deliver your reports,
    #          specifically your Amazon S3 bucket name, S3 key prefix, and the formats of your
    #          reports.</p>
    #
    # @!attribute s3_bucket_name
    #   <p>The unique name of the S3 bucket that receives your reports.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key_prefix
    #   <p>The prefix for where Backup Audit Manager delivers your reports to Amazon S3. The prefix is this part of the following path:
    #               s3://your-bucket-name/<code>prefix</code>/Backup/us-west-2/year/month/day/report-name.
    #            If not specified, there is no prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute formats
    #   <p>A list of the format of your reports: <code>CSV</code>, <code>JSON</code>, or both. If
    #            not specified, the default format is <code>CSV</code>.</p>
    #
    #   @return [Array<String>]
    #
    ReportDeliveryChannel = ::Struct.new(
      :s3_bucket_name,
      :s3_key_prefix,
      :formats,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information from your report job about your report destination.</p>
    #
    # @!attribute s3_bucket_name
    #   <p>The unique name of the Amazon S3 bucket that receives your reports.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_keys
    #   <p>The object key that uniquely identifies your reports in your S3 bucket.</p>
    #
    #   @return [Array<String>]
    #
    ReportDestination = ::Struct.new(
      :s3_bucket_name,
      :s3_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains detailed information about a report job. A report job compiles a report based
    #          on a report plan and publishes it to Amazon S3.</p>
    #
    # @!attribute report_job_id
    #   <p>The identifier for a report job. A unique, randomly generated, Unicode, UTF-8 encoded
    #            string that is at most 1,024 bytes long. Report job IDs cannot be edited.</p>
    #
    #   @return [String]
    #
    # @!attribute report_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute report_template
    #   <p>Identifies the report template for the report. Reports are built using a report
    #            template. The report templates are: </p>
    #            <p>
    #               <code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT |
    #               COPY_JOB_REPORT | RESTORE_JOB_REPORT</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time that a report job is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute completion_time
    #   <p>The date and time that a report job is completed, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CompletionTime</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of a report job. The statuses are:</p>
    #            <p>
    #               <code>CREATED | RUNNING | COMPLETED | FAILED</code>
    #            </p>
    #            <p>
    #               <code>COMPLETED</code> means that the report is available for your review at your
    #            designated destination. If the status is <code>FAILED</code>, review the
    #               <code>StatusMessage</code> for the reason.</p>
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A message explaining the status of the report job.</p>
    #
    #   @return [String]
    #
    # @!attribute report_destination
    #   <p>The S3 bucket name and S3 keys for the destination where the report job publishes the
    #            report.</p>
    #
    #   @return [ReportDestination]
    #
    ReportJob = ::Struct.new(
      :report_job_id,
      :report_plan_arn,
      :report_template,
      :creation_time,
      :completion_time,
      :status,
      :status_message,
      :report_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains detailed information about a report plan.</p>
    #
    # @!attribute report_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute report_plan_name
    #   <p>The unique name of the report plan. This name is between 1 and 256 characters starting
    #            with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores
    #            (_).</p>
    #
    #   @return [String]
    #
    # @!attribute report_plan_description
    #   <p>An optional description of the report plan with a maximum 1,024 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute report_setting
    #   <p>Identifies the report template for the report. Reports are built using a report
    #            template. The report templates are:</p>
    #            <p>
    #               <code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT |
    #               COPY_JOB_REPORT | RESTORE_JOB_REPORT</code>
    #            </p>
    #            <p>If the report template is <code>RESOURCE_COMPLIANCE_REPORT</code> or
    #               <code>CONTROL_COMPLIANCE_REPORT</code>, this API resource also describes the report
    #            coverage by Amazon Web Services Regions and frameworks.</p>
    #
    #   @return [ReportSetting]
    #
    # @!attribute report_delivery_channel
    #   <p>Contains information about where and how to deliver your reports, specifically your
    #               Amazon S3 bucket name, S3 key prefix, and the formats of your reports.</p>
    #
    #   @return [ReportDeliveryChannel]
    #
    # @!attribute deployment_status
    #   <p>The deployment status of a report plan. The statuses are:</p>
    #            <p>
    #               <code>CREATE_IN_PROGRESS | UPDATE_IN_PROGRESS | DELETE_IN_PROGRESS |
    #            COMPLETED</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time that a report plan is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_attempted_execution_time
    #   <p>The date and time that a report job associated with this report plan last attempted to
    #            run, in Unix format and Coordinated Universal Time (UTC). The value of
    #               <code>LastAttemptedExecutionTime</code> is accurate to milliseconds. For example, the
    #            value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_successful_execution_time
    #   <p>The date and time that a report job associated with this report plan last successfully
    #            ran, in Unix format and Coordinated Universal Time (UTC). The value of
    #               <code>LastSuccessfulExecutionTime</code> is accurate to milliseconds. For example, the
    #            value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    ReportPlan = ::Struct.new(
      :report_plan_arn,
      :report_plan_name,
      :report_plan_description,
      :report_setting,
      :report_delivery_channel,
      :deployment_status,
      :creation_time,
      :last_attempted_execution_time,
      :last_successful_execution_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains detailed information about a report setting.</p>
    #
    # @!attribute report_template
    #   <p>Identifies the report template for the report. Reports are built using a report
    #            template. The report templates are:</p>
    #            <p>
    #               <code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT |
    #               COPY_JOB_REPORT | RESTORE_JOB_REPORT</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute framework_arns
    #   <p>The Amazon Resource Names (ARNs) of the frameworks a report covers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute number_of_frameworks
    #   <p>The number of frameworks a report covers.</p>
    #
    #   @return [Integer]
    #
    ReportSetting = ::Struct.new(
      :report_template,
      :framework_arns,
      :number_of_frameworks,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.number_of_frameworks ||= 0
      end
    end

    # <p>A resource that is required for the action doesn't exist.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p></p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :code,
      :message,
      :type,
      :context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RestoreJobStatus
    #
    module RestoreJobStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      ABORTED = "ABORTED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Contains metadata about a restore job.</p>
    #
    # @!attribute account_id
    #   <p>The account ID that owns the restore job.</p>
    #
    #   @return [String]
    #
    # @!attribute restore_job_id
    #   <p>Uniquely identifies the job that restores a recovery point.</p>
    #
    #   @return [String]
    #
    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time a restore job is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute completion_date
    #   <p>The date and time a job to restore a recovery point is completed, in Unix format and
    #            Coordinated Universal Time (UTC). The value of <code>CompletionDate</code> is accurate to
    #            milliseconds. For example, the value 1516925490.087 represents Friday, January 26, 2018
    #            12:11:30.087 AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>A status code specifying the state of the job initiated by Backup to restore
    #            a recovery point.</p>
    #
    #   Enum, one of: ["PENDING", "RUNNING", "COMPLETED", "ABORTED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A detailed message explaining the status of the job to restore a recovery point.</p>
    #
    #   @return [String]
    #
    # @!attribute percent_done
    #   <p>Contains an estimated percentage complete of a job at the time the job status was
    #            queried.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_size_in_bytes
    #   <p>The size, in bytes, of the restored resource.</p>
    #
    #   @return [Integer]
    #
    # @!attribute iam_role_arn
    #   <p>Specifies the IAM role ARN used to create the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_completion_time_minutes
    #   <p>The amount of time in minutes that a job restoring a recovery point is expected to
    #            take.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type of the listed restore jobs; for example, an Amazon Elastic Block Store
    #               (Amazon EBS) volume or an Amazon Relational Database Service (Amazon RDS) database.
    #            For Windows Volume Shadow Copy Service (VSS) backups, the only supported resource type is
    #               Amazon EC2.</p>
    #
    #   @return [String]
    #
    RestoreJobsListMember = ::Struct.new(
      :account_id,
      :restore_job_id,
      :recovery_point_arn,
      :creation_date,
      :completion_date,
      :status,
      :status_message,
      :percent_done,
      :backup_size_in_bytes,
      :iam_role_arn,
      :expected_completion_time_minutes,
      :created_resource_arn,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request failed due to a temporary failure of the server.</p>
    #
    # @!attribute code
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p></p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p></p>
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :code,
      :message,
      :type,
      :context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role_arn
    #   <p>Specifies the IAM role ARN used to create the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>StartBackupJob</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #
    #   @return [String]
    #
    # @!attribute start_window_minutes
    #   <p>A value in minutes after a backup is scheduled before a job will be canceled if it
    #            doesn't start successfully. This value is optional, and the default is 8 hours.</p>
    #
    #   @return [Integer]
    #
    # @!attribute complete_window_minutes
    #   <p>A value in minutes during which a successfully started backup must complete, or else
    #               Backup will cancel the job. This value is optional. This value begins
    #            counting down from when the backup was scheduled. It does not add additional time for
    #               <code>StartWindowMinutes</code>, or if the backup started later than scheduled.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lifecycle
    #   <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #            it expires. Backup will transition and expire backups automatically according
    #            to the lifecycle that you define. </p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #            cold after days” setting. The “transition to cold after days” setting cannot be changed
    #            after a backup has been transitioned to cold. </p>
    #            <p>Only resource types that support full Backup management can transition their
    #            backups to cold storage. Those resource types are listed in the "Full Backup
    #            management" section of the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html features-by-resource"> Feature
    #               availability by resource</a> table. Backup ignores this expression for
    #            other resource types.</p>
    #
    #   @return [Lifecycle]
    #
    # @!attribute recovery_point_tags
    #   <p>To help organize your resources, you can assign your own metadata to the resources that
    #            you create. Each tag is a key-value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute backup_options
    #   <p>Specifies the backup option for a selected resource. This option is only available for
    #            Windows Volume Shadow Copy Service (VSS) backup jobs.</p>
    #            <p>Valid values: Set to <code>"WindowsVSS":"enabled"</code> to enable the
    #               <code>WindowsVSS</code> backup option and create a Windows VSS backup. Set to
    #               <code>"WindowsVSS""disabled"</code> to create a regular backup. The
    #               <code>WindowsVSS</code> option is not enabled by default.</p>
    #
    #   @return [Hash<String, String>]
    #
    StartBackupJobInput = ::Struct.new(
      :backup_vault_name,
      :resource_arn,
      :iam_role_arn,
      :idempotency_token,
      :start_window_minutes,
      :complete_window_minutes,
      :lifecycle,
      :recovery_point_tags,
      :backup_options,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Backup::Types::StartBackupJobInput "\
          "backup_vault_name=#{backup_vault_name || 'nil'}, "\
          "resource_arn=#{resource_arn || 'nil'}, "\
          "iam_role_arn=#{iam_role_arn || 'nil'}, "\
          "idempotency_token=#{idempotency_token || 'nil'}, "\
          "start_window_minutes=#{start_window_minutes || 'nil'}, "\
          "complete_window_minutes=#{complete_window_minutes || 'nil'}, "\
          "lifecycle=#{lifecycle || 'nil'}, "\
          "recovery_point_tags=\"[SENSITIVE]\", "\
          "backup_options=#{backup_options || 'nil'}>"
      end
    end

    # @!attribute backup_job_id
    #   <p>Uniquely identifies a request to Backup to back up a resource.</p>
    #
    #   @return [String]
    #
    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time that a backup job is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    StartBackupJobOutput = ::Struct.new(
      :backup_job_id,
      :recovery_point_arn,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point to use for the copy job; for example,
    #            arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute source_backup_vault_name
    #   <p>The name of a logical source container where backups are stored. Backup vaults are
    #            identified by names that are unique to the account used to create them and the Amazon Web Services Region where they are created. They consist of lowercase letters, numbers,
    #            and hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_backup_vault_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a destination backup vault to
    #            copy to; for example,
    #            <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role_arn
    #   <p>Specifies the IAM role ARN used to copy the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>StartCopyJob</code>. Retrying a successful request with the same idempotency
    #            token results in a success message with no action taken.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle
    #   <p>Contains an array of <code>Transition</code> objects specifying how long in days before
    #            a recovery point transitions to cold storage or is deleted.</p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, on the console, the “retention” setting must be 90 days greater than the
    #            “transition to cold after days” setting. The “transition to cold after days” setting cannot
    #            be changed after a backup has been transitioned to cold.</p>
    #            <p>Only resource types that support full Backup management can transition their
    #            backups to cold storage. Those resource types are listed in the "Full Backup
    #            management" section of the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html features-by-resource"> Feature
    #               availability by resource</a> table. Backup ignores this expression for
    #            other resource types.</p>
    #
    #   @return [Lifecycle]
    #
    StartCopyJobInput = ::Struct.new(
      :recovery_point_arn,
      :source_backup_vault_name,
      :destination_backup_vault_arn,
      :iam_role_arn,
      :idempotency_token,
      :lifecycle,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute copy_job_id
    #   <p>Uniquely identifies a copy job.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time that a copy job is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    StartCopyJobOutput = ::Struct.new(
      :copy_job_id,
      :creation_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_plan_name
    #   <p>The unique name of a report plan.</p>
    #
    #   @return [String]
    #
    # @!attribute idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>StartReportJobInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #
    #   @return [String]
    #
    StartReportJobInput = ::Struct.new(
      :report_plan_name,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_job_id
    #   <p>The identifier of the report job. A unique, randomly generated, Unicode, UTF-8 encoded
    #            string that is at most 1,024 bytes long. The report job ID cannot be edited.</p>
    #
    #   @return [String]
    #
    StartReportJobOutput = ::Struct.new(
      :report_job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recovery_point_arn
    #   <p>An ARN that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>A set of metadata key-value pairs. Contains information, such as a resource name,
    #            required to restore a recovery point.</p>
    #            <p> You can get configuration metadata about a resource at the time it was backed up by
    #            calling <code>GetRecoveryPointRestoreMetadata</code>. However, values in addition to those
    #            provided by <code>GetRecoveryPointRestoreMetadata</code> might be required to restore a
    #            resource. For example, you might need to provide a new resource name if the original
    #            already exists.</p>
    #            <p>You need to specify specific metadata to restore an Amazon Elastic File System (Amazon EFS) instance:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>file-system-id</code>: The ID of the Amazon EFS file system that is
    #                  backed up by Backup. Returned in
    #                     <code>GetRecoveryPointRestoreMetadata</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Encrypted</code>: A Boolean value that, if true, specifies that the file
    #                  system is encrypted. If <code>KmsKeyId</code> is specified, <code>Encrypted</code>
    #                  must be set to <code>true</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>KmsKeyId</code>: Specifies the Amazon Web Services KMS key that is used to
    #                  encrypt the restored file system. You can specify a key from another Amazon Web Services account provided that key it is properly shared with your account via Amazon Web Services KMS.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PerformanceMode</code>: Specifies the throughput mode of the file
    #                  system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CreationToken</code>: A user-supplied value that ensures the uniqueness
    #                  (idempotency) of the request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>newFileSystem</code>: A Boolean value that, if true, specifies that the
    #                  recovery point is restored to a new Amazon EFS file system.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ItemsToRestore</code>: An array of one to five strings where each string is
    #                  a file path. Use <code>ItemsToRestore</code> to restore specific files or directories
    #                  rather than the entire file system. This parameter is optional. For example,
    #                     <code>"itemsToRestore":"[\"/my.test\"]"</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute iam_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that Backup uses to create
    #            the target recovery point; for example,
    #               <code>arn:aws:iam::123456789012:role/S3Access</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>StartRestoreJob</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Starts a job to restore a recovery point for one of the following resources:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Aurora</code> for Amazon Aurora</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DocumentDB</code> for Amazon DocumentDB (with MongoDB compatibility)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DynamoDB</code> for Amazon DynamoDB</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EBS</code> for Amazon Elastic Block Store</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EC2</code> for Amazon Elastic Compute Cloud</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EFS</code> for Amazon Elastic File System</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FSx</code> for Amazon FSx</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Neptune</code> for Amazon Neptune</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RDS</code> for Amazon Relational Database Service</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Storage Gateway</code> for Storage Gateway</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>S3</code> for Amazon S3</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VirtualMachine</code> for virtual machines</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    StartRestoreJobInput = ::Struct.new(
      :recovery_point_arn,
      :metadata,
      :iam_role_arn,
      :idempotency_token,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Backup::Types::StartRestoreJobInput "\
          "recovery_point_arn=#{recovery_point_arn || 'nil'}, "\
          "metadata=\"[SENSITIVE]\", "\
          "iam_role_arn=#{iam_role_arn || 'nil'}, "\
          "idempotency_token=#{idempotency_token || 'nil'}, "\
          "resource_type=#{resource_type || 'nil'}>"
      end
    end

    # @!attribute restore_job_id
    #   <p>Uniquely identifies the job that restores a recovery point.</p>
    #
    #   @return [String]
    #
    StartRestoreJobOutput = ::Struct.new(
      :restore_job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_job_id
    #   <p>Uniquely identifies a request to Backup to back up a resource.</p>
    #
    #   @return [String]
    #
    StopBackupJobInput = ::Struct.new(
      :backup_job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopBackupJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StorageClass
    #
    module StorageClass
      # No documentation available.
      #
      WARM = "WARM"

      # No documentation available.
      #
      COLD = "COLD"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # @!attribute resource_arn
    #   <p>An ARN that uniquely identifies a resource. The format of the ARN depends on the type of
    #            the tagged resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Key-value pairs that are used to help organize your resources. You can assign your own
    #            metadata to the resources you create. For clarity, this is the structure to assign tags:
    #               <code>[{"Key":"string","Value":"string"}]</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Backup::Types::TagResourceInput "\
          "resource_arn=#{resource_arn || 'nil'}, "\
          "tags=\"[SENSITIVE]\">"
      end
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>An ARN that uniquely identifies a resource. The format of the ARN depends on the type of
    #            the tagged resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_key_list
    #   <p>A list of keys to identify which key-value tags to remove from a resource.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_key_list,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Backup::Types::UntagResourceInput "\
          "resource_arn=#{resource_arn || 'nil'}, "\
          "tag_key_list=\"[SENSITIVE]\">"
      end
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_plan
    #   <p>Specifies the body of a backup plan. Includes a <code>BackupPlanName</code> and one or
    #            more sets of <code>Rules</code>.</p>
    #
    #   @return [BackupPlanInput]
    #
    UpdateBackupPlanInput = ::Struct.new(
      :backup_plan_id,
      :backup_plan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_plan_id
    #   <p>Uniquely identifies a backup plan.</p>
    #
    #   @return [String]
    #
    # @!attribute backup_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a backup plan; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time a backup plan is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationDate</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    # @!attribute version_id
    #   <p>Unique, randomly generated, Unicode, UTF-8 encoded strings that are at most 1,024 bytes
    #            long. Version Ids cannot be edited.</p>
    #
    #   @return [String]
    #
    # @!attribute advanced_backup_settings
    #   <p>Contains a list of <code>BackupOptions</code> for each resource type.</p>
    #
    #   @return [Array<AdvancedBackupSetting>]
    #
    UpdateBackupPlanOutput = ::Struct.new(
      :backup_plan_id,
      :backup_plan_arn,
      :creation_date,
      :version_id,
      :advanced_backup_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute framework_name
    #   <p>The unique name of a framework. This name is between 1 and 256 characters, starting with
    #            a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores (_).</p>
    #
    #   @return [String]
    #
    # @!attribute framework_description
    #   <p>An optional description of the framework with a maximum 1,024 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute framework_controls
    #   <p>A list of the controls that make up the framework. Each control in the list has a name,
    #            input parameters, and scope.</p>
    #
    #   @return [Array<FrameworkControl>]
    #
    # @!attribute idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>UpdateFrameworkInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #
    #   @return [String]
    #
    UpdateFrameworkInput = ::Struct.new(
      :framework_name,
      :framework_description,
      :framework_controls,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute framework_name
    #   <p>The unique name of a framework. This name is between 1 and 256 characters, starting with
    #            a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores (_).</p>
    #
    #   @return [String]
    #
    # @!attribute framework_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time that a framework is created, in Unix format and Coordinated Universal
    #            Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds. For
    #            example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    UpdateFrameworkOutput = ::Struct.new(
      :framework_name,
      :framework_arn,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute global_settings
    #   <p>A value for <code>isCrossAccountBackupEnabled</code> and a Region. Example:
    #               <code>update-global-settings --global-settings isCrossAccountBackupEnabled=false
    #               --region us-west-2</code>.</p>
    #
    #   @return [Hash<String, String>]
    #
    UpdateGlobalSettingsInput = ::Struct.new(
      :global_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateGlobalSettingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_name
    #   <p>The name of a logical container where backups are stored. Backup vaults are identified
    #            by names that are unique to the account used to create them and the Amazon Web Services
    #            Region where they are created. They consist of lowercase letters, numbers, and
    #            hyphens.</p>
    #
    #   @return [String]
    #
    # @!attribute recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle
    #   <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #            it expires. Backup transitions and expires backups automatically according to
    #            the lifecycle that you define. </p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #            cold after days” setting. The “transition to cold after days” setting cannot be changed
    #            after a backup has been transitioned to cold. </p>
    #
    #   @return [Lifecycle]
    #
    UpdateRecoveryPointLifecycleInput = ::Struct.new(
      :backup_vault_name,
      :recovery_point_arn,
      :lifecycle,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute backup_vault_arn
    #   <p>An ARN that uniquely identifies a backup vault; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:vault:aBackupVault</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute recovery_point_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a recovery point; for example,
    #               <code>arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute lifecycle
    #   <p>The lifecycle defines when a protected resource is transitioned to cold storage and when
    #            it expires. Backup transitions and expires backups automatically according to
    #            the lifecycle that you define.</p>
    #            <p>Backups transitioned to cold storage must be stored in cold storage for a minimum of 90
    #            days. Therefore, the “retention” setting must be 90 days greater than the “transition to
    #            cold after days” setting. The “transition to cold after days” setting cannot be changed
    #            after a backup has been transitioned to cold.</p>
    #            <p>Only resource types that support full Backup management can transition their
    #            backups to cold storage. Those resource types are listed in the "Full Backup
    #            management" section of the <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html features-by-resource"> Feature
    #               availability by resource</a> table. Backup ignores this expression for
    #            other resource types.</p>
    #
    #   @return [Lifecycle]
    #
    # @!attribute calculated_lifecycle
    #   <p>A <code>CalculatedLifecycle</code> object containing <code>DeleteAt</code> and
    #               <code>MoveToColdStorageAt</code> timestamps.</p>
    #
    #   @return [CalculatedLifecycle]
    #
    UpdateRecoveryPointLifecycleOutput = ::Struct.new(
      :backup_vault_arn,
      :recovery_point_arn,
      :lifecycle,
      :calculated_lifecycle,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_type_opt_in_preference
    #   <p>Updates the list of services along with the opt-in preferences for the Region.</p>
    #
    #   @return [Hash<String, Boolean>]
    #
    # @!attribute resource_type_management_preference
    #   <p>Enables or disables full Backup management of backups for a resource type.
    #            To enable full Backup management for DynamoDB along with <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html">
    #               Backup's advanced DynamoDB backup features</a>, follow the
    #            procedure to <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/advanced-ddb-backup.html advanced-ddb-backup-enable-cli"> enable advanced DynamoDB backup programmatically</a>.</p>
    #
    #   @return [Hash<String, Boolean>]
    #
    UpdateRegionSettingsInput = ::Struct.new(
      :resource_type_opt_in_preference,
      :resource_type_management_preference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateRegionSettingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_plan_name
    #   <p>The unique name of the report plan. This name is between 1 and 256 characters, starting
    #            with a letter, and consisting of letters (a-z, A-Z), numbers (0-9), and underscores
    #            (_).</p>
    #
    #   @return [String]
    #
    # @!attribute report_plan_description
    #   <p>An optional description of the report plan with a maximum 1,024 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute report_delivery_channel
    #   <p>A structure that contains information about where to deliver your reports, specifically
    #            your Amazon S3 bucket name, S3 key prefix, and the formats of your reports.</p>
    #
    #   @return [ReportDeliveryChannel]
    #
    # @!attribute report_setting
    #   <p>Identifies the report template for the report. Reports are built using a report
    #            template. The report templates are:</p>
    #            <p>
    #               <code>RESOURCE_COMPLIANCE_REPORT | CONTROL_COMPLIANCE_REPORT | BACKUP_JOB_REPORT |
    #               COPY_JOB_REPORT | RESTORE_JOB_REPORT</code>
    #            </p>
    #            <p>If the report template is <code>RESOURCE_COMPLIANCE_REPORT</code> or
    #               <code>CONTROL_COMPLIANCE_REPORT</code>, this API resource also describes the report
    #            coverage by Amazon Web Services Regions and frameworks.</p>
    #
    #   @return [ReportSetting]
    #
    # @!attribute idempotency_token
    #   <p>A customer-chosen string that you can use to distinguish between otherwise identical
    #            calls to <code>UpdateReportPlanInput</code>. Retrying a successful request with the same
    #            idempotency token results in a success message with no action taken.</p>
    #
    #   @return [String]
    #
    UpdateReportPlanInput = ::Struct.new(
      :report_plan_name,
      :report_plan_description,
      :report_delivery_channel,
      :report_setting,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_plan_name
    #   <p>The unique name of the report plan.</p>
    #
    #   @return [String]
    #
    # @!attribute report_plan_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies a resource. The format of the ARN
    #            depends on the resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time that a report plan is created, in Unix format and Coordinated
    #            Universal Time (UTC). The value of <code>CreationTime</code> is accurate to milliseconds.
    #            For example, the value 1516925490.087 represents Friday, January 26, 2018 12:11:30.087
    #            AM.</p>
    #
    #   @return [Time]
    #
    UpdateReportPlanOutput = ::Struct.new(
      :report_plan_name,
      :report_plan_arn,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
