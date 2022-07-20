# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Schemas
  module Types

    # @!attribute code
    #   <p>The error code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message string of the error output.</p>
    #
    #   @return [String]
    #
    BadRequestException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CodeGenerationStatus
    #
    module CodeGenerationStatus
      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      CREATE_COMPLETE = "CREATE_COMPLETE"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"
    end

    # @!attribute code
    #   <p>The error code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message string of the error output.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>A description for the discoverer.</p>
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>The ARN of the event bus.</p>
    #
    #   @return [String]
    #
    # @!attribute cross_account
    #   <p>Support discovery of schemas in events sent to the bus from another account. (default: true).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>Tags associated with the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateDiscovererInput = ::Struct.new(
      :description,
      :source_arn,
      :cross_account,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cross_account ||= false
      end
    end

    # @!attribute description
    #   <p>The description of the discoverer.</p>
    #
    #   @return [String]
    #
    # @!attribute discoverer_arn
    #   <p>The ARN of the discoverer.</p>
    #
    #   @return [String]
    #
    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>The ARN of the event bus.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the discoverer.</p>
    #
    #   Enum, one of: ["STARTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute cross_account
    #   <p>The Status if the discoverer will discover schemas from events sent from another account.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>Tags associated with the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateDiscovererOutput = ::Struct.new(
      :description,
      :discoverer_arn,
      :discoverer_id,
      :source_arn,
      :state,
      :cross_account,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cross_account ||= false
      end
    end

    # @!attribute description
    #   <p>A description of the registry to be created.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags to associate with the registry.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateRegistryInput = ::Struct.new(
      :description,
      :registry_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>The description of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_arn
    #   <p>The ARN of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags associated with the registry.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateRegistryOutput = ::Struct.new(
      :description,
      :registry_arn,
      :registry_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content
    #   <p>The source of the schema definition.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags associated with the schema.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute type
    #   <p>The type of schema.</p>
    #
    #   Enum, one of: ["OpenApi3", "JSONSchemaDraft4"]
    #
    #   @return [String]
    #
    CreateSchemaInput = ::Struct.new(
      :content,
      :description,
      :registry_name,
      :schema_name,
      :tags,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>The description of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>The date and time that schema was modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute schema_arn
    #   <p>The ARN of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_version
    #   <p>The version number of the schema</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Key-value pairs associated with a resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute type
    #   <p>The type of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute version_created_date
    #   <p>The date the schema version was created.</p>
    #
    #   @return [Time]
    #
    CreateSchemaOutput = ::Struct.new(
      :description,
      :last_modified,
      :schema_arn,
      :schema_name,
      :schema_version,
      :tags,
      :type,
      :version_created_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #
    #   @return [String]
    #
    DeleteDiscovererInput = ::Struct.new(
      :discoverer_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDiscovererOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    DeleteRegistryInput = ::Struct.new(
      :registry_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRegistryOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    DeleteResourcePolicyInput = ::Struct.new(
      :registry_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteResourcePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    DeleteSchemaInput = ::Struct.new(
      :registry_name,
      :schema_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSchemaOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_version
    #   The version number of the schema
    #
    #   @return [String]
    #
    DeleteSchemaVersionInput = ::Struct.new(
      :registry_name,
      :schema_name,
      :schema_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSchemaVersionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute language
    #   <p>The language of the code binding.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    #
    #   @return [String]
    #
    DescribeCodeBindingInput = ::Struct.new(
      :language,
      :registry_name,
      :schema_name,
      :schema_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute creation_date
    #   <p>The time and date that the code binding was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified
    #   <p>The date and time that code bindings were modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute schema_version
    #   <p>The version number of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of code binding generation.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED"]
    #
    #   @return [String]
    #
    DescribeCodeBindingOutput = ::Struct.new(
      :creation_date,
      :last_modified,
      :schema_version,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #
    #   @return [String]
    #
    DescribeDiscovererInput = ::Struct.new(
      :discoverer_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>The description of the discoverer.</p>
    #
    #   @return [String]
    #
    # @!attribute discoverer_arn
    #   <p>The ARN of the discoverer.</p>
    #
    #   @return [String]
    #
    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>The ARN of the event bus.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the discoverer.</p>
    #
    #   Enum, one of: ["STARTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute cross_account
    #   <p>The Status if the discoverer will discover schemas from events sent from another account.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>Tags associated with the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeDiscovererOutput = ::Struct.new(
      :description,
      :discoverer_arn,
      :discoverer_id,
      :source_arn,
      :state,
      :cross_account,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cross_account ||= false
      end
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    DescribeRegistryInput = ::Struct.new(
      :registry_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>The description of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_arn
    #   <p>The ARN of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags associated with the registry.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeRegistryOutput = ::Struct.new(
      :description,
      :registry_arn,
      :registry_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    #
    #   @return [String]
    #
    DescribeSchemaInput = ::Struct.new(
      :registry_name,
      :schema_name,
      :schema_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content
    #   <p>The source of the schema definition.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>The date and time that schema was modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute schema_arn
    #   <p>The ARN of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_version
    #   <p>The version number of the schema</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags associated with the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute type
    #   <p>The type of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute version_created_date
    #   <p>The date the schema version was created.</p>
    #
    #   @return [Time]
    #
    DescribeSchemaOutput = ::Struct.new(
      :content,
      :description,
      :last_modified,
      :schema_arn,
      :schema_name,
      :schema_version,
      :tags,
      :type,
      :version_created_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DiscovererState
    #
    module DiscovererState
      # No documentation available.
      #
      STARTED = "STARTED"

      # No documentation available.
      #
      STOPPED = "STOPPED"
    end

    # @!attribute discoverer_arn
    #   <p>The ARN of the discoverer.</p>
    #
    #   @return [String]
    #
    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>The ARN of the event bus.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the discoverer.</p>
    #
    #   Enum, one of: ["STARTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute cross_account
    #   <p>The Status if the discoverer will discover schemas from events sent from another account.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>Tags associated with the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    DiscovererSummary = ::Struct.new(
      :discoverer_arn,
      :discoverer_id,
      :source_arn,
      :state,
      :cross_account,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cross_account ||= false
      end
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #
    #   @return [String]
    #
    ExportSchemaInput = ::Struct.new(
      :registry_name,
      :schema_name,
      :schema_version,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content
    #
    #   @return [String]
    #
    # @!attribute schema_arn
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #
    #   @return [String]
    #
    # @!attribute schema_version
    #
    #   @return [String]
    #
    # @!attribute type
    #
    #   @return [String]
    #
    ExportSchemaOutput = ::Struct.new(
      :content,
      :schema_arn,
      :schema_name,
      :schema_version,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute code
    #   <p>The error code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message string of the error output.</p>
    #
    #   @return [String]
    #
    ForbiddenException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute language
    #   <p>The language of the code binding.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    #
    #   @return [String]
    #
    GetCodeBindingSourceInput = ::Struct.new(
      :language,
      :registry_name,
      :schema_name,
      :schema_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute body
    #
    #   @return [String]
    #
    GetCodeBindingSourceOutput = ::Struct.new(
      :body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute events
    #   <p>An array of strings where each string is a JSON event. These are the events that were used to generate the schema. The array includes a single type of event and has a maximum size of 10 events.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute type
    #   <p>The type of event.</p>
    #
    #   Enum, one of: ["OpenApi3", "JSONSchemaDraft4"]
    #
    #   @return [String]
    #
    GetDiscoveredSchemaInput = ::Struct.new(
      :events,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content
    #   <p>The source of the schema definition.</p>
    #
    #   @return [String]
    #
    GetDiscoveredSchemaOutput = ::Struct.new(
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    GetResourcePolicyInput = ::Struct.new(
      :registry_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>The resource-based policy.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The revision ID.</p>
    #
    #   @return [String]
    #
    GetResourcePolicyOutput = ::Struct.new(
      :policy,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute code
    #   <p>The error code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message string of the error output.</p>
    #
    #   @return [String]
    #
    GoneException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute code
    #   <p>The error code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message string of the error output.</p>
    #
    #   @return [String]
    #
    InternalServerErrorException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute discoverer_id_prefix
    #   <p>Specifying this limits the results to only those discoverer IDs that start with the specified prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #
    #   @return [String]
    #
    # @!attribute source_arn_prefix
    #   <p>Specifying this limits the results to only those ARNs that start with the specified prefix.</p>
    #
    #   @return [String]
    #
    ListDiscoverersInput = ::Struct.new(
      :discoverer_id_prefix,
      :limit,
      :next_token,
      :source_arn_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # @!attribute discoverers
    #   <p>An array of DiscovererSummary information.</p>
    #
    #   @return [Array<DiscovererSummary>]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #
    #   @return [String]
    #
    ListDiscoverersOutput = ::Struct.new(
      :discoverers,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute limit
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name_prefix
    #   <p>Specifying this limits the results to only those registry names that start with the specified prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute scope
    #   <p>Can be set to Local or AWS to limit responses to your custom registries, or the ones provided by AWS.</p>
    #
    #   @return [String]
    #
    ListRegistriesInput = ::Struct.new(
      :limit,
      :next_token,
      :registry_name_prefix,
      :scope,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #
    #   @return [String]
    #
    # @!attribute registries
    #   <p>An array of registry summaries.</p>
    #
    #   @return [Array<RegistrySummary>]
    #
    ListRegistriesOutput = ::Struct.new(
      :next_token,
      :registries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute limit
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    ListSchemaVersionsInput = ::Struct.new(
      :limit,
      :next_token,
      :registry_name,
      :schema_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_versions
    #   <p>An array of schema version summaries.</p>
    #
    #   @return [Array<SchemaVersionSummary>]
    #
    ListSchemaVersionsOutput = ::Struct.new(
      :next_token,
      :schema_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute limit
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name_prefix
    #   <p>Specifying this limits the results to only those schema names that start with the specified prefix.</p>
    #
    #   @return [String]
    #
    ListSchemasInput = ::Struct.new(
      :limit,
      :next_token,
      :registry_name,
      :schema_name_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #
    #   @return [String]
    #
    # @!attribute schemas
    #   <p>An array of schema summaries.</p>
    #
    #   @return [Array<SchemaSummary>]
    #
    ListSchemasOutput = ::Struct.new(
      :next_token,
      :schemas,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
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
    #   <p>Key-value pairs associated with a resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute code
    #   <p>The error code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message string of the error output.</p>
    #
    #   @return [String]
    #
    NotFoundException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute code
    #   <p>The error code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message string of the error output.</p>
    #
    #   @return [String]
    #
    PreconditionFailedException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute language
    #   <p>The language of the code binding.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_version
    #   <p>Specifying this limits the results to only this schema version.</p>
    #
    #   @return [String]
    #
    PutCodeBindingInput = ::Struct.new(
      :language,
      :registry_name,
      :schema_name,
      :schema_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute creation_date
    #   <p>The time and date that the code binding was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified
    #   <p>The date and time that code bindings were modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute schema_version
    #   <p>The version number of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of code binding generation.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED"]
    #
    #   @return [String]
    #
    PutCodeBindingOutput = ::Struct.new(
      :creation_date,
      :last_modified,
      :schema_version,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The name of the policy.</p>
    #
    # @!attribute policy
    #   <p>The resource-based policy.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The revision ID of the policy.</p>
    #
    #   @return [String]
    #
    PutResourcePolicyInput = ::Struct.new(
      :policy,
      :registry_name,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>The resource-based policy.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The revision ID of the policy.</p>
    #
    #   @return [String]
    #
    PutResourcePolicyOutput = ::Struct.new(
      :policy,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_arn
    #   <p>The ARN of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags associated with the registry.</p>
    #
    #   @return [Hash<String, String>]
    #
    RegistrySummary = ::Struct.new(
      :registry_arn,
      :registry_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A summary of schema details.</p>
    #
    # @!attribute last_modified
    #   <p>The date and time that schema was modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute schema_arn
    #   <p>The ARN of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags associated with the schema.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute version_count
    #   <p>The number of versions available for the schema.</p>
    #
    #   @return [Integer]
    #
    SchemaSummary = ::Struct.new(
      :last_modified,
      :schema_arn,
      :schema_name,
      :tags,
      :version_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.version_count ||= 0
      end
    end

    # @!attribute schema_arn
    #   <p>The ARN of the schema version.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_version
    #   <p>The version number of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of schema.</p>
    #
    #   Enum, one of: ["OpenApi3", "JSONSchemaDraft4"]
    #
    #   @return [String]
    #
    SchemaVersionSummary = ::Struct.new(
      :schema_arn,
      :schema_name,
      :schema_version,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_arn
    #   <p>The ARN of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_versions
    #   <p>An array of schema version summaries.</p>
    #
    #   @return [Array<SearchSchemaVersionSummary>]
    #
    SearchSchemaSummary = ::Struct.new(
      :registry_name,
      :schema_arn,
      :schema_name,
      :schema_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute created_date
    #   <p>The date the schema version was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute schema_version
    #   <p>The version number of the schema</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of schema.</p>
    #
    #   Enum, one of: ["OpenApi3", "JSONSchemaDraft4"]
    #
    #   @return [String]
    #
    SearchSchemaVersionSummary = ::Struct.new(
      :created_date,
      :schema_version,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute keywords
    #   <p>Specifying this limits the results to only schemas that include the provided keywords.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    SearchSchemasInput = ::Struct.new(
      :keywords,
      :limit,
      :next_token,
      :registry_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.limit ||= 0
      end
    end

    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.</p>
    #
    #   @return [String]
    #
    # @!attribute schemas
    #   <p>An array of SearchSchemaSummary information.</p>
    #
    #   @return [Array<SearchSchemaSummary>]
    #
    SearchSchemasOutput = ::Struct.new(
      :next_token,
      :schemas,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute code
    #   <p>The error code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message string of the error output.</p>
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #
    #   @return [String]
    #
    StartDiscovererInput = ::Struct.new(
      :discoverer_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the discoverer.</p>
    #
    #   Enum, one of: ["STARTED", "STOPPED"]
    #
    #   @return [String]
    #
    StartDiscovererOutput = ::Struct.new(
      :discoverer_id,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #
    #   @return [String]
    #
    StopDiscovererInput = ::Struct.new(
      :discoverer_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the discoverer.</p>
    #
    #   Enum, one of: ["STARTED", "STOPPED"]
    #
    #   @return [String]
    #
    StopDiscovererOutput = ::Struct.new(
      :discoverer_id,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags associated with the resource.</p>
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

    # @!attribute code
    #   <p>The error code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message string of the error output.</p>
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

    # Includes enum constants for Type
    #
    module Type
      # No documentation available.
      #
      OpenApi3 = "OpenApi3"

      # No documentation available.
      #
      JSONSchemaDraft4 = "JSONSchemaDraft4"
    end

    # @!attribute code
    #   <p>The error code.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message string of the error output.</p>
    #
    #   @return [String]
    #
    UnauthorizedException = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>Keys of key-value pairs.</p>
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

    # @!attribute description
    #   <p>The description of the discoverer to update.</p>
    #
    #   @return [String]
    #
    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #
    #   @return [String]
    #
    # @!attribute cross_account
    #   <p>Support discovery of schemas in events sent to the bus from another account. (default: true)</p>
    #
    #   @return [Boolean]
    #
    UpdateDiscovererInput = ::Struct.new(
      :description,
      :discoverer_id,
      :cross_account,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cross_account ||= false
      end
    end

    # @!attribute description
    #   <p>The description of the discoverer.</p>
    #
    #   @return [String]
    #
    # @!attribute discoverer_arn
    #   <p>The ARN of the discoverer.</p>
    #
    #   @return [String]
    #
    # @!attribute discoverer_id
    #   <p>The ID of the discoverer.</p>
    #
    #   @return [String]
    #
    # @!attribute source_arn
    #   <p>The ARN of the event bus.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the discoverer.</p>
    #
    #   Enum, one of: ["STARTED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute cross_account
    #   <p>The Status if the discoverer will discover schemas from events sent from another account.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tags
    #   <p>Tags associated with the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    UpdateDiscovererOutput = ::Struct.new(
      :description,
      :discoverer_arn,
      :discoverer_id,
      :source_arn,
      :state,
      :cross_account,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.cross_account ||= false
      end
    end

    # <p>Updates the registry.</p>
    #
    # @!attribute description
    #   <p>The description of the registry to update.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    UpdateRegistryInput = ::Struct.new(
      :description,
      :registry_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>The description of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_arn
    #   <p>The ARN of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags associated with the registry.</p>
    #
    #   @return [Hash<String, String>]
    #
    UpdateRegistryOutput = ::Struct.new(
      :description,
      :registry_arn,
      :registry_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token_id
    #   <p>The ID of the client token.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The source of the schema definition.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_name
    #   <p>The name of the registry.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The schema type for the events schema.</p>
    #
    #   Enum, one of: ["OpenApi3", "JSONSchemaDraft4"]
    #
    #   @return [String]
    #
    UpdateSchemaInput = ::Struct.new(
      :client_token_id,
      :content,
      :description,
      :registry_name,
      :schema_name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>The description of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified
    #   <p>The date and time that schema was modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute schema_arn
    #   <p>The ARN of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_name
    #   <p>The name of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute schema_version
    #   <p>The version number of the schema</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Key-value pairs associated with a resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute type
    #   <p>The type of the schema.</p>
    #
    #   @return [String]
    #
    # @!attribute version_created_date
    #   <p>The date the schema version was created.</p>
    #
    #   @return [Time]
    #
    UpdateSchemaOutput = ::Struct.new(
      :description,
      :last_modified,
      :schema_arn,
      :schema_name,
      :schema_version,
      :tags,
      :type,
      :version_created_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
