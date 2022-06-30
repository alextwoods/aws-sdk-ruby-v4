# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::MigrationHubStrategy
  module Types

    # <p> The AWS user account does not have permission to perform the action. Check the
    #       AWS Identity and Access Management (IAM) policy associated with this account.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AntipatternReportStatus
    #
    module AntipatternReportStatus
      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      SUCCESS = "SUCCESS"
    end

    # <p>
    #       Contains the summary of anti-patterns and their severity.
    #     </p>
    #
    # @!attribute severity
    #   <p>
    #         Contains the severity of anti-patterns.
    #       </p>
    #
    #   Enum, one of: ["HIGH", "MEDIUM", "LOW"]
    #
    #   @return [String]
    #
    # @!attribute count
    #   <p>
    #         Contains the count of anti-patterns.
    #       </p>
    #
    #   @return [Integer]
    #
    AntipatternSeveritySummary = ::Struct.new(
      :severity,
      :count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AppType
    #
    module AppType
      # No documentation available.
      #
      dotNetFramework = "DotNetFramework"

      # No documentation available.
      #
      java = "Java"

      # No documentation available.
      #
      sqlServer = "SQLServer"

      # No documentation available.
      #
      IIS = "IIS"

      # No documentation available.
      #
      oracle = "Oracle"

      # No documentation available.
      #
      other = "Other"
    end

    # Includes enum constants for ApplicationComponentCriteria
    #
    module ApplicationComponentCriteria
      # No documentation available.
      #
      NOT_DEFINED = "NOT_DEFINED"

      # No documentation available.
      #
      APP_NAME = "APP_NAME"

      # No documentation available.
      #
      SERVER_ID = "SERVER_ID"

      # No documentation available.
      #
      APP_TYPE = "APP_TYPE"

      # No documentation available.
      #
      STRATEGY = "STRATEGY"

      # No documentation available.
      #
      DESTINATION = "DESTINATION"
    end

    # <p> Contains detailed information about an application component. </p>
    #
    # @!attribute id
    #   <p> The ID of the application component. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of application component. </p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_set
    #   <p> The top recommendation set for the application component. </p>
    #
    #   @return [RecommendationSet]
    #
    # @!attribute analysis_status
    #   <p> The status of analysis, if the application component has source code or an associated
    #         database. </p>
    #
    #   Enum, one of: ["ANALYSIS_TO_BE_SCHEDULED", "ANALYSIS_STARTED", "ANALYSIS_SUCCESS", "ANALYSIS_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p> A detailed description of the analysis status and any failure message. </p>
    #
    #   @return [String]
    #
    # @!attribute list_antipattern_severity_summary
    #   <p> A list of anti-pattern severity summaries. </p>
    #
    #   @return [Array<AntipatternSeveritySummary>]
    #
    # @!attribute database_config_detail
    #   <p> Configuration details for the database associated with the application component. </p>
    #
    #   @return [DatabaseConfigDetail]
    #
    # @!attribute source_code_repositories
    #   <p> Details about the source code repository associated with the application component.
    #       </p>
    #
    #   @return [Array<SourceCodeRepository>]
    #
    # @!attribute app_type
    #   <p> The type of application component. </p>
    #
    #   Enum, one of: ["DotNetFramework", "Java", "SQLServer", "IIS", "Oracle", "Other"]
    #
    #   @return [String]
    #
    # @!attribute resource_sub_type
    #   <p> The application component subtype.</p>
    #
    #   Enum, one of: ["Database", "Process", "DatabaseProcess"]
    #
    #   @return [String]
    #
    # @!attribute inclusion_status
    #   <p> Indicates whether the application component has been included for server recommendation
    #         or not. </p>
    #
    #   Enum, one of: ["excludeFromAssessment", "includeInAssessment"]
    #
    #   @return [String]
    #
    # @!attribute antipattern_report_s3_object
    #   <p> The S3 bucket name and the Amazon S3 key name for the anti-pattern report. </p>
    #
    #   @return [S3Object]
    #
    # @!attribute antipattern_report_status
    #   <p> The status of the anti-pattern report generation.</p>
    #
    #   Enum, one of: ["FAILED", "IN_PROGRESS", "SUCCESS"]
    #
    #   @return [String]
    #
    # @!attribute antipattern_report_status_message
    #   <p> The status message for the anti-pattern. </p>
    #
    #   @return [String]
    #
    # @!attribute os_version
    #   <p> OS version. </p>
    #
    #   @return [String]
    #
    # @!attribute os_driver
    #   <p> OS driver. </p>
    #
    #   @return [String]
    #
    # @!attribute last_analyzed_timestamp
    #   <p> The timestamp of when the application component was assessed. </p>
    #
    #   @return [Time]
    #
    # @!attribute associated_server_id
    #   <p> The ID of the server that the application component is running on. </p>
    #
    #   @return [String]
    #
    # @!attribute more_server_association_exists
    #   <p> Set to true if the application component is running on multiple servers.</p>
    #
    #   @return [Boolean]
    #
    ApplicationComponentDetail = ::Struct.new(
      :id,
      :name,
      :recommendation_set,
      :analysis_status,
      :status_message,
      :list_antipattern_severity_summary,
      :database_config_detail,
      :source_code_repositories,
      :app_type,
      :resource_sub_type,
      :inclusion_status,
      :antipattern_report_s3_object,
      :antipattern_report_status,
      :antipattern_report_status_message,
      :os_version,
      :os_driver,
      :last_analyzed_timestamp,
      :associated_server_id,
      :more_server_association_exists,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Contains information about a strategy recommendation for an application component.
    #     </p>
    #
    # @!attribute recommendation
    #   <p> Strategy recommendation for the application component. </p>
    #
    #   @return [RecommendationSet]
    #
    # @!attribute status
    #   <p> The recommendation status of a strategy for an application component. </p>
    #
    #   Enum, one of: ["recommended", "viableOption", "notRecommended"]
    #
    #   @return [String]
    #
    # @!attribute is_preferred
    #   <p> Set to true if the recommendation is set as preferred. </p>
    #
    #   @return [Boolean]
    #
    ApplicationComponentStrategy = ::Struct.new(
      :recommendation,
      :status,
      :is_preferred,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Contains the summary of application components.
    #     </p>
    #
    # @!attribute app_type
    #   <p>
    #         Contains the name of application types.
    #       </p>
    #
    #   Enum, one of: ["DotNetFramework", "Java", "SQLServer", "IIS", "Oracle", "Other"]
    #
    #   @return [String]
    #
    # @!attribute count
    #   <p>
    #         Contains the count of application type.
    #       </p>
    #
    #   @return [Integer]
    #
    ApplicationComponentSummary = ::Struct.new(
      :app_type,
      :count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Application preferences that you specify.
    #     </p>
    #
    # @!attribute management_preference
    #   <p>
    #         Application preferences that you specify to prefer managed environment.
    #       </p>
    #
    #   @return [ManagementPreference]
    #
    ApplicationPreferences = ::Struct.new(
      :management_preference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssessmentStatus
    #
    module AssessmentStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETE = "COMPLETE"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      STOPPED = "STOPPED"
    end

    # <p>
    #       Contains the summary of the assessment results.
    #     </p>
    #
    # @!attribute list_server_strategy_summary
    #   <p>
    #         List of ServerStrategySummary.
    #       </p>
    #
    #   @return [Array<StrategySummary>]
    #
    # @!attribute list_application_component_strategy_summary
    #   <p>
    #         List of ApplicationComponentStrategySummary.
    #       </p>
    #
    #   @return [Array<StrategySummary>]
    #
    # @!attribute list_antipattern_severity_summary
    #   <p>
    #         List of AntipatternSeveritySummary.
    #       </p>
    #
    #   @return [Array<AntipatternSeveritySummary>]
    #
    # @!attribute list_application_component_summary
    #   <p>
    #         List of ApplicationComponentSummary.
    #       </p>
    #
    #   @return [Array<ApplicationComponentSummary>]
    #
    # @!attribute list_server_summary
    #   <p>
    #         List of ServerSummary.
    #       </p>
    #
    #   @return [Array<ServerSummary>]
    #
    # @!attribute antipattern_report_s3_object
    #   <p>
    #         The Amazon S3 object containing the anti-pattern report.
    #       </p>
    #
    #   @return [S3Object]
    #
    # @!attribute antipattern_report_status
    #   <p>
    #         The status of the anti-pattern report.
    #       </p>
    #
    #   Enum, one of: ["FAILED", "IN_PROGRESS", "SUCCESS"]
    #
    #   @return [String]
    #
    # @!attribute antipattern_report_status_message
    #   <p>
    #         The status message of the anti-pattern report.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute last_analyzed_timestamp
    #   <p>
    #         The time the assessment was performed.
    #       </p>
    #
    #   @return [Time]
    #
    AssessmentSummary = ::Struct.new(
      :list_server_strategy_summary,
      :list_application_component_strategy_summary,
      :list_antipattern_severity_summary,
      :list_application_component_summary,
      :list_server_summary,
      :antipattern_report_s3_object,
      :antipattern_report_status,
      :antipattern_report_status_message,
      :last_analyzed_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Object containing details about applications as defined in Application Discovery Service.
    #     </p>
    #
    # @!attribute name
    #   <p>
    #         Name of the application as defined in Application Discovery Service.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>
    #         ID of the application as defined in Application Discovery Service.
    #       </p>
    #
    #   @return [String]
    #
    AssociatedApplication = ::Struct.new(
      :name,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Object containing the choice of application destination that you specify.
    #     </p>
    #
    # @!attribute target_destination
    #   <p>
    #         The choice of application destination that you specify.
    #       </p>
    #
    #   @return [Array<String>]
    #
    AwsManagedResources = ::Struct.new(
      :target_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AwsManagedTargetDestination
    #
    module AwsManagedTargetDestination
      # No documentation available.
      #
      NONE_SPECIFIED = "None specified"

      # No documentation available.
      #
      AWS_ELASTIC_BEANSTALK = "AWS Elastic BeanStalk"

      # No documentation available.
      #
      AWS_FARGATE = "AWS Fargate"
    end

    # <p>
    #       Business goals that you specify.
    #     </p>
    #
    # @!attribute speed_of_migration
    #   <p>
    #         Business goal to achieve migration at a fast pace.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute reduce_operational_overhead_with_managed_services
    #   <p>
    #         Business goal to reduce the operational overhead on the team by moving into managed services.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute modernize_infrastructure_with_cloud_native_technologies
    #   <p>
    #         Business goal to modernize infrastructure by moving to cloud native technologies.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute license_cost_reduction
    #   <p>
    #         Business goal to reduce license costs.
    #       </p>
    #
    #   @return [Integer]
    #
    BusinessGoals = ::Struct.new(
      :speed_of_migration,
      :reduce_operational_overhead_with_managed_services,
      :modernize_infrastructure_with_cloud_native_technologies,
      :license_cost_reduction,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Process data collector that runs in the environment that you specify.
    #     </p>
    #
    # @!attribute collector_id
    #   <p>
    #         The ID of the collector.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>
    #         IP address of the server that is hosting the collector.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute host_name
    #   <p>
    #         Hostname of the server that is hosting the collector.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute collector_health
    #   <p>
    #         Indicates the health of a collector.
    #       </p>
    #
    #   Enum, one of: ["COLLECTOR_HEALTHY", "COLLECTOR_UNHEALTHY"]
    #
    #   @return [String]
    #
    # @!attribute collector_version
    #   <p>
    #         Current version of the collector that is running in the environment that you specify.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute registered_time_stamp
    #   <p>
    #         Time when the collector registered with the service.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute last_activity_time_stamp
    #   <p>
    #         Time when the collector last pinged the service.
    #       </p>
    #
    #   @return [String]
    #
    Collector = ::Struct.new(
      :collector_id,
      :ip_address,
      :host_name,
      :collector_health,
      :collector_version,
      :registered_time_stamp,
      :last_activity_time_stamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CollectorHealth
    #
    module CollectorHealth
      # No documentation available.
      #
      COLLECTOR_HEALTHY = "COLLECTOR_HEALTHY"

      # No documentation available.
      #
      COLLECTOR_UNHEALTHY = "COLLECTOR_UNHEALTHY"
    end

    # <p>
    #       Exception to indicate that there is an ongoing task when a new task is created.
    #       Return when once the existing tasks are complete.
    #     </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Detailed information about an assessment. </p>
    #
    # @!attribute status
    #   <p> The status of the assessment. </p>
    #
    #   Enum, one of: ["IN_PROGRESS", "COMPLETE", "FAILED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute servers
    #   <p> The total number of servers in the assessment. </p>
    #
    #   @return [Integer]
    #
    # @!attribute failed
    #   <p> The number of failed servers in the assessment. </p>
    #
    #   @return [Integer]
    #
    # @!attribute success
    #   <p> The number of successful servers in the assessment. </p>
    #
    #   @return [Integer]
    #
    # @!attribute in_progress
    #   <p> The number of servers with the assessment status <code>IN_PROGESS</code>. </p>
    #
    #   @return [Integer]
    #
    # @!attribute start_time
    #   <p> The start time of assessment. </p>
    #
    #   @return [Time]
    #
    # @!attribute completion_time
    #   <p> The time the assessment completes. </p>
    #
    #   @return [Time]
    #
    DataCollectionDetails = ::Struct.new(
      :status,
      :servers,
      :failed,
      :success,
      :in_progress,
      :start_time,
      :completion_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataSourceType
    #
    module DataSourceType
      # No documentation available.
      #
      ADS = "ApplicationDiscoveryService"

      # No documentation available.
      #
      MPA = "MPA"
    end

    # <p>
    #       Configuration information used for assessing databases.
    #     </p>
    #
    # @!attribute secret_name
    #   <p>
    #         AWS Secrets Manager key that holds the credentials that you use to connect to a database.
    #       </p>
    #
    #   @return [String]
    #
    DatabaseConfigDetail = ::Struct.new(
      :secret_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DatabaseManagementPreference
    #
    module DatabaseManagementPreference
      # No documentation available.
      #
      AWS_MANAGED = "AWS-managed"

      # No documentation available.
      #
      SELF_MANAGE = "Self-manage"

      # No documentation available.
      #
      NO_PREFERENCE = "No preference"
    end

    # <p>
    #       Preferences for migrating a database to AWS.
    #     </p>
    #
    class DatabaseMigrationPreference < Hearth::Union
      # <p> Indicates whether you are interested in moving from one type of database to another. For
      #       example, from SQL Server to Amazon Aurora MySQL-Compatible Edition. </p>
      #
      class Heterogeneous < DatabaseMigrationPreference
        def to_h
          { heterogeneous: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::MigrationHubStrategy::Types::Heterogeneous #{__getobj__ || 'nil'}>"
        end
      end

      # <p> Indicates whether you are interested in moving to the same type of database into AWS.
      #       For example, from SQL Server in your environment to SQL Server on AWS. </p>
      #
      class Homogeneous < DatabaseMigrationPreference
        def to_h
          { homogeneous: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::MigrationHubStrategy::Types::Homogeneous #{__getobj__ || 'nil'}>"
        end
      end

      # <p>
      #       Indicated that you do not prefer heterogeneous or homogeneous.
      #     </p>
      #
      class NoPreference < DatabaseMigrationPreference
        def to_h
          { no_preference: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::MigrationHubStrategy::Types::NoPreference #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < DatabaseMigrationPreference
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::MigrationHubStrategy::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>
    #       Preferences on managing your databases on AWS.
    #     </p>
    #
    # @!attribute database_management_preference
    #   <p> Specifies whether you're interested in self-managed databases or databases managed by
    #         AWS. </p>
    #
    #   Enum, one of: ["AWS-managed", "Self-manage", "No preference"]
    #
    #   @return [String]
    #
    # @!attribute database_migration_preference
    #   <p>
    #         Specifies your preferred migration path.
    #       </p>
    #
    #   @return [DatabaseMigrationPreference]
    #
    DatabasePreferences = ::Struct.new(
      :database_management_preference,
      :database_migration_preference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_component_id
    #   <p> The ID of the application component. The ID is unique within an AWS account.</p>
    #
    #   @return [String]
    #
    GetApplicationComponentDetailsInput = ::Struct.new(
      :application_component_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_component_detail
    #   <p> Detailed information about an application component. </p>
    #
    #   @return [ApplicationComponentDetail]
    #
    # @!attribute associated_applications
    #   <p> The associated application group as defined in AWS Application Discovery Service. </p>
    #
    #   @return [Array<AssociatedApplication>]
    #
    # @!attribute more_application_resource
    #   <p> Set to true if the application component belongs to more than one application group.
    #       </p>
    #
    #   @return [Boolean]
    #
    # @!attribute associated_server_ids
    #   <p> A list of the IDs of the servers on which the application component is running. </p>
    #
    #   @return [Array<String>]
    #
    GetApplicationComponentDetailsOutput = ::Struct.new(
      :application_component_detail,
      :associated_applications,
      :more_application_resource,
      :associated_server_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_component_id
    #   <p> The ID of the application component. The ID is unique within an AWS account.</p>
    #
    #   @return [String]
    #
    GetApplicationComponentStrategiesInput = ::Struct.new(
      :application_component_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_component_strategies
    #   <p> A list of application component strategy recommendations. </p>
    #
    #   @return [Array<ApplicationComponentStrategy>]
    #
    GetApplicationComponentStrategiesOutput = ::Struct.new(
      :application_component_strategies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p> The <code>assessmentid</code> returned by <a>StartAssessment</a>.</p>
    #
    #   @return [String]
    #
    GetAssessmentInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p> The ID for the specific assessment task. </p>
    #
    #   @return [String]
    #
    # @!attribute data_collection_details
    #   <p> Detailed information about the assessment. </p>
    #
    #   @return [DataCollectionDetails]
    #
    GetAssessmentOutput = ::Struct.new(
      :id,
      :data_collection_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p> The ID of the import file task. This ID is returned in the response of
    #         <a>StartImportFileTask</a>. </p>
    #
    #   @return [String]
    #
    GetImportFileTaskInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p> The import file task <code>id</code> returned in the response of <a>StartImportFileTask</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> Status of import file task. </p>
    #
    #   Enum, one of: ["ImportInProgress", "ImportFailed", "ImportPartialSuccess", "ImportSuccess", "DeleteInProgress", "DeleteFailed", "DeletePartialSuccess", "DeleteSuccess"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p> Start time of the import task. </p>
    #
    #   @return [Time]
    #
    # @!attribute input_s3_bucket
    #   <p> The S3 bucket where import file is located. </p>
    #
    #   @return [String]
    #
    # @!attribute input_s3_key
    #   <p> The Amazon S3 key name of the import file. </p>
    #
    #   @return [String]
    #
    # @!attribute status_report_s3_bucket
    #   <p> The S3 bucket name for status report of import task. </p>
    #
    #   @return [String]
    #
    # @!attribute status_report_s3_key
    #   <p> The Amazon S3 key name for status report of import task. The report contains details about
    #         whether each record imported successfully or why it did not.</p>
    #
    #   @return [String]
    #
    # @!attribute completion_time
    #   <p> The time that the import task completed. </p>
    #
    #   @return [Time]
    #
    # @!attribute number_of_records_success
    #   <p> The number of records successfully imported. </p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_records_failed
    #   <p> The number of records that failed to be imported. </p>
    #
    #   @return [Integer]
    #
    # @!attribute import_name
    #   <p> The name of the import task given in <a>StartImportFileTask</a>. </p>
    #
    #   @return [String]
    #
    GetImportFileTaskOutput = ::Struct.new(
      :id,
      :status,
      :start_time,
      :input_s3_bucket,
      :input_s3_key,
      :status_report_s3_bucket,
      :status_report_s3_key,
      :completion_time,
      :number_of_records_success,
      :number_of_records_failed,
      :import_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetPortfolioPreferencesInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute prioritize_business_goals
    #   <p> The rank of business goals based on priority. </p>
    #
    #   @return [PrioritizeBusinessGoals]
    #
    # @!attribute application_preferences
    #   <p> The transformation preferences for non-database applications. </p>
    #
    #   @return [ApplicationPreferences]
    #
    # @!attribute database_preferences
    #   <p> The transformation preferences for database applications. </p>
    #
    #   @return [DatabasePreferences]
    #
    GetPortfolioPreferencesOutput = ::Struct.new(
      :prioritize_business_goals,
      :application_preferences,
      :database_preferences,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetPortfolioSummaryInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_summary
    #   <p> An assessment summary for the portfolio including the number of servers to rehost and the
    #         overall number of anti-patterns. </p>
    #
    #   @return [AssessmentSummary]
    #
    GetPortfolioSummaryOutput = ::Struct.new(
      :assessment_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p> The recommendation report generation task <code>id</code> returned by
    #         <a>StartRecommendationReportGeneration</a>. </p>
    #
    #   @return [String]
    #
    GetRecommendationReportDetailsInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p> The ID of the recommendation report generation task. See the response of <a>StartRecommendationReportGeneration</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_report_details
    #   <p> Detailed information about the recommendation report. </p>
    #
    #   @return [RecommendationReportDetails]
    #
    GetRecommendationReportDetailsOutput = ::Struct.new(
      :id,
      :recommendation_report_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_id
    #   <p> The ID of the server. </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example,
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> The maximum number of items to include in the response. The maximum value is 100. </p>
    #
    #   @return [Integer]
    #
    GetServerDetailsInput = ::Struct.new(
      :server_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p> The token you use to retrieve the next set of results, or null if there are no more results. </p>
    #
    #   @return [String]
    #
    # @!attribute server_detail
    #   <p> Detailed information about the server. </p>
    #
    #   @return [ServerDetail]
    #
    # @!attribute associated_applications
    #   <p> The associated application group the server belongs to, as defined in AWS Application Discovery Service.
    #       </p>
    #
    #   @return [Array<AssociatedApplication>]
    #
    GetServerDetailsOutput = ::Struct.new(
      :next_token,
      :server_detail,
      :associated_applications,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_id
    #   <p> The ID of the server. </p>
    #
    #   @return [String]
    #
    GetServerStrategiesInput = ::Struct.new(
      :server_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_strategies
    #   <p> A list of strategy recommendations for the server. </p>
    #
    #   @return [Array<ServerStrategy>]
    #
    GetServerStrategiesOutput = ::Struct.new(
      :server_strategies,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       The object containing information about distinct imports or groups for Strategy Recommendations.
    #     </p>
    #
    # @!attribute name
    #   <p>
    #         The key of the specific import group.
    #       </p>
    #
    #   Enum, one of: ["ExternalId"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>
    #         The value of the specific import group.
    #       </p>
    #
    #   @return [String]
    #
    Group = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for GroupName
    #
    module GroupName
      # No documentation available.
      #
      EXTERNAL_ID = "ExternalId"
    end

    # <p>
    #       The object containing details about heterogeneous database preferences.
    #     </p>
    #
    # @!attribute target_database_engine
    #   <p>
    #         The target database engine for heterogeneous database migration preference.
    #       </p>
    #
    #   @return [Array<String>]
    #
    Heterogeneous = ::Struct.new(
      :target_database_engine,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HeterogeneousTargetDatabaseEngine
    #
    module HeterogeneousTargetDatabaseEngine
      # No documentation available.
      #
      NONE_SPECIFIED = "None specified"

      # No documentation available.
      #
      AMAZON_AURORA = "Amazon Aurora"

      # No documentation available.
      #
      AWS_POSTGRESQL = "AWS PostgreSQL"

      # No documentation available.
      #
      MYSQL = "MySQL"

      # No documentation available.
      #
      MICROSOFT_SQL_SERVER = "Microsoft SQL Server"

      # No documentation available.
      #
      ORACLE_DATABASE = "Oracle Database"

      # No documentation available.
      #
      MARIA_DB = "MariaDB"

      # No documentation available.
      #
      SAP = "SAP"

      # No documentation available.
      #
      DB2_LUW = "Db2 LUW"

      # No documentation available.
      #
      MONGO_DB = "MongoDB"
    end

    # <p>
    #       The object containing details about homogeneous database preferences.
    #     </p>
    #
    # @!attribute target_database_engine
    #   <p>
    #         The target database engine for homogeneous database migration preferences.
    #       </p>
    #
    #   @return [Array<String>]
    #
    Homogeneous = ::Struct.new(
      :target_database_engine,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HomogeneousTargetDatabaseEngine
    #
    module HomogeneousTargetDatabaseEngine
      # No documentation available.
      #
      NONE_SPECIFIED = "None specified"
    end

    # <p> Information about the import file tasks you request. </p>
    #
    # @!attribute id
    #   <p> The ID of the import file task. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> Status of import file task. </p>
    #
    #   Enum, one of: ["ImportInProgress", "ImportFailed", "ImportPartialSuccess", "ImportSuccess", "DeleteInProgress", "DeleteFailed", "DeletePartialSuccess", "DeleteSuccess"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p> Start time of the import task. </p>
    #
    #   @return [Time]
    #
    # @!attribute input_s3_bucket
    #   <p> The S3 bucket where the import file is located. </p>
    #
    #   @return [String]
    #
    # @!attribute input_s3_key
    #   <p> The Amazon S3 key name of the import file. </p>
    #
    #   @return [String]
    #
    # @!attribute status_report_s3_bucket
    #   <p> The S3 bucket name for status report of import task. </p>
    #
    #   @return [String]
    #
    # @!attribute status_report_s3_key
    #   <p> The Amazon S3 key name for status report of import task. The report contains  details about
    #         whether each record imported successfully or why it did not. </p>
    #
    #   @return [String]
    #
    # @!attribute completion_time
    #   <p> The time that the import task completes. </p>
    #
    #   @return [Time]
    #
    # @!attribute number_of_records_success
    #   <p> The number of records successfully imported. </p>
    #
    #   @return [Integer]
    #
    # @!attribute number_of_records_failed
    #   <p> The number of records that failed to be imported. </p>
    #
    #   @return [Integer]
    #
    # @!attribute import_name
    #   <p> The name of the import task given in <code>StartImportFileTask</code>. </p>
    #
    #   @return [String]
    #
    ImportFileTaskInformation = ::Struct.new(
      :id,
      :status,
      :start_time,
      :input_s3_bucket,
      :input_s3_key,
      :status_report_s3_bucket,
      :status_report_s3_key,
      :completion_time,
      :number_of_records_success,
      :number_of_records_failed,
      :import_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImportFileTaskStatus
    #
    module ImportFileTaskStatus
      # No documentation available.
      #
      IMPORT_IN_PROGRESS = "ImportInProgress"

      # No documentation available.
      #
      IMPORT_FAILED = "ImportFailed"

      # No documentation available.
      #
      IMPORT_PARTIAL_SUCCESS = "ImportPartialSuccess"

      # No documentation available.
      #
      IMPORT_SUCCESS = "ImportSuccess"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DeleteInProgress"

      # No documentation available.
      #
      DELETE_FAILED = "DeleteFailed"

      # No documentation available.
      #
      DELETE_PARTIAL_SUCCESS = "DeletePartialSuccess"

      # No documentation available.
      #
      DELETE_SUCCESS = "DeleteSuccess"
    end

    # Includes enum constants for InclusionStatus
    #
    module InclusionStatus
      # No documentation available.
      #
      EXCLUDE_FROM_RECOMMENDATION = "excludeFromAssessment"

      # No documentation available.
      #
      INCLUDE_IN_RECOMMENDATION = "includeInAssessment"
    end

    # <p> The server experienced an internal error. Try again. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_component_criteria
    #   <p> Criteria for filtering the list of application components. </p>
    #
    #   Enum, one of: ["NOT_DEFINED", "APP_NAME", "SERVER_ID", "APP_TYPE", "STRATEGY", "DESTINATION"]
    #
    #   @return [String]
    #
    # @!attribute filter_value
    #   <p> Specify the value based on the application component criteria type. For example, if
    #           <code>applicationComponentCriteria</code> is set to <code>SERVER_ID</code> and
    #           <code>filterValue</code> is set to <code>server1</code>, then <a>ListApplicationComponents</a> returns all the application components running on
    #         server1. </p>
    #
    #   @return [String]
    #
    # @!attribute sort
    #   <p> Specifies whether to sort by ascending (<code>ASC</code>) or descending
    #         (<code>DESC</code>) order. </p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    # @!attribute group_id_filter
    #   <p> The group ID specified in to filter on. </p>
    #
    #   @return [Array<Group>]
    #
    # @!attribute next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example,
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> The maximum number of items to include in the response. The maximum value is 100. </p>
    #
    #   @return [Integer]
    #
    ListApplicationComponentsInput = ::Struct.new(
      :application_component_criteria,
      :filter_value,
      :sort,
      :group_id_filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_component_infos
    #   <p> The list of application components with detailed information about each component.
    #       </p>
    #
    #   @return [Array<ApplicationComponentDetail>]
    #
    # @!attribute next_token
    #   <p> The token you use to retrieve the next set of results, or null if there are no more results. </p>
    #
    #   @return [String]
    #
    ListApplicationComponentsOutput = ::Struct.new(
      :application_component_infos,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example,
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> The maximum number of items to include in the response. The maximum value is 100. </p>
    #
    #   @return [Integer]
    #
    ListCollectorsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute collectors
    #   <p> The list of all the installed collectors. </p>
    #
    #   @return [Array<Collector>]
    #
    # @!attribute next_token
    #   <p> The token you use to retrieve the next set of results, or null if there are no more results. </p>
    #
    #   @return [String]
    #
    ListCollectorsOutput = ::Struct.new(
      :collectors,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example,
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> The total number of items to return. The maximum value is 100. </p>
    #
    #   @return [Integer]
    #
    ListImportFileTaskInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute task_infos
    #   <p> Lists information about the files you import.</p>
    #
    #   @return [Array<ImportFileTaskInformation>]
    #
    # @!attribute next_token
    #   <p> The token you use to retrieve the next set of results, or null if there are no more results. </p>
    #
    #   @return [String]
    #
    ListImportFileTaskOutput = ::Struct.new(
      :task_infos,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_criteria
    #   <p> Criteria for filtering servers. </p>
    #
    #   Enum, one of: ["NOT_DEFINED", "OS_NAME", "STRATEGY", "DESTINATION", "SERVER_ID"]
    #
    #   @return [String]
    #
    # @!attribute filter_value
    #   <p> Specifies the filter value, which is based on the type of server criteria. For example,
    #         if <code>serverCriteria</code> is <code>OS_NAME</code>, and the <code>filterValue</code> is
    #         equal to <code>WindowsServer</code>, then <code>ListServers</code> returns all of the servers
    #         matching the OS name <code>WindowsServer</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute sort
    #   <p> Specifies whether to sort by ascending (<code>ASC</code>) or descending
    #         (<code>DESC</code>) order. </p>
    #
    #   Enum, one of: ["ASC", "DESC"]
    #
    #   @return [String]
    #
    # @!attribute group_id_filter
    #   <p> Specifies the group ID to filter on. </p>
    #
    #   @return [Array<Group>]
    #
    # @!attribute next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example,
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> The maximum number of items to include in the response. The maximum value is 100. </p>
    #
    #   @return [Integer]
    #
    ListServersInput = ::Struct.new(
      :server_criteria,
      :filter_value,
      :sort,
      :group_id_filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_infos
    #   <p> The list of servers with detailed information about each server. </p>
    #
    #   @return [Array<ServerDetail>]
    #
    # @!attribute next_token
    #   <p> The token you use to retrieve the next set of results, or null if there are no more results. </p>
    #
    #   @return [String]
    #
    ListServersOutput = ::Struct.new(
      :server_infos,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Preferences for migrating an application to AWS.
    #     </p>
    #
    class ManagementPreference < Hearth::Union
      # <p>
      #       Indicates interest in solutions that are managed by AWS.
      #     </p>
      #
      class AwsManagedResources < ManagementPreference
        def to_h
          { aws_managed_resources: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::MigrationHubStrategy::Types::AwsManagedResources #{__getobj__ || 'nil'}>"
        end
      end

      # <p>
      #       Indicates interest in managing your own resources on AWS.
      #     </p>
      #
      class SelfManageResources < ManagementPreference
        def to_h
          { self_manage_resources: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::MigrationHubStrategy::Types::SelfManageResources #{__getobj__ || 'nil'}>"
        end
      end

      # <p>
      #       No specific preference.
      #     </p>
      #
      class NoPreference < ManagementPreference
        def to_h
          { no_preference: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::MigrationHubStrategy::Types::NoPreference #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < ManagementPreference
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::MigrationHubStrategy::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>
    #       Information about the server's network for which the assessment was run.
    #     </p>
    #
    # @!attribute interface_name
    #   <p>
    #         Information about the name of the interface of the server for which the assessment was run.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>
    #         Information about the IP address of the server for which the assessment was run.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute mac_address
    #   <p>
    #         Information about the MAC address of the server for which the assessment was run.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute net_mask
    #   <p>
    #         Information about the subnet mask of the server for which the assessment was run.
    #       </p>
    #
    #   @return [String]
    #
    NetworkInfo = ::Struct.new(
      :interface_name,
      :ip_address,
      :mac_address,
      :net_mask,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The object containing details about database migration preferences, when you have no
    #       particular preference. </p>
    #
    # @!attribute target_database_engine
    #   <p>
    #         The target database engine for database migration preference that you specify.
    #       </p>
    #
    #   @return [Array<String>]
    #
    NoDatabaseMigrationPreference = ::Struct.new(
      :target_database_engine,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Object containing the choice of application destination that you specify.
    #     </p>
    #
    # @!attribute target_destination
    #   <p>
    #         The choice of application destination that you specify.
    #       </p>
    #
    #   @return [Array<String>]
    #
    NoManagementPreference = ::Struct.new(
      :target_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NoPreferenceTargetDestination
    #
    module NoPreferenceTargetDestination
      # No documentation available.
      #
      NONE_SPECIFIED = "None specified"

      # No documentation available.
      #
      AWS_ELASTIC_BEANSTALK = "AWS Elastic BeanStalk"

      # No documentation available.
      #
      AWS_FARGATE = "AWS Fargate"

      # No documentation available.
      #
      AMAZON_ELASTIC_CLOUD_COMPUTE = "Amazon Elastic Cloud Compute (EC2)"

      # No documentation available.
      #
      AMAZON_ELASTIC_CONTAINER_SERVICE = "Amazon Elastic Container Service (ECS)"

      # No documentation available.
      #
      AMAZON_ELASTIC_KUBERNETES_SERVICE = "Amazon Elastic Kubernetes Service (EKS)"
    end

    # <p>
    #       Information about the operating system.
    #     </p>
    #
    # @!attribute type
    #   <p>
    #         Information about the type of operating system.
    #       </p>
    #
    #   Enum, one of: ["LINUX", "WINDOWS"]
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>
    #         Information about the version of operating system.
    #       </p>
    #
    #   @return [String]
    #
    OSInfo = ::Struct.new(
      :type,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OSType
    #
    module OSType
      # No documentation available.
      #
      LINUX = "LINUX"

      # No documentation available.
      #
      WINDOWS = "WINDOWS"
    end

    # Includes enum constants for OutputFormat
    #
    module OutputFormat
      # No documentation available.
      #
      Excel = "Excel"

      # No documentation available.
      #
      Json = "Json"
    end

    # <p>
    #       Rank of business goals based on priority.
    #     </p>
    #
    # @!attribute business_goals
    #   <p>
    #         Rank of business goals based on priority.
    #       </p>
    #
    #   @return [BusinessGoals]
    #
    PrioritizeBusinessGoals = ::Struct.new(
      :business_goals,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute prioritize_business_goals
    #   <p> The rank of the business goals based on priority. </p>
    #
    #   @return [PrioritizeBusinessGoals]
    #
    # @!attribute application_preferences
    #   <p> The transformation preferences for non-database applications. </p>
    #
    #   @return [ApplicationPreferences]
    #
    # @!attribute database_preferences
    #   <p> The transformation preferences for database applications. </p>
    #
    #   @return [DatabasePreferences]
    #
    PutPortfolioPreferencesInput = ::Struct.new(
      :prioritize_business_goals,
      :application_preferences,
      :database_preferences,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutPortfolioPreferencesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #      Contains detailed information about a recommendation report.
    #     </p>
    #
    # @!attribute status
    #   <p>
    #         The status of the recommendation report generation task.
    #       </p>
    #
    #   Enum, one of: ["FAILED", "IN_PROGRESS", "SUCCESS"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>
    #         The status message for recommendation report generation.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>
    #         The time that the recommendation report generation task starts.
    #       </p>
    #
    #   @return [Time]
    #
    # @!attribute completion_time
    #   <p>
    #         The time that the recommendation report generation task completes.
    #       </p>
    #
    #   @return [Time]
    #
    # @!attribute s3_bucket
    #   <p>
    #         The S3 bucket where the report file is located.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute s3_keys
    #   <p>
    #         The Amazon S3 key name of the report file.
    #       </p>
    #
    #   @return [Array<String>]
    #
    RecommendationReportDetails = ::Struct.new(
      :status,
      :status_message,
      :start_time,
      :completion_time,
      :s3_bucket,
      :s3_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RecommendationReportStatus
    #
    module RecommendationReportStatus
      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      SUCCESS = "SUCCESS"
    end

    # <p>
    #       Contains a recommendation set.
    #     </p>
    #
    # @!attribute transformation_tool
    #   <p>
    #         The target destination for the recommendation set.
    #       </p>
    #
    #   @return [TransformationTool]
    #
    # @!attribute target_destination
    #   <p>
    #         The recommended target destination.
    #       </p>
    #
    #   Enum, one of: ["None specified", "AWS Elastic BeanStalk", "AWS Fargate", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)", "Aurora MySQL", "Aurora PostgreSQL", "Amazon Relational Database Service on MySQL", "Amazon Relational Database Service on PostgreSQL", "Amazon DocumentDB", "Amazon DynamoDB", "Amazon Relational Database Service"]
    #
    #   @return [String]
    #
    # @!attribute strategy
    #   <p>
    #         The recommended strategy.
    #       </p>
    #
    #   Enum, one of: ["Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"]
    #
    #   @return [String]
    #
    RecommendationSet = ::Struct.new(
      :transformation_tool,
      :target_destination,
      :strategy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The specified ID in the request is not found. </p>
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

    # Includes enum constants for ResourceSubType
    #
    module ResourceSubType
      # No documentation available.
      #
      DATABASE = "Database"

      # No documentation available.
      #
      PROCESS = "Process"

      # No documentation available.
      #
      DATABASE_PROCESS = "DatabaseProcess"
    end

    # Includes enum constants for RunTimeAssessmentStatus
    #
    module RunTimeAssessmentStatus
      # No documentation available.
      #
      DC_TO_BE_SCHEDULED = "dataCollectionTaskToBeScheduled"

      # No documentation available.
      #
      DC_REQ_SENT = "dataCollectionTaskScheduled"

      # No documentation available.
      #
      DC_STARTED = "dataCollectionTaskStarted"

      # No documentation available.
      #
      DC_STOPPED = "dataCollectionTaskStopped"

      # No documentation available.
      #
      DC_SUCCESS = "dataCollectionTaskSuccess"

      # No documentation available.
      #
      DC_FAILED = "dataCollectionTaskFailed"

      # No documentation available.
      #
      DC_PARTIAL_SUCCESS = "dataCollectionTaskPartialSuccess"
    end

    # <p> Contains the S3 bucket name and the Amazon S3 key name. </p>
    #
    # @!attribute s3_bucket
    #   <p> The S3 bucket name. </p>
    #
    #   @return [String]
    #
    # @!attribute s3key
    #   <p> The Amazon S3 key name. </p>
    #
    #   @return [String]
    #
    S3Object = ::Struct.new(
      :s3_bucket,
      :s3key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Self-managed resources. </p>
    #
    # @!attribute target_destination
    #   <p> Self-managed resources target destination. </p>
    #
    #   @return [Array<String>]
    #
    SelfManageResources = ::Struct.new(
      :target_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SelfManageTargetDestination
    #
    module SelfManageTargetDestination
      # No documentation available.
      #
      NONE_SPECIFIED = "None specified"

      # No documentation available.
      #
      AMAZON_ELASTIC_CLOUD_COMPUTE = "Amazon Elastic Cloud Compute (EC2)"

      # No documentation available.
      #
      AMAZON_ELASTIC_CONTAINER_SERVICE = "Amazon Elastic Container Service (ECS)"

      # No documentation available.
      #
      AMAZON_ELASTIC_KUBERNETES_SERVICE = "Amazon Elastic Kubernetes Service (EKS)"
    end

    # Includes enum constants for ServerCriteria
    #
    module ServerCriteria
      # No documentation available.
      #
      NOT_DEFINED = "NOT_DEFINED"

      # No documentation available.
      #
      OS_NAME = "OS_NAME"

      # No documentation available.
      #
      STRATEGY = "STRATEGY"

      # No documentation available.
      #
      DESTINATION = "DESTINATION"

      # No documentation available.
      #
      SERVER_ID = "SERVER_ID"
    end

    # <p> Detailed information about a server. </p>
    #
    # @!attribute id
    #   <p> The server ID. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of the server. </p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_set
    #   <p> A set of recommendations. </p>
    #
    #   @return [RecommendationSet]
    #
    # @!attribute data_collection_status
    #   <p> The status of assessment for the server. </p>
    #
    #   Enum, one of: ["dataCollectionTaskToBeScheduled", "dataCollectionTaskScheduled", "dataCollectionTaskStarted", "dataCollectionTaskStopped", "dataCollectionTaskSuccess", "dataCollectionTaskFailed", "dataCollectionTaskPartialSuccess"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p> A message about the status of data collection, which contains detailed descriptions of
    #         any error messages. </p>
    #
    #   @return [String]
    #
    # @!attribute list_antipattern_severity_summary
    #   <p> A list of anti-pattern severity summaries. </p>
    #
    #   @return [Array<AntipatternSeveritySummary>]
    #
    # @!attribute system_info
    #   <p> System information about the server. </p>
    #
    #   @return [SystemInfo]
    #
    # @!attribute application_component_strategy_summary
    #   <p> A list of strategy summaries. </p>
    #
    #   @return [Array<StrategySummary>]
    #
    # @!attribute antipattern_report_s3_object
    #   <p> The S3 bucket name and Amazon S3 key name for anti-pattern report. </p>
    #
    #   @return [S3Object]
    #
    # @!attribute antipattern_report_status
    #   <p> The status of the anti-pattern report generation. </p>
    #
    #   Enum, one of: ["FAILED", "IN_PROGRESS", "SUCCESS"]
    #
    #   @return [String]
    #
    # @!attribute antipattern_report_status_message
    #   <p> A message about the status of the anti-pattern report generation. </p>
    #
    #   @return [String]
    #
    # @!attribute server_type
    #   <p> The type of server. </p>
    #
    #   @return [String]
    #
    # @!attribute last_analyzed_timestamp
    #   <p> The timestamp of when the server was assessed. </p>
    #
    #   @return [Time]
    #
    ServerDetail = ::Struct.new(
      :id,
      :name,
      :recommendation_set,
      :data_collection_status,
      :status_message,
      :list_antipattern_severity_summary,
      :system_info,
      :application_component_strategy_summary,
      :antipattern_report_s3_object,
      :antipattern_report_status,
      :antipattern_report_status_message,
      :server_type,
      :last_analyzed_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServerOsType
    #
    module ServerOsType
      # No documentation available.
      #
      windowsServer = "WindowsServer"

      # No documentation available.
      #
      amazonLinux = "AmazonLinux"

      # No documentation available.
      #
      endOfSupportWindowsServer = "EndOfSupportWindowsServer"

      # No documentation available.
      #
      redhat = "Redhat"

      # No documentation available.
      #
      other = "Other"
    end

    # <p> Contains information about a strategy recommendation for a server. </p>
    #
    # @!attribute recommendation
    #   <p> Strategy recommendation for the server. </p>
    #
    #   @return [RecommendationSet]
    #
    # @!attribute status
    #   <p> The recommendation status of the strategy for the server. </p>
    #
    #   Enum, one of: ["recommended", "viableOption", "notRecommended"]
    #
    #   @return [String]
    #
    # @!attribute number_of_application_components
    #   <p> The number of application components with this strategy recommendation running on the
    #         server. </p>
    #
    #   @return [Integer]
    #
    # @!attribute is_preferred
    #   <p> Set to true if the recommendation is set as preferred. </p>
    #
    #   @return [Boolean]
    #
    ServerStrategy = ::Struct.new(
      :recommendation,
      :status,
      :number_of_application_components,
      :is_preferred,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Object containing details about the servers imported by Application Discovery Service
    #     </p>
    #
    # @!attribute server_os_type
    #   <p>
    #         Type of operating system for the servers.
    #       </p>
    #
    #   Enum, one of: ["WindowsServer", "AmazonLinux", "EndOfSupportWindowsServer", "Redhat", "Other"]
    #
    #   @return [String]
    #
    # @!attribute count
    #   <p>
    #         Number of servers.
    #       </p>
    #
    #   @return [Integer]
    #
    ServerSummary = ::Struct.new(
      :server_os_type,
      :count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Exception to indicate that the service-linked role (SLR) is locked.
    #     </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceLinkedRoleLockClientException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The AWS account has reached its quota of imports. Contact AWS Support to increase the
    #       quota for this account. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Severity
    #
    module Severity
      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      LOW = "LOW"
    end

    # Includes enum constants for SortOrder
    #
    module SortOrder
      # No documentation available.
      #
      ASC = "ASC"

      # No documentation available.
      #
      DESC = "DESC"
    end

    # <p>
    #       Object containing source code information that is linked to an application component.
    #     </p>
    #
    # @!attribute version_control
    #   <p>
    #         The type of repository to use for the source code.
    #       </p>
    #
    #   Enum, one of: ["GITHUB", "GITHUB_ENTERPRISE"]
    #
    #   @return [String]
    #
    # @!attribute source_version
    #   <p>
    #         The branch of the source code.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>
    #         The repository name for the source code.
    #       </p>
    #
    #   @return [String]
    #
    SourceCode = ::Struct.new(
      :version_control,
      :source_version,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Object containing source code information that is linked to an application component.
    #     </p>
    #
    # @!attribute repository
    #   <p>
    #         The repository name for the source code.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute branch
    #   <p>
    #         The branch of the source code.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute version_control_type
    #   <p>
    #         The type of repository to use for the source code.
    #       </p>
    #
    #   @return [String]
    #
    SourceCodeRepository = ::Struct.new(
      :repository,
      :branch,
      :version_control_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SrcCodeOrDbAnalysisStatus
    #
    module SrcCodeOrDbAnalysisStatus
      # No documentation available.
      #
      ANALYSIS_TO_BE_SCHEDULED = "ANALYSIS_TO_BE_SCHEDULED"

      # No documentation available.
      #
      ANALYSIS_STARTED = "ANALYSIS_STARTED"

      # No documentation available.
      #
      ANALYSIS_SUCCESS = "ANALYSIS_SUCCESS"

      # No documentation available.
      #
      ANALYSIS_FAILED = "ANALYSIS_FAILED"
    end

    # @!attribute s3bucket_for_analysis_data
    #   <p>
    #         The S3 bucket used by the collectors to send analysis data to the service.
    #         The bucket name must begin with <code>migrationhub-strategy-</code>.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute s3bucket_for_report_data
    #   <p>
    #         The S3 bucket where all the reports generated by the service are stored.
    #         The bucket name must begin with <code>migrationhub-strategy-</code>.
    #       </p>
    #
    #   @return [String]
    #
    StartAssessmentInput = ::Struct.new(
      :s3bucket_for_analysis_data,
      :s3bucket_for_report_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p>
    #         The ID of the assessment.
    #       </p>
    #
    #   @return [String]
    #
    StartAssessmentOutput = ::Struct.new(
      :assessment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p> A descriptive name for the request. </p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket
    #   <p> The S3 bucket where the import file is located. The bucket name is required to begin with
    #           <code>migrationhub-strategy-</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute s3key
    #   <p> The Amazon S3 key name of the import file. </p>
    #
    #   @return [String]
    #
    # @!attribute data_source_type
    #   <p>Specifies the source that the servers are coming from. By default, Strategy Recommendations assumes that
    #         the servers specified in the import file are available in AWS Application Discovery Service. </p>
    #
    #   Enum, one of: ["ApplicationDiscoveryService", "MPA"]
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   <p>Groups the resources in the import file together with a unique name. This ID can be as
    #         filter in <code>ListApplicationComponents</code> and <code>ListServers</code>. </p>
    #
    #   @return [Array<Group>]
    #
    # @!attribute s3bucket_for_report_data
    #   <p> The S3 bucket where Strategy Recommendations uploads import results. The bucket name is required to
    #         begin with migrationhub-strategy-. </p>
    #
    #   @return [String]
    #
    StartImportFileTaskInput = ::Struct.new(
      :name,
      :s3_bucket,
      :s3key,
      :data_source_type,
      :group_id,
      :s3bucket_for_report_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p> The ID for a specific import task. The ID is unique within an AWS account. </p>
    #
    #   @return [String]
    #
    StartImportFileTaskOutput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute output_format
    #   <p> The output format for the recommendation report file. The default format is Microsoft Excel. </p>
    #
    #   Enum, one of: ["Excel", "Json"]
    #
    #   @return [String]
    #
    # @!attribute group_id_filter
    #   <p> Groups the resources in the recommendation report with a unique name. </p>
    #
    #   @return [Array<Group>]
    #
    StartRecommendationReportGenerationInput = ::Struct.new(
      :output_format,
      :group_id_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p> The ID of the recommendation report generation task. </p>
    #
    #   @return [String]
    #
    StartRecommendationReportGenerationOutput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assessment_id
    #   <p> The <code>assessmentId</code> returned by <a>StartAssessment</a>. </p>
    #
    #   @return [String]
    #
    StopAssessmentInput = ::Struct.new(
      :assessment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopAssessmentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Strategy
    #
    module Strategy
      # No documentation available.
      #
      REHOST = "Rehost"

      # No documentation available.
      #
      RETIREMENT = "Retirement"

      # No documentation available.
      #
      REFACTOR = "Refactor"

      # No documentation available.
      #
      REPLATFORM = "Replatform"

      # No documentation available.
      #
      RETAIN = "Retain"

      # No documentation available.
      #
      RELOCATE = "Relocate"

      # No documentation available.
      #
      REPURCHASE = "Repurchase"
    end

    # <p>
    #       Information about all the available strategy options for migrating and modernizing an application component.
    #     </p>
    #
    # @!attribute strategy
    #   <p>
    #         Type of transformation. For example, Rehost, Replatform, and so on.
    #       </p>
    #
    #   Enum, one of: ["Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"]
    #
    #   @return [String]
    #
    # @!attribute tool_name
    #   <p>
    #         The name of the tool that can be used to transform an application component using this strategy.
    #       </p>
    #
    #   Enum, one of: ["App2Container", "Porting Assistant For .NET", "End of Support Migration", "Windows Web Application Migration Assistant", "Application Migration Service", "Strategy Recommendation Support", "In Place Operating System Upgrade", "Schema Conversion Tool", "Database Migration Service", "Native SQL Server Backup/Restore"]
    #
    #   @return [String]
    #
    # @!attribute target_destination
    #   <p>
    #         Destination information about where the application component can migrate to. For example, <code>EC2</code>, <code>ECS</code>, and so on.
    #       </p>
    #
    #   Enum, one of: ["None specified", "AWS Elastic BeanStalk", "AWS Fargate", "Amazon Elastic Cloud Compute (EC2)", "Amazon Elastic Container Service (ECS)", "Amazon Elastic Kubernetes Service (EKS)", "Aurora MySQL", "Aurora PostgreSQL", "Amazon Relational Database Service on MySQL", "Amazon Relational Database Service on PostgreSQL", "Amazon DocumentDB", "Amazon DynamoDB", "Amazon Relational Database Service"]
    #
    #   @return [String]
    #
    # @!attribute is_preferred
    #   <p>
    #         Indicates if a specific strategy is preferred for the application component.
    #       </p>
    #
    #   @return [Boolean]
    #
    StrategyOption = ::Struct.new(
      :strategy,
      :tool_name,
      :target_destination,
      :is_preferred,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StrategyRecommendation
    #
    module StrategyRecommendation
      # No documentation available.
      #
      RECOMMENDED = "recommended"

      # No documentation available.
      #
      VIABLE_OPTION = "viableOption"

      # No documentation available.
      #
      NOT_RECOMMENDED = "notRecommended"
    end

    # <p>
    #       Object containing the summary of the strategy recommendations.
    #     </p>
    #
    # @!attribute strategy
    #   <p>
    #         The name of recommended strategy.
    #       </p>
    #
    #   Enum, one of: ["Rehost", "Retirement", "Refactor", "Replatform", "Retain", "Relocate", "Repurchase"]
    #
    #   @return [String]
    #
    # @!attribute count
    #   <p>
    #         The count of recommendations per strategy.
    #       </p>
    #
    #   @return [Integer]
    #
    StrategySummary = ::Struct.new(
      :strategy,
      :count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>
    #       Information about the server that hosts application components.
    #     </p>
    #
    # @!attribute os_info
    #   <p>
    #         Operating system corresponding to a server.
    #       </p>
    #
    #   @return [OSInfo]
    #
    # @!attribute file_system_type
    #   <p>
    #         File system type for the server.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute network_info_list
    #   <p>
    #         Networking information related to a server.
    #       </p>
    #
    #   @return [Array<NetworkInfo>]
    #
    # @!attribute cpu_architecture
    #   <p>
    #         CPU architecture type for the server.
    #       </p>
    #
    #   @return [String]
    #
    SystemInfo = ::Struct.new(
      :os_info,
      :file_system_type,
      :network_info_list,
      :cpu_architecture,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TargetDatabaseEngine
    #
    module TargetDatabaseEngine
      # No documentation available.
      #
      NONE_SPECIFIED = "None specified"

      # No documentation available.
      #
      AMAZON_AURORA = "Amazon Aurora"

      # No documentation available.
      #
      AWS_POSTGRESQL = "AWS PostgreSQL"

      # No documentation available.
      #
      MYSQL = "MySQL"

      # No documentation available.
      #
      MICROSOFT_SQL_SERVER = "Microsoft SQL Server"

      # No documentation available.
      #
      ORACLE_DATABASE = "Oracle Database"

      # No documentation available.
      #
      MARIA_DB = "MariaDB"

      # No documentation available.
      #
      SAP = "SAP"

      # No documentation available.
      #
      DB2_LUW = "Db2 LUW"

      # No documentation available.
      #
      MONGO_DB = "MongoDB"
    end

    # Includes enum constants for TargetDestination
    #
    module TargetDestination
      # No documentation available.
      #
      NONE_SPECIFIED = "None specified"

      # No documentation available.
      #
      AWS_ELASTIC_BEANSTALK = "AWS Elastic BeanStalk"

      # No documentation available.
      #
      AWS_FARGATE = "AWS Fargate"

      # No documentation available.
      #
      AMAZON_ELASTIC_CLOUD_COMPUTE = "Amazon Elastic Cloud Compute (EC2)"

      # No documentation available.
      #
      AMAZON_ELASTIC_CONTAINER_SERVICE = "Amazon Elastic Container Service (ECS)"

      # No documentation available.
      #
      AMAZON_ELASTIC_KUBERNETES_SERVICE = "Amazon Elastic Kubernetes Service (EKS)"

      # No documentation available.
      #
      AURORA_MYSQL = "Aurora MySQL"

      # No documentation available.
      #
      AURORA_POSTGRESQL = "Aurora PostgreSQL"

      # No documentation available.
      #
      AMAZON_RDS_MYSQL = "Amazon Relational Database Service on MySQL"

      # No documentation available.
      #
      AMAZON_RDS_POSTGRESQL = "Amazon Relational Database Service on PostgreSQL"

      # No documentation available.
      #
      AMAZON_DOCUMENTDB = "Amazon DocumentDB"

      # No documentation available.
      #
      AMAZON_DYNAMODB = "Amazon DynamoDB"

      # No documentation available.
      #
      AMAZON_RDS = "Amazon Relational Database Service"
    end

    # <p> The request was denied due to request throttling. </p>
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

    # <p>
    #       Information of the transformation tool that can be used to migrate and modernize the application.
    #     </p>
    #
    # @!attribute name
    #   <p>
    #         Name of the tool.
    #       </p>
    #
    #   Enum, one of: ["App2Container", "Porting Assistant For .NET", "End of Support Migration", "Windows Web Application Migration Assistant", "Application Migration Service", "Strategy Recommendation Support", "In Place Operating System Upgrade", "Schema Conversion Tool", "Database Migration Service", "Native SQL Server Backup/Restore"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>
    #         Description of the tool.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute tranformation_tool_installation_link
    #   <p>
    #         URL for installing the tool.
    #       </p>
    #
    #   @return [String]
    #
    TransformationTool = ::Struct.new(
      :name,
      :description,
      :tranformation_tool_installation_link,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TransformationToolName
    #
    module TransformationToolName
      # No documentation available.
      #
      APP2CONTAINER = "App2Container"

      # No documentation available.
      #
      PORTING_ASSISTANT = "Porting Assistant For .NET"

      # No documentation available.
      #
      EMP = "End of Support Migration"

      # No documentation available.
      #
      WWAMA = "Windows Web Application Migration Assistant"

      # No documentation available.
      #
      MGN = "Application Migration Service"

      # No documentation available.
      #
      STRATEGY_RECOMMENDATION_SUPPORT = "Strategy Recommendation Support"

      # No documentation available.
      #
      IN_PLACE_OS_UPGRADE = "In Place Operating System Upgrade"

      # No documentation available.
      #
      SCT = "Schema Conversion Tool"

      # No documentation available.
      #
      DMS = "Database Migration Service"

      # No documentation available.
      #
      NATIVE_SQL = "Native SQL Server Backup/Restore"
    end

    # @!attribute application_component_id
    #   <p> The ID of the application component. The ID is unique within an AWS account. </p>
    #
    #   @return [String]
    #
    # @!attribute inclusion_status
    #   <p> Indicates whether the application component has been included for server recommendation
    #         or not. </p>
    #
    #   Enum, one of: ["excludeFromAssessment", "includeInAssessment"]
    #
    #   @return [String]
    #
    # @!attribute strategy_option
    #   <p> The preferred strategy options for the application component. Use values from the <a>GetApplicationComponentStrategies</a> response. </p>
    #
    #   @return [StrategyOption]
    #
    # @!attribute source_code_list
    #   <p> The list of source code configurations to update for the application component. </p>
    #
    #   @return [Array<SourceCode>]
    #
    # @!attribute secrets_manager_key
    #   <p> Database credentials. </p>
    #
    #   @return [String]
    #
    UpdateApplicationComponentConfigInput = ::Struct.new(
      :application_component_id,
      :inclusion_status,
      :strategy_option,
      :source_code_list,
      :secrets_manager_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::MigrationHubStrategy::Types::UpdateApplicationComponentConfigInput "\
          "application_component_id=#{application_component_id || 'nil'}, "\
          "inclusion_status=#{inclusion_status || 'nil'}, "\
          "strategy_option=#{strategy_option || 'nil'}, "\
          "source_code_list=#{source_code_list || 'nil'}, "\
          "secrets_manager_key=\"[SENSITIVE]\">"
      end
    end

    UpdateApplicationComponentConfigOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute server_id
    #   <p> The ID of the server. </p>
    #
    #   @return [String]
    #
    # @!attribute strategy_option
    #   <p> The preferred strategy options for the application component. See the response from <a>GetServerStrategies</a>.</p>
    #
    #   @return [StrategyOption]
    #
    UpdateServerConfigInput = ::Struct.new(
      :server_id,
      :strategy_option,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateServerConfigOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> The request body isn't valid. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VersionControl
    #
    module VersionControl
      # No documentation available.
      #
      GITHUB = "GITHUB"

      # No documentation available.
      #
      GITHUB_ENTERPRISE = "GITHUB_ENTERPRISE"
    end

  end
end
