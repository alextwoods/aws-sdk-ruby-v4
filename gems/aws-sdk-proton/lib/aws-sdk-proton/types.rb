# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Proton
  module Types

    # @!attribute id
    #   <p>The ID of the environment account connection.</p>
    #
    #   @return [String]
    #
    AcceptEnvironmentAccountConnectionInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_account_connection
    #   <p>The environment account connection data that's returned by Proton.</p>
    #
    #   @return [EnvironmentAccountConnection]
    #
    AcceptEnvironmentAccountConnectionOutput = ::Struct.new(
      :environment_account_connection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There <i>isn't</i> sufficient access for performing this action.</p>
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

      def to_s
        "#<struct AWS::SDK::Proton::Types::AccessDeniedException "\
          "message=\"[SENSITIVE]\">"
      end
    end

    # <p>The Proton pipeline service role and repository data shared across the Amazon Web Services account.</p>
    #
    # @!attribute pipeline_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role you want to use for provisioning pipelines. Assumed by Proton for Amazon Web Services-managed provisioning, and by
    #         customer-owned automation for self-managed provisioning.</p>
    #
    #   @return [String]
    #
    # @!attribute pipeline_provisioning_repository
    #   <p>The repository configured in the Amazon Web Services account for pipeline provisioning. Required it if you have environments configured for self-managed
    #         provisioning with services that include pipelines.</p>
    #
    #   @return [RepositoryBranch]
    #
    AccountSettings = ::Struct.new(
      :pipeline_service_role_arn,
      :pipeline_provisioning_repository,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute component_name
    #   <p>The name of the component with the deployment to cancel.</p>
    #
    #   @return [String]
    #
    CancelComponentDeploymentInput = ::Struct.new(
      :component_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute component
    #   <p>The detailed data of the component with the deployment that is being canceled.</p>
    #
    #   @return [Component]
    #
    CancelComponentDeploymentOutput = ::Struct.new(
      :component,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_name
    #   <p>The name of the environment with the deployment to cancel.</p>
    #
    #   @return [String]
    #
    CancelEnvironmentDeploymentInput = ::Struct.new(
      :environment_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment
    #   <p>The environment summary data that's returned by Proton.</p>
    #
    #   @return [Environment]
    #
    CancelEnvironmentDeploymentOutput = ::Struct.new(
      :environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_instance_name
    #   <p>The name of the service instance with the deployment to cancel.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of the service with the service instance deployment to cancel.</p>
    #
    #   @return [String]
    #
    CancelServiceInstanceDeploymentInput = ::Struct.new(
      :service_instance_name,
      :service_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_instance
    #   <p>The service instance summary data that's returned by Proton.</p>
    #
    #   @return [ServiceInstance]
    #
    CancelServiceInstanceDeploymentOutput = ::Struct.new(
      :service_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service with the service pipeline deployment to cancel.</p>
    #
    #   @return [String]
    #
    CancelServicePipelineDeploymentInput = ::Struct.new(
      :service_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pipeline
    #   <p>The service pipeline detail data that's returned by Proton.</p>
    #
    #   @return [ServicePipeline]
    #
    CancelServicePipelineDeploymentOutput = ::Struct.new(
      :pipeline,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Compatible environment template data.</p>
    #
    # @!attribute template_name
    #   <p>The compatible environment template name.</p>
    #
    #   @return [String]
    #
    # @!attribute major_version
    #   <p>The major version of the compatible environment template.</p>
    #
    #   @return [String]
    #
    CompatibleEnvironmentTemplate = ::Struct.new(
      :template_name,
      :major_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Compatible environment template data.</p>
    #
    # @!attribute template_name
    #   <p>The compatible environment template name.</p>
    #
    #   @return [String]
    #
    # @!attribute major_version
    #   <p>The major version of the compatible environment template.</p>
    #
    #   @return [String]
    #
    CompatibleEnvironmentTemplateInput = ::Struct.new(
      :template_name,
      :major_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detailed data of an Proton component resource.</p>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #   <i>Proton Administrator Guide</i>.</p>
    #
    # @!attribute name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the Proton environment that this component is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated with. Provided when a component is attached to a service instance.</p>
    #
    #   @return [String]
    #
    # @!attribute service_instance_name
    #   <p>The name of the service instance that this component is attached to. Provided when a component is attached to a service instance.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time when the component was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_at
    #   <p>The time when the component was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_deployment_attempted_at
    #   <p>The time when a deployment of the component was last attempted.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_deployment_succeeded_at
    #   <p>The time when the component was last deployed successfully.</p>
    #
    #   @return [Time]
    #
    # @!attribute deployment_status
    #   <p>The component deployment status.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute deployment_status_message
    #   <p>The message associated with the component deployment status.</p>
    #
    #   @return [String]
    #
    # @!attribute service_spec
    #   <p>The service spec that the component uses to access service inputs. Provided when a component is attached to a service instance.</p>
    #
    #   @return [String]
    #
    Component = ::Struct.new(
      :name,
      :description,
      :arn,
      :environment_name,
      :service_name,
      :service_instance_name,
      :created_at,
      :last_modified_at,
      :last_deployment_attempted_at,
      :last_deployment_succeeded_at,
      :deployment_status,
      :deployment_status_message,
      :service_spec,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::Component "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "arn=#{arn || 'nil'}, "\
          "environment_name=#{environment_name || 'nil'}, "\
          "service_name=#{service_name || 'nil'}, "\
          "service_instance_name=#{service_instance_name || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "last_modified_at=#{last_modified_at || 'nil'}, "\
          "last_deployment_attempted_at=#{last_deployment_attempted_at || 'nil'}, "\
          "last_deployment_succeeded_at=#{last_deployment_succeeded_at || 'nil'}, "\
          "deployment_status=#{deployment_status || 'nil'}, "\
          "deployment_status_message=\"[SENSITIVE]\", "\
          "service_spec=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for ComponentDeploymentUpdateType
    #
    module ComponentDeploymentUpdateType
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      CURRENT_VERSION = "CURRENT_VERSION"
    end

    # <p>Summary data of an Proton component resource.</p>
    #          <p>For more information about components, see
    #   <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #   <i>Proton Administrator Guide</i>.</p>
    #
    # @!attribute name
    #   <p>The name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the Proton environment that this component is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated with. Provided when a component is attached to a service instance.</p>
    #
    #   @return [String]
    #
    # @!attribute service_instance_name
    #   <p>The name of the service instance that this component is attached to. Provided when a component is attached to a service instance.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time when the component was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_at
    #   <p>The time when the component was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_deployment_attempted_at
    #   <p>The time when a deployment of the component was last attempted.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_deployment_succeeded_at
    #   <p>The time when the component was last deployed successfully.</p>
    #
    #   @return [Time]
    #
    # @!attribute deployment_status
    #   <p>The component deployment status.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute deployment_status_message
    #   <p>The message associated with the component deployment status.</p>
    #
    #   @return [String]
    #
    ComponentSummary = ::Struct.new(
      :name,
      :arn,
      :environment_name,
      :service_name,
      :service_instance_name,
      :created_at,
      :last_modified_at,
      :last_deployment_attempted_at,
      :last_deployment_succeeded_at,
      :deployment_status,
      :deployment_status_message,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::ComponentSummary "\
          "name=#{name || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "environment_name=#{environment_name || 'nil'}, "\
          "service_name=#{service_name || 'nil'}, "\
          "service_instance_name=#{service_instance_name || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "last_modified_at=#{last_modified_at || 'nil'}, "\
          "last_deployment_attempted_at=#{last_deployment_attempted_at || 'nil'}, "\
          "last_deployment_succeeded_at=#{last_deployment_succeeded_at || 'nil'}, "\
          "deployment_status=#{deployment_status || 'nil'}, "\
          "deployment_status_message=\"[SENSITIVE]\">"
      end
    end

    # <p>The request <i>couldn't</i> be made due to a conflicting operation or resource.</p>
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

      def to_s
        "#<struct AWS::SDK::Proton::Types::ConflictException "\
          "message=\"[SENSITIVE]\">"
      end
    end

    # @!attribute name
    #   <p>The customer-provided name of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional customer-provided description of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated with. If you don't specify this, the component isn't attached to any
    #         service instance. Specify both <code>serviceInstanceName</code> and <code>serviceName</code> or neither of them.</p>
    #
    #   @return [String]
    #
    # @!attribute service_instance_name
    #   <p>The name of the service instance that you want to attach this component to. If you don't specify this, the component isn't attached to any service
    #         instance. Specify both <code>serviceInstanceName</code> and <code>serviceName</code> or neither of them.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the Proton environment that you want to associate this component with. You must specify this when you don't specify
    #           <code>serviceInstanceName</code> and <code>serviceName</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute template_file
    #   <p>A path to the Infrastructure as Code (IaC) file describing infrastructure that a custom component provisions.</p>
    #            <note>
    #               <p>Components support a single IaC file, even if you use Terraform as your template language.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute manifest
    #   <p>A path to a manifest file that lists the Infrastructure as Code (IaC) file, template language, and rendering engine for infrastructure that a custom
    #         component provisions.</p>
    #
    #   @return [String]
    #
    # @!attribute service_spec
    #   <p>The service spec that you want the component to use to access service inputs. Set this only when you attach the component to a service
    #         instance.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the Proton component. A tag is a key-value pair.</p>
    #            <p>For more information, see <i>Proton resources and tagging</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton Administrator Guide</a> or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton User Guide</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateComponentInput = ::Struct.new(
      :name,
      :description,
      :service_name,
      :service_instance_name,
      :environment_name,
      :template_file,
      :manifest,
      :service_spec,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::CreateComponentInput "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "service_name=#{service_name || 'nil'}, "\
          "service_instance_name=#{service_instance_name || 'nil'}, "\
          "environment_name=#{environment_name || 'nil'}, "\
          "template_file=\"[SENSITIVE]\", "\
          "manifest=\"[SENSITIVE]\", "\
          "service_spec=\"[SENSITIVE]\", "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute component
    #   <p>The detailed data of the created component.</p>
    #
    #   @return [Component]
    #
    CreateComponentOutput = ::Struct.new(
      :component,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>When included, if two identical requests are made with the same client token, Proton returns the environment account connection that the first
    #         request created.</p>
    #
    #   @return [String]
    #
    # @!attribute management_account_id
    #   <p>The ID of the management account that accepts or rejects the environment account connection. You create and manage the Proton environment in this
    #         account. If the management account accepts the environment account connection, Proton can use the associated IAM role to provision environment
    #         infrastructure resources in the associated environment account.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that's created in the environment account. Proton uses this role to provision infrastructure
    #         resources in the associated environment account.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the Proton environment that's created in the associated management account.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the Proton environment account connection. A tag is a key-value pair.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton resources and tagging</a> in the
    #           <i>Proton Administrator Guide</i>.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in the associated
    #         environment account. It determines the scope of infrastructure that a component can provision in the account.</p>
    #            <p>You must specify <code>componentRoleArn</code> to allow directly defined components to be associated with any environments running in this
    #         account.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #     <i>Proton Administrator Guide</i>.</p>
    #
    #   @return [String]
    #
    CreateEnvironmentAccountConnectionInput = ::Struct.new(
      :client_token,
      :management_account_id,
      :role_arn,
      :environment_name,
      :tags,
      :component_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_account_connection
    #   <p>The environment account connection detail data that's returned by Proton.</p>
    #
    #   @return [EnvironmentAccountConnection]
    #
    CreateEnvironmentAccountConnectionOutput = ::Struct.new(
      :environment_account_connection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the environment template. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-templates.html">Environment Templates</a> in the <i>Proton Administrator Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute template_major_version
    #   <p>The major version of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_minor_version
    #   <p>The minor version of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the environment that's being created and deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>A YAML formatted string that provides inputs as defined in the environment template bundle schema file. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-environments.html">Environments</a> in the <i>Proton Administrator
    #         Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute proton_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make calls to other services on your behalf.</p>
    #            <p>To use Amazon Web Services-managed provisioning for the environment, specify either the <code>environmentAccountConnectionId</code> or
    #           <code>protonServiceRoleArn</code> parameter and omit the <code>provisioningRepository</code> parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_account_connection_id
    #   <p>The ID of the environment account connection that you provide if you're provisioning your environment infrastructure resources to an environment
    #         account. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-account-connections.html">Environment account
    #           connections</a> in the <i>Proton Administrator guide</i>.</p>
    #            <p>To use Amazon Web Services-managed provisioning for the environment, specify either the <code>environmentAccountConnectionId</code> or
    #           <code>protonServiceRoleArn</code> parameter and omit the <code>provisioningRepository</code> parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the Proton environment. A tag is a key-value pair.</p>
    #            <p>For more information, see <i>Proton resources and tagging</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton Administrator Guide</a> or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton User Guide</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provisioning_repository
    #   <p>The infrastructure repository that you use to host your rendered infrastructure templates for self-managed provisioning.</p>
    #            <p>To use self-managed provisioning for the environment, specify this parameter and omit the <code>environmentAccountConnectionId</code> and
    #           <code>protonServiceRoleArn</code> parameters.</p>
    #
    #   @return [RepositoryBranchInput]
    #
    # @!attribute component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in this environment. It
    #         determines the scope of infrastructure that a component can provision.</p>
    #            <p>You must specify <code>componentRoleArn</code> to allow directly defined components to be associated with this environment.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #     <i>Proton Administrator Guide</i>.</p>
    #
    #   @return [String]
    #
    CreateEnvironmentInput = ::Struct.new(
      :name,
      :template_name,
      :template_major_version,
      :template_minor_version,
      :description,
      :spec,
      :proton_service_role_arn,
      :environment_account_connection_id,
      :tags,
      :provisioning_repository,
      :component_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::CreateEnvironmentInput "\
          "name=#{name || 'nil'}, "\
          "template_name=#{template_name || 'nil'}, "\
          "template_major_version=#{template_major_version || 'nil'}, "\
          "template_minor_version=#{template_minor_version || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "spec=\"[SENSITIVE]\", "\
          "proton_service_role_arn=#{proton_service_role_arn || 'nil'}, "\
          "environment_account_connection_id=#{environment_account_connection_id || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "provisioning_repository=#{provisioning_repository || 'nil'}, "\
          "component_role_arn=#{component_role_arn || 'nil'}>"
      end
    end

    # @!attribute environment
    #   <p>The environment detail data that's returned by Proton.</p>
    #
    #   @return [Environment]
    #
    CreateEnvironmentOutput = ::Struct.new(
      :environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The environment template name as displayed in the developer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_key
    #   <p>A customer provided encryption key that Proton uses to encrypt data.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning
    #   <p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>
    #
    #   Enum, one of: ["CUSTOMER_MANAGED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the Proton environment template. A tag is a key-value pair.</p>
    #            <p>For more information, see <i>Proton resources and tagging</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton Administrator Guide</a> or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton User Guide</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateEnvironmentTemplateInput = ::Struct.new(
      :name,
      :display_name,
      :description,
      :encryption_key,
      :provisioning,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::CreateEnvironmentTemplateInput "\
          "name=#{name || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "encryption_key=#{encryption_key || 'nil'}, "\
          "provisioning=#{provisioning || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute environment_template
    #   <p>The environment template detail data that's returned by Proton.</p>
    #
    #   @return [EnvironmentTemplate]
    #
    CreateEnvironmentTemplateOutput = ::Struct.new(
      :environment_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>When included, if two identical requests are made with the same client token, Proton returns the environment template version that the first
    #         request created.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the new version of an environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute major_version
    #   <p>To create a new minor version of the environment template, include <code>major Version</code>.</p>
    #            <p>To create a new major and minor version of the environment template, exclude <code>major Version</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>An object that includes the template bundle S3 bucket path and name for the new version of an template.</p>
    #
    #   @return [TemplateVersionSourceInput]
    #
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the Proton environment template version. A tag is a key-value pair.</p>
    #            <p>For more information, see <i>Proton resources and tagging</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton Administrator Guide</a> or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton User Guide</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateEnvironmentTemplateVersionInput = ::Struct.new(
      :client_token,
      :template_name,
      :description,
      :major_version,
      :source,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::CreateEnvironmentTemplateVersionInput "\
          "client_token=#{client_token || 'nil'}, "\
          "template_name=#{template_name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "major_version=#{major_version || 'nil'}, "\
          "source=#{source || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute environment_template_version
    #   <p>The environment template detail data that's returned by Proton.</p>
    #
    #   @return [EnvironmentTemplateVersion]
    #
    CreateEnvironmentTemplateVersionOutput = ::Struct.new(
      :environment_template_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute provider
    #   <p>The repository provider.</p>
    #
    #   Enum, one of: ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The repository name (for example, <code>myrepos/myrepo</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute connection_arn
    #   <p>The Amazon Resource Name (ARN) of your Amazon Web Services CodeStar connection. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/setting-up-for-service.html">Setting up for Proton</a> in the <i>Proton Administrator
    #         Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_key
    #   <p>The ARN of your customer Amazon Web Services Key Management Service (Amazon Web Services KMS) key.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the Proton repository. A tag is a key-value pair.</p>
    #            <p>For more information, see <i>Proton resources and tagging</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton Administrator Guide</a> or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton User Guide</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateRepositoryInput = ::Struct.new(
      :provider,
      :name,
      :connection_arn,
      :encryption_key,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository
    #   <p>The repository detail data that's returned by Proton.</p>
    #
    #   @return [Repository]
    #
    CreateRepositoryOutput = ::Struct.new(
      :repository,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The service name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the Proton service.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the service template that's used to create the service.</p>
    #
    #   @return [String]
    #
    # @!attribute template_major_version
    #   <p>The major version of the service template that was used to create the service.</p>
    #
    #   @return [String]
    #
    # @!attribute template_minor_version
    #   <p>The minor version of the service template that was used to create the service.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>A link to a spec file that provides inputs as defined in the service template bundle schema file. The spec file is in YAML format.
    #           <i>Don’t</i> include pipeline inputs in the spec if your service template <i>doesn’t</i> include a service pipeline. For
    #         more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-create-svc.html.html">Create a service</a> in the
    #           <i>Proton Administrator Guide</i> and <a href="https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-create.html">Create a
    #           service</a> in the <i>Proton User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_connection_arn
    #   <p>The Amazon Resource Name (ARN) of the repository connection. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/setting-up-for-service.html setting-up-vcontrol">Set up repository connection</a> in the <i>Proton
    #           Administrator Guide</i> and <a href="https://docs.aws.amazon.com/proton/latest/userguide/proton-setup.html setup-repo-connection">Setting up with
    #           Proton</a> in the <i>Proton User Guide</i>. <i>Don't</i> include this parameter if your service template
    #           <i>doesn't</i> include a service pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_id
    #   <p>The ID of the code repository. <i>Don't</i> include this parameter if your service template <i>doesn't</i> include a
    #         service pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p>The name of the code repository branch that holds the code that's deployed in Proton. <i>Don't</i> include this parameter if your
    #         service template <i>doesn't</i> include a service pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the Proton service. A tag is a key-value pair.</p>
    #            <p>For more information, see <i>Proton resources and tagging</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton Administrator Guide</a> or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton User Guide</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateServiceInput = ::Struct.new(
      :name,
      :description,
      :template_name,
      :template_major_version,
      :template_minor_version,
      :spec,
      :repository_connection_arn,
      :repository_id,
      :branch_name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::CreateServiceInput "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "template_name=#{template_name || 'nil'}, "\
          "template_major_version=#{template_major_version || 'nil'}, "\
          "template_minor_version=#{template_minor_version || 'nil'}, "\
          "spec=\"[SENSITIVE]\", "\
          "repository_connection_arn=#{repository_connection_arn || 'nil'}, "\
          "repository_id=#{repository_id || 'nil'}, "\
          "branch_name=#{branch_name || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute service
    #   <p>The service detail data that's returned by Proton.</p>
    #
    #   @return [Service]
    #
    CreateServiceOutput = ::Struct.new(
      :service,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name of the service template as displayed in the developer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_key
    #   <p>A customer provided encryption key that's used to encrypt data.</p>
    #
    #   @return [String]
    #
    # @!attribute pipeline_provisioning
    #   <p>By default, Proton provides a service pipeline for your service. When this parameter is included, it indicates that an Proton service pipeline
    #           <i>isn't</i> provided for your service. After it's included, it <i>can't</i> be changed. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-template-bundles.html">Service template bundles</a> in the <i>Proton Administrator
    #           Guide</i>.</p>
    #
    #   Enum, one of: ["CUSTOMER_MANAGED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the Proton service template. A tag is a key-value pair.</p>
    #            <p>For more information, see <i>Proton resources and tagging</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton Administrator Guide</a> or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton User Guide</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateServiceTemplateInput = ::Struct.new(
      :name,
      :display_name,
      :description,
      :encryption_key,
      :pipeline_provisioning,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::CreateServiceTemplateInput "\
          "name=#{name || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "encryption_key=#{encryption_key || 'nil'}, "\
          "pipeline_provisioning=#{pipeline_provisioning || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute service_template
    #   <p>The service template detail data that's returned by Proton.</p>
    #
    #   @return [ServiceTemplate]
    #
    CreateServiceTemplateOutput = ::Struct.new(
      :service_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>When included, if two identical requests are made with the same client token, Proton returns the service template version that the first request
    #         created.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the new version of a service template.</p>
    #
    #   @return [String]
    #
    # @!attribute major_version
    #   <p>To create a new minor version of the service template, include a <code>major Version</code>.</p>
    #            <p>To create a new major and minor version of the service template, <i>exclude</i>
    #               <code>major Version</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>An object that includes the template bundle S3 bucket path and name for the new version of a service template.</p>
    #
    #   @return [TemplateVersionSourceInput]
    #
    # @!attribute compatible_environment_templates
    #   <p>An array of environment template objects that are compatible with the new service template version. A service instance based on this service template
    #         version can run in environments based on compatible templates.</p>
    #
    #   @return [Array<CompatibleEnvironmentTemplateInput>]
    #
    # @!attribute tags
    #   <p>An optional list of metadata items that you can associate with the Proton service template version. A tag is a key-value pair.</p>
    #            <p>For more information, see <i>Proton resources and tagging</i> in the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/resources.html">Proton Administrator Guide</a> or <a href="https://docs.aws.amazon.com/proton/latest/userguide/resources.html">Proton User Guide</a>.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute supported_component_sources
    #   <p>An array of supported component sources. Components with supported sources can be attached to service instances based on this service template
    #         version.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #     <i>Proton Administrator Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    CreateServiceTemplateVersionInput = ::Struct.new(
      :client_token,
      :template_name,
      :description,
      :major_version,
      :source,
      :compatible_environment_templates,
      :tags,
      :supported_component_sources,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::CreateServiceTemplateVersionInput "\
          "client_token=#{client_token || 'nil'}, "\
          "template_name=#{template_name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "major_version=#{major_version || 'nil'}, "\
          "source=#{source || 'nil'}, "\
          "compatible_environment_templates=#{compatible_environment_templates || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "supported_component_sources=#{supported_component_sources || 'nil'}>"
      end
    end

    # @!attribute service_template_version
    #   <p>The service template version summary of detail data that's returned by Proton.</p>
    #
    #   @return [ServiceTemplateVersion]
    #
    CreateServiceTemplateVersionOutput = ::Struct.new(
      :service_template_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of your registered template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_type
    #   <p>The type of the registered template.</p>
    #
    #   Enum, one of: ["ENVIRONMENT", "SERVICE"]
    #
    #   @return [String]
    #
    # @!attribute repository_provider
    #   <p>The provider type for your repository.</p>
    #
    #   Enum, one of: ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of your repository (for example, <code>myrepos/myrepo</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute branch
    #   <p>The branch of the registered repository for your template.</p>
    #
    #   @return [String]
    #
    # @!attribute subdirectory
    #   <p>A repository subdirectory path to your template bundle directory. When included, Proton limits the template bundle search to this repository
    #         directory.</p>
    #
    #   @return [String]
    #
    CreateTemplateSyncConfigInput = ::Struct.new(
      :template_name,
      :template_type,
      :repository_provider,
      :repository_name,
      :branch,
      :subdirectory,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_sync_config
    #   <p>The template sync configuration detail data that's returned by Proton.</p>
    #
    #   @return [TemplateSyncConfig]
    #
    CreateTemplateSyncConfigOutput = ::Struct.new(
      :template_sync_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the component to delete.</p>
    #
    #   @return [String]
    #
    DeleteComponentInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute component
    #   <p>The detailed data of the component being deleted.</p>
    #
    #   @return [Component]
    #
    DeleteComponentOutput = ::Struct.new(
      :component,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the environment account connection to delete.</p>
    #
    #   @return [String]
    #
    DeleteEnvironmentAccountConnectionInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_account_connection
    #   <p>The detailed data of the environment account connection being deleted.</p>
    #
    #   @return [EnvironmentAccountConnection]
    #
    DeleteEnvironmentAccountConnectionOutput = ::Struct.new(
      :environment_account_connection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the environment to delete.</p>
    #
    #   @return [String]
    #
    DeleteEnvironmentInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment
    #   <p>The detailed data of the environment being deleted.</p>
    #
    #   @return [Environment]
    #
    DeleteEnvironmentOutput = ::Struct.new(
      :environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the environment template to delete.</p>
    #
    #   @return [String]
    #
    DeleteEnvironmentTemplateInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_template
    #   <p>The detailed data of the environment template being deleted.</p>
    #
    #   @return [EnvironmentTemplate]
    #
    DeleteEnvironmentTemplateOutput = ::Struct.new(
      :environment_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute major_version
    #   <p>The environment template major version to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute minor_version
    #   <p>The environment template minor version to delete.</p>
    #
    #   @return [String]
    #
    DeleteEnvironmentTemplateVersionInput = ::Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_template_version
    #   <p>The detailed data of the environment template version being deleted.</p>
    #
    #   @return [EnvironmentTemplateVersion]
    #
    DeleteEnvironmentTemplateVersionOutput = ::Struct.new(
      :environment_template_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute provider
    #   <p>The repository provider.</p>
    #
    #   Enum, one of: ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the repository.</p>
    #
    #   @return [String]
    #
    DeleteRepositoryInput = ::Struct.new(
      :provider,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository
    #   <p>The repository detail data that's returned by Proton.</p>
    #
    #   @return [Repository]
    #
    DeleteRepositoryOutput = ::Struct.new(
      :repository,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the service to delete.</p>
    #
    #   @return [String]
    #
    DeleteServiceInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service
    #   <p>The detailed data of the service being deleted.</p>
    #
    #   @return [Service]
    #
    DeleteServiceOutput = ::Struct.new(
      :service,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the service template to delete.</p>
    #
    #   @return [String]
    #
    DeleteServiceTemplateInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_template
    #   <p>The detailed data of the service template being deleted.</p>
    #
    #   @return [ServiceTemplate]
    #
    DeleteServiceTemplateOutput = ::Struct.new(
      :service_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute major_version
    #   <p>The service template major version to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute minor_version
    #   <p>The service template minor version to delete.</p>
    #
    #   @return [String]
    #
    DeleteServiceTemplateVersionInput = ::Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_template_version
    #   <p>The detailed data of the service template version being deleted.</p>
    #
    #   @return [ServiceTemplateVersion]
    #
    DeleteServiceTemplateVersionOutput = ::Struct.new(
      :service_template_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The template name.</p>
    #
    #   @return [String]
    #
    # @!attribute template_type
    #   <p>The template type.</p>
    #
    #   Enum, one of: ["ENVIRONMENT", "SERVICE"]
    #
    #   @return [String]
    #
    DeleteTemplateSyncConfigInput = ::Struct.new(
      :template_name,
      :template_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_sync_config
    #   <p>The template sync configuration detail data that's returned by Proton.</p>
    #
    #   @return [TemplateSyncConfig]
    #
    DeleteTemplateSyncConfigOutput = ::Struct.new(
      :template_sync_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeploymentStatus
    #
    module DeploymentStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      DELETE_COMPLETE = "DELETE_COMPLETE"

      # No documentation available.
      #
      CANCELLING = "CANCELLING"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"
    end

    # Includes enum constants for DeploymentUpdateType
    #
    module DeploymentUpdateType
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      CURRENT_VERSION = "CURRENT_VERSION"

      # No documentation available.
      #
      MINOR_VERSION = "MINOR_VERSION"

      # No documentation available.
      #
      MAJOR_VERSION = "MAJOR_VERSION"
    end

    # <p>Detailed data of an Proton environment resource. An Proton environment is a set of resources shared across Proton services.</p>
    #
    # @!attribute name
    #   <p>The name of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time when the environment was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_deployment_attempted_at
    #   <p>The time when a deployment of the environment was last attempted.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_deployment_succeeded_at
    #   <p>The time when the environment was last deployed successfully.</p>
    #
    #   @return [Time]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The Amazon Resource Name (ARN) of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_major_version
    #   <p>The major version of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_minor_version
    #   <p>The minor version of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_status
    #   <p>The environment deployment status.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute deployment_status_message
    #   <p>An environment deployment status message.</p>
    #
    #   @return [String]
    #
    # @!attribute proton_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make calls to other services on your behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_account_connection_id
    #   <p>The ID of the environment account connection that's used to provision infrastructure resources in an environment account.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_account_id
    #   <p>The ID of the environment account that the environment infrastructure resources are provisioned in.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The environment spec.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning
    #   <p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>
    #
    #   Enum, one of: ["CUSTOMER_MANAGED"]
    #
    #   @return [String]
    #
    # @!attribute provisioning_repository
    #   <p>The infrastructure repository that you use to host your rendered infrastructure templates for self-managed provisioning.</p>
    #
    #   @return [RepositoryBranch]
    #
    # @!attribute component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in this environment. It
    #         determines the scope of infrastructure that a component can provision.</p>
    #            <p>The environment must have a <code>componentRoleArn</code> to allow directly defined components to be associated with the environment.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #     <i>Proton Administrator Guide</i>.</p>
    #
    #   @return [String]
    #
    Environment = ::Struct.new(
      :name,
      :description,
      :created_at,
      :last_deployment_attempted_at,
      :last_deployment_succeeded_at,
      :arn,
      :template_name,
      :template_major_version,
      :template_minor_version,
      :deployment_status,
      :deployment_status_message,
      :proton_service_role_arn,
      :environment_account_connection_id,
      :environment_account_id,
      :spec,
      :provisioning,
      :provisioning_repository,
      :component_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::Environment "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "created_at=#{created_at || 'nil'}, "\
          "last_deployment_attempted_at=#{last_deployment_attempted_at || 'nil'}, "\
          "last_deployment_succeeded_at=#{last_deployment_succeeded_at || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "template_name=#{template_name || 'nil'}, "\
          "template_major_version=#{template_major_version || 'nil'}, "\
          "template_minor_version=#{template_minor_version || 'nil'}, "\
          "deployment_status=#{deployment_status || 'nil'}, "\
          "deployment_status_message=\"[SENSITIVE]\", "\
          "proton_service_role_arn=#{proton_service_role_arn || 'nil'}, "\
          "environment_account_connection_id=#{environment_account_connection_id || 'nil'}, "\
          "environment_account_id=#{environment_account_id || 'nil'}, "\
          "spec=\"[SENSITIVE]\", "\
          "provisioning=#{provisioning || 'nil'}, "\
          "provisioning_repository=#{provisioning_repository || 'nil'}, "\
          "component_role_arn=#{component_role_arn || 'nil'}>"
      end
    end

    # <p>Detailed data of an Proton environment account connection resource.</p>
    #
    # @!attribute id
    #   <p>The ID of the environment account connection.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment account connection.</p>
    #
    #   @return [String]
    #
    # @!attribute management_account_id
    #   <p>The ID of the management account that's connected to the environment account connection.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_account_id
    #   <p>The environment account that's connected to the environment account connection.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The IAM service role that's associated with the environment account connection.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the environment that's associated with the environment account connection.</p>
    #
    #   @return [String]
    #
    # @!attribute requested_at
    #   <p>The time when the environment account connection request was made.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_at
    #   <p>The time when the environment account connection was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the environment account connection.</p>
    #
    #   Enum, one of: ["PENDING", "CONNECTED", "REJECTED"]
    #
    #   @return [String]
    #
    # @!attribute component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in the associated
    #         environment account. It determines the scope of infrastructure that a component can provision in the account.</p>
    #            <p>The environment account connection must have a <code>componentRoleArn</code> to allow directly defined components to be associated with any
    #         environments running in the account.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #     <i>Proton Administrator Guide</i>.</p>
    #
    #   @return [String]
    #
    EnvironmentAccountConnection = ::Struct.new(
      :id,
      :arn,
      :management_account_id,
      :environment_account_id,
      :role_arn,
      :environment_name,
      :requested_at,
      :last_modified_at,
      :status,
      :component_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EnvironmentAccountConnectionRequesterAccountType
    #
    module EnvironmentAccountConnectionRequesterAccountType
      # No documentation available.
      #
      MANAGEMENT_ACCOUNT = "MANAGEMENT_ACCOUNT"

      # No documentation available.
      #
      ENVIRONMENT_ACCOUNT = "ENVIRONMENT_ACCOUNT"
    end

    # Includes enum constants for EnvironmentAccountConnectionStatus
    #
    module EnvironmentAccountConnectionStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      CONNECTED = "CONNECTED"

      # No documentation available.
      #
      REJECTED = "REJECTED"
    end

    # <p>Summary data of an Proton environment account connection resource.</p>
    #
    # @!attribute id
    #   <p>The ID of the environment account connection.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment account connection.</p>
    #
    #   @return [String]
    #
    # @!attribute management_account_id
    #   <p>The ID of the management account that's connected to the environment account connection.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_account_id
    #   <p>The ID of the environment account that's connected to the environment account connection.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The IAM service role that's associated with the environment account connection.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the environment that's associated with the environment account connection.</p>
    #
    #   @return [String]
    #
    # @!attribute requested_at
    #   <p>The time when the environment account connection request was made.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_at
    #   <p>The time when the environment account connection was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the environment account connection.</p>
    #
    #   Enum, one of: ["PENDING", "CONNECTED", "REJECTED"]
    #
    #   @return [String]
    #
    # @!attribute component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in the associated
    #         environment account. It determines the scope of infrastructure that a component can provision in the account.</p>
    #            <p>The environment account connection must have a <code>componentRoleArn</code> to allow directly defined components to be associated with any
    #         environments running in the account.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #     <i>Proton Administrator Guide</i>.</p>
    #
    #   @return [String]
    #
    EnvironmentAccountConnectionSummary = ::Struct.new(
      :id,
      :arn,
      :management_account_id,
      :environment_account_id,
      :role_arn,
      :environment_name,
      :requested_at,
      :last_modified_at,
      :status,
      :component_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary data of an Proton environment resource. An Proton environment is a set of resources shared across Proton services.</p>
    #
    # @!attribute name
    #   <p>The name of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time when the environment was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_deployment_attempted_at
    #   <p>The time when a deployment of the environment was last attempted.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_deployment_succeeded_at
    #   <p>The time when the environment was last deployed successfully.</p>
    #
    #   @return [Time]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_major_version
    #   <p>The major version of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_minor_version
    #   <p>The minor version of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_status
    #   <p>The environment deployment status.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute deployment_status_message
    #   <p>An environment deployment status message.</p>
    #
    #   @return [String]
    #
    # @!attribute proton_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make calls to other services on your behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_account_connection_id
    #   <p>The ID of the environment account connection that the environment is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_account_id
    #   <p>The ID of the environment account that the environment infrastructure resources are provisioned in.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning
    #   <p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>
    #
    #   Enum, one of: ["CUSTOMER_MANAGED"]
    #
    #   @return [String]
    #
    # @!attribute component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in this environment. It
    #         determines the scope of infrastructure that a component can provision.</p>
    #            <p>The environment must have a <code>componentRoleArn</code> to allow directly defined components to be associated with the environment.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #     <i>Proton Administrator Guide</i>.</p>
    #
    #   @return [String]
    #
    EnvironmentSummary = ::Struct.new(
      :name,
      :description,
      :created_at,
      :last_deployment_attempted_at,
      :last_deployment_succeeded_at,
      :arn,
      :template_name,
      :template_major_version,
      :template_minor_version,
      :deployment_status,
      :deployment_status_message,
      :proton_service_role_arn,
      :environment_account_connection_id,
      :environment_account_id,
      :provisioning,
      :component_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::EnvironmentSummary "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "created_at=#{created_at || 'nil'}, "\
          "last_deployment_attempted_at=#{last_deployment_attempted_at || 'nil'}, "\
          "last_deployment_succeeded_at=#{last_deployment_succeeded_at || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "template_name=#{template_name || 'nil'}, "\
          "template_major_version=#{template_major_version || 'nil'}, "\
          "template_minor_version=#{template_minor_version || 'nil'}, "\
          "deployment_status=#{deployment_status || 'nil'}, "\
          "deployment_status_message=\"[SENSITIVE]\", "\
          "proton_service_role_arn=#{proton_service_role_arn || 'nil'}, "\
          "environment_account_connection_id=#{environment_account_connection_id || 'nil'}, "\
          "environment_account_id=#{environment_account_id || 'nil'}, "\
          "provisioning=#{provisioning || 'nil'}, "\
          "component_role_arn=#{component_role_arn || 'nil'}>"
      end
    end

    # <p>The environment template data.</p>
    #
    # @!attribute name
    #   <p>The name of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time when the environment template was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_at
    #   <p>The time when the environment template was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute display_name
    #   <p>The name of the environment template as displayed in the developer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute recommended_version
    #   <p>The ID of the recommended version of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_key
    #   <p>The customer provided encryption key for the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning
    #   <p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>
    #
    #   Enum, one of: ["CUSTOMER_MANAGED"]
    #
    #   @return [String]
    #
    EnvironmentTemplate = ::Struct.new(
      :name,
      :arn,
      :created_at,
      :last_modified_at,
      :display_name,
      :description,
      :recommended_version,
      :encryption_key,
      :provisioning,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::EnvironmentTemplate "\
          "name=#{name || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "last_modified_at=#{last_modified_at || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "recommended_version=#{recommended_version || 'nil'}, "\
          "encryption_key=#{encryption_key || 'nil'}, "\
          "provisioning=#{provisioning || 'nil'}>"
      end
    end

    # <p>A search filter for environment templates.</p>
    #
    # @!attribute template_name
    #   <p>Include <code>templateName</code> to filter search for a template name.</p>
    #
    #   @return [String]
    #
    # @!attribute major_version
    #   <p>Include <code>majorVersion</code> to filter search for a major version.</p>
    #
    #   @return [String]
    #
    EnvironmentTemplateFilter = ::Struct.new(
      :template_name,
      :major_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The environment template data.</p>
    #
    # @!attribute name
    #   <p>The name of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time when the environment template was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_at
    #   <p>The time when the environment template was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute display_name
    #   <p>The name of the environment template as displayed in the developer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute recommended_version
    #   <p>The recommended version of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning
    #   <p>When included, indicates that the environment template is for customer provisioned and managed infrastructure.</p>
    #
    #   Enum, one of: ["CUSTOMER_MANAGED"]
    #
    #   @return [String]
    #
    EnvironmentTemplateSummary = ::Struct.new(
      :name,
      :arn,
      :created_at,
      :last_modified_at,
      :display_name,
      :description,
      :recommended_version,
      :provisioning,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::EnvironmentTemplateSummary "\
          "name=#{name || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "last_modified_at=#{last_modified_at || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "recommended_version=#{recommended_version || 'nil'}, "\
          "provisioning=#{provisioning || 'nil'}>"
      end
    end

    # <p>The environment template version data.</p>
    #
    # @!attribute template_name
    #   <p>The name of the version of an environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute major_version
    #   <p>The latest major version that's associated with the version of an environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute minor_version
    #   <p>The minor version of an environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute recommended_minor_version
    #   <p>The recommended minor version of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the version of an environment template.</p>
    #
    #   Enum, one of: ["REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The status message of the version of an environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the minor version of an environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the version of an environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time when the version of an environment template was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_at
    #   <p>The time when the version of an environment template was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute schema
    #   <p>The schema of the version of an environment template.</p>
    #
    #   @return [String]
    #
    EnvironmentTemplateVersion = ::Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      :recommended_minor_version,
      :status,
      :status_message,
      :description,
      :arn,
      :created_at,
      :last_modified_at,
      :schema,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::EnvironmentTemplateVersion "\
          "template_name=#{template_name || 'nil'}, "\
          "major_version=#{major_version || 'nil'}, "\
          "minor_version=#{minor_version || 'nil'}, "\
          "recommended_minor_version=#{recommended_minor_version || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "status_message=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "arn=#{arn || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "last_modified_at=#{last_modified_at || 'nil'}, "\
          "schema=\"[SENSITIVE]\">"
      end
    end

    # <p>A summary of the version of an environment template detail data.</p>
    #
    # @!attribute template_name
    #   <p>The name of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute major_version
    #   <p>The latest major version that's associated with the version of an environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute minor_version
    #   <p>The version of an environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute recommended_minor_version
    #   <p>The recommended minor version of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the version of an environment template.</p>
    #
    #   Enum, one of: ["REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The status message of the version of an environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the version of an environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the version of an environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time when the version of an environment template was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_at
    #   <p>The time when the version of an environment template was last modified.</p>
    #
    #   @return [Time]
    #
    EnvironmentTemplateVersionSummary = ::Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      :recommended_minor_version,
      :status,
      :status_message,
      :description,
      :arn,
      :created_at,
      :last_modified_at,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::EnvironmentTemplateVersionSummary "\
          "template_name=#{template_name || 'nil'}, "\
          "major_version=#{major_version || 'nil'}, "\
          "minor_version=#{minor_version || 'nil'}, "\
          "recommended_minor_version=#{recommended_minor_version || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "status_message=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "arn=#{arn || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "last_modified_at=#{last_modified_at || 'nil'}>"
      end
    end

    GetAccountSettingsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_settings
    #   <p>The Proton pipeline service role detail data that's returned by Proton.</p>
    #
    #   @return [AccountSettings]
    #
    GetAccountSettingsOutput = ::Struct.new(
      :account_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the component that you want to get the detailed data for.</p>
    #
    #   @return [String]
    #
    GetComponentInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute component
    #   <p>The detailed data of the requested component.</p>
    #
    #   @return [Component]
    #
    GetComponentOutput = ::Struct.new(
      :component,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the environment account connection that you want to get the detailed data for.</p>
    #
    #   @return [String]
    #
    GetEnvironmentAccountConnectionInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_account_connection
    #   <p>The detailed data of the requested environment account connection.</p>
    #
    #   @return [EnvironmentAccountConnection]
    #
    GetEnvironmentAccountConnectionOutput = ::Struct.new(
      :environment_account_connection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the environment that you want to get the detailed data for.</p>
    #
    #   @return [String]
    #
    GetEnvironmentInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment
    #   <p>The detailed data of the requested environment.</p>
    #
    #   @return [Environment]
    #
    GetEnvironmentOutput = ::Struct.new(
      :environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the environment template that you want to get the detailed data for.</p>
    #
    #   @return [String]
    #
    GetEnvironmentTemplateInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_template
    #   <p>The detailed data of the requested environment template.</p>
    #
    #   @return [EnvironmentTemplate]
    #
    GetEnvironmentTemplateOutput = ::Struct.new(
      :environment_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of the environment template a version of which you want to get detailed data for..</p>
    #
    #   @return [String]
    #
    # @!attribute major_version
    #   <p>To get environment template major version detail data, include <code>major Version</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute minor_version
    #   <p>To get environment template minor version detail data, include <code>minorVersion</code>.</p>
    #
    #   @return [String]
    #
    GetEnvironmentTemplateVersionInput = ::Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_template_version
    #   <p>The detailed data of the requested environment template version.</p>
    #
    #   @return [EnvironmentTemplateVersion]
    #
    GetEnvironmentTemplateVersionOutput = ::Struct.new(
      :environment_template_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute provider
    #   <p>The repository provider.</p>
    #
    #   Enum, one of: ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The repository name, for example <code>myrepos/myrepo</code>.</p>
    #
    #   @return [String]
    #
    GetRepositoryInput = ::Struct.new(
      :provider,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository
    #   <p>The repository detail data that's returned by Proton.</p>
    #
    #   @return [Repository]
    #
    GetRepositoryOutput = ::Struct.new(
      :repository,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The repository name.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_provider
    #   <p>The repository provider.</p>
    #
    #   Enum, one of: ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #
    #   @return [String]
    #
    # @!attribute branch
    #   <p>The repository branch.</p>
    #
    #   @return [String]
    #
    # @!attribute sync_type
    #   <p>The repository sync type.</p>
    #
    #   Enum, one of: ["TEMPLATE_SYNC"]
    #
    #   @return [String]
    #
    GetRepositorySyncStatusInput = ::Struct.new(
      :repository_name,
      :repository_provider,
      :branch,
      :sync_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute latest_sync
    #   <p>The repository sync status detail data that's returned by Proton.</p>
    #
    #   @return [RepositorySyncAttempt]
    #
    GetRepositorySyncStatusOutput = ::Struct.new(
      :latest_sync,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the service that you want to get the detailed data for.</p>
    #
    #   @return [String]
    #
    GetServiceInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of a service instance that you want to get the detailed data for.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of the service that the service instance belongs to.</p>
    #
    #   @return [String]
    #
    GetServiceInstanceInput = ::Struct.new(
      :name,
      :service_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_instance
    #   <p>The detailed data of the requested service instance.</p>
    #
    #   @return [ServiceInstance]
    #
    GetServiceInstanceOutput = ::Struct.new(
      :service_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service
    #   <p>The detailed data of the requested service.</p>
    #
    #   @return [Service]
    #
    GetServiceOutput = ::Struct.new(
      :service,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the service template that you want to get detailed data for.</p>
    #
    #   @return [String]
    #
    GetServiceTemplateInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_template
    #   <p>The detailed data of the requested service template.</p>
    #
    #   @return [ServiceTemplate]
    #
    GetServiceTemplateOutput = ::Struct.new(
      :service_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of the service template a version of which you want to get detailed data for.</p>
    #
    #   @return [String]
    #
    # @!attribute major_version
    #   <p>To get service template major version detail data, include <code>major Version</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute minor_version
    #   <p>To get service template minor version detail data, include <code>minorVersion</code>.</p>
    #
    #   @return [String]
    #
    GetServiceTemplateVersionInput = ::Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_template_version
    #   <p>The detailed data of the requested service template version.</p>
    #
    #   @return [ServiceTemplateVersion]
    #
    GetServiceTemplateVersionOutput = ::Struct.new(
      :service_template_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The template name.</p>
    #
    #   @return [String]
    #
    # @!attribute template_type
    #   <p>The template type.</p>
    #
    #   Enum, one of: ["ENVIRONMENT", "SERVICE"]
    #
    #   @return [String]
    #
    GetTemplateSyncConfigInput = ::Struct.new(
      :template_name,
      :template_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_sync_config
    #   <p>The template sync configuration detail data that's returned by Proton.</p>
    #
    #   @return [TemplateSyncConfig]
    #
    GetTemplateSyncConfigOutput = ::Struct.new(
      :template_sync_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The template name.</p>
    #
    #   @return [String]
    #
    # @!attribute template_type
    #   <p>The template type.</p>
    #
    #   Enum, one of: ["ENVIRONMENT", "SERVICE"]
    #
    #   @return [String]
    #
    # @!attribute template_version
    #   <p>The template major version.</p>
    #
    #   @return [String]
    #
    GetTemplateSyncStatusInput = ::Struct.new(
      :template_name,
      :template_type,
      :template_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute latest_sync
    #   <p>The details of the last sync that's returned by Proton.</p>
    #
    #   @return [ResourceSyncAttempt]
    #
    # @!attribute latest_successful_sync
    #   <p>The details of the last successful sync that's returned by Proton.</p>
    #
    #   @return [ResourceSyncAttempt]
    #
    # @!attribute desired_state
    #   <p>The template sync desired state that's returned by Proton.</p>
    #
    #   @return [Revision]
    #
    GetTemplateSyncStatusOutput = ::Struct.new(
      :latest_sync,
      :latest_successful_sync,
      :desired_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request failed to register with the service.</p>
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

      def to_s
        "#<struct AWS::SDK::Proton::Types::InternalServerException "\
          "message=\"[SENSITIVE]\">"
      end
    end

    # @!attribute component_name
    #   <p>The name of the component whose outputs you want.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token that indicates the location of the next output in the array of outputs, after the list of outputs that was previously requested.</p>
    #
    #   @return [String]
    #
    ListComponentOutputsInput = ::Struct.new(
      :component_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next output in the array of outputs, after the list of outputs that was previously requested.</p>
    #
    #   @return [String]
    #
    # @!attribute outputs
    #   <p>An array of component Infrastructure as Code (IaC) outputs.</p>
    #
    #   @return [Array<Output>]
    #
    ListComponentOutputsOutput = ::Struct.new(
      :next_token,
      :outputs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute component_name
    #   <p>The name of the component whose provisioned resources you want.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token that indicates the location of the next provisioned resource in the array of provisioned resources, after the list of provisioned resources
    #         that was previously requested.</p>
    #
    #   @return [String]
    #
    ListComponentProvisionedResourcesInput = ::Struct.new(
      :component_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next provisioned resource in the array of provisioned resources, after the current requested list of
    #         provisioned resources.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioned_resources
    #   <p>An array of provisioned resources for a component.</p>
    #
    #   @return [Array<ProvisionedResource>]
    #
    ListComponentProvisionedResourcesOutput = ::Struct.new(
      :next_token,
      :provisioned_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next component in the array of components, after the list of components that was previously
    #         requested.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of an environment for result list filtering. Proton returns components associated with the environment or attached to service instances
    #         running in it.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of a service for result list filtering. Proton returns components attached to service instances of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute service_instance_name
    #   <p>The name of a service instance for result list filtering. Proton returns the component attached to the service instance, if any.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of components to list.</p>
    #
    #   @return [Integer]
    #
    ListComponentsInput = ::Struct.new(
      :next_token,
      :environment_name,
      :service_name,
      :service_instance_name,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next component in the array of components, after the current requested list of components.</p>
    #
    #   @return [String]
    #
    # @!attribute components
    #   <p>An array of components with summary data.</p>
    #
    #   @return [Array<ComponentSummary>]
    #
    ListComponentsOutput = ::Struct.new(
      :next_token,
      :components,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute requested_by
    #   <p>The type of account making the <code>ListEnvironmentAccountConnections</code> request.</p>
    #
    #   Enum, one of: ["MANAGEMENT_ACCOUNT", "ENVIRONMENT_ACCOUNT"]
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The environment name that's associated with each listed environment account connection.</p>
    #
    #   @return [String]
    #
    # @!attribute statuses
    #   <p>The status details for each listed environment account connection.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment account connection in the array of environment account connections, after the list of
    #         environment account connections that was previously requested.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of environment account connections to list.</p>
    #
    #   @return [Integer]
    #
    ListEnvironmentAccountConnectionsInput = ::Struct.new(
      :requested_by,
      :environment_name,
      :statuses,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_account_connections
    #   <p>An array of environment account connections with details that's returned by Proton. </p>
    #
    #   @return [Array<EnvironmentAccountConnectionSummary>]
    #
    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment account connection in the array of environment account connections, after the current
    #         requested list of environment account connections.</p>
    #
    #   @return [String]
    #
    ListEnvironmentAccountConnectionsOutput = ::Struct.new(
      :environment_account_connections,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_name
    #   <p>The environment name.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment output in the array of environment outputs, after the list of environment outputs that was
    #         previously requested.</p>
    #
    #   @return [String]
    #
    ListEnvironmentOutputsInput = ::Struct.new(
      :environment_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment output in the array of environment outputs, after the current requested list of
    #         environment outputs.</p>
    #
    #   @return [String]
    #
    # @!attribute outputs
    #   <p>An array of environment outputs with detail data.</p>
    #
    #   @return [Array<Output>]
    #
    ListEnvironmentOutputsOutput = ::Struct.new(
      :next_token,
      :outputs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_name
    #   <p>The environment name.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment provisioned resource in the array of environment provisioned resources, after the list of
    #         environment provisioned resources that was previously requested.</p>
    #
    #   @return [String]
    #
    ListEnvironmentProvisionedResourcesInput = ::Struct.new(
      :environment_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment provisioned resource in the array of provisioned resources, after the current requested
    #         list of environment provisioned resources.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioned_resources
    #   <p>An array of environment provisioned resources.</p>
    #
    #   @return [Array<ProvisionedResource>]
    #
    ListEnvironmentProvisionedResourcesOutput = ::Struct.new(
      :next_token,
      :provisioned_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next major or minor version in the array of major or minor versions of an environment template, after the
    #         list of major or minor versions that was previously requested.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of major or minor versions of an environment template to list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute template_name
    #   <p>The name of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute major_version
    #   <p>To view a list of minor of versions under a major version of an environment template, include <code>major Version</code>.</p>
    #            <p>To view a list of major versions of an environment template, <i>exclude</i>
    #               <code>major Version</code>.</p>
    #
    #   @return [String]
    #
    ListEnvironmentTemplateVersionsInput = ::Struct.new(
      :next_token,
      :max_results,
      :template_name,
      :major_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next major or minor version in the array of major or minor versions of an environment template, after the
    #         list of major or minor versions that was previously requested.</p>
    #
    #   @return [String]
    #
    # @!attribute template_versions
    #   <p>An array of major or minor versions of an environment template detail data.</p>
    #
    #   @return [Array<EnvironmentTemplateVersionSummary>]
    #
    ListEnvironmentTemplateVersionsOutput = ::Struct.new(
      :next_token,
      :template_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment template in the array of environment templates, after the list of environment templates
    #         that was previously requested.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of environment templates to list.</p>
    #
    #   @return [Integer]
    #
    ListEnvironmentTemplatesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment template in the array of environment templates, after the current requested list of
    #         environment templates.</p>
    #
    #   @return [String]
    #
    # @!attribute templates
    #   <p>An array of environment templates with detail data.</p>
    #
    #   @return [Array<EnvironmentTemplateSummary>]
    #
    ListEnvironmentTemplatesOutput = ::Struct.new(
      :next_token,
      :templates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment in the array of environments, after the list of environments that was previously
    #         requested.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of environments to list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute environment_templates
    #   <p>An array of the versions of the environment template.</p>
    #
    #   @return [Array<EnvironmentTemplateFilter>]
    #
    ListEnvironmentsInput = ::Struct.new(
      :next_token,
      :max_results,
      :environment_templates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next environment in the array of environments, after the current requested list of environments.</p>
    #
    #   @return [String]
    #
    # @!attribute environments
    #   <p>An array of environment detail data summaries.</p>
    #
    #   @return [Array<EnvironmentSummary>]
    #
    ListEnvironmentsOutput = ::Struct.new(
      :next_token,
      :environments,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next repository in the array of repositories, after the list of repositories previously requested.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of repositories to list.</p>
    #
    #   @return [Integer]
    #
    ListRepositoriesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next repository in the array of repositories, after the current requested list of repositories. </p>
    #
    #   @return [String]
    #
    # @!attribute repositories
    #   <p>An array of repositories.</p>
    #
    #   @return [Array<RepositorySummary>]
    #
    ListRepositoriesOutput = ::Struct.new(
      :next_token,
      :repositories,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The repository name.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_provider
    #   <p>The repository provider.</p>
    #
    #   Enum, one of: ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #
    #   @return [String]
    #
    # @!attribute sync_type
    #   <p>The sync type. The only supported value is <code>TEMPLATE_SYNC</code>.</p>
    #
    #   Enum, one of: ["TEMPLATE_SYNC"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token that indicates the location of the next repository sync definition in the array of repository sync definitions, after the list of repository
    #         sync definitions previously requested.</p>
    #
    #   @return [String]
    #
    ListRepositorySyncDefinitionsInput = ::Struct.new(
      :repository_name,
      :repository_provider,
      :sync_type,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next repository sync definition in the array of repository sync definitions, after the current requested
    #         list of repository sync definitions.</p>
    #
    #   @return [String]
    #
    # @!attribute sync_definitions
    #   <p>An array of repository sync definitions.</p>
    #
    #   @return [Array<RepositorySyncDefinition>]
    #
    ListRepositorySyncDefinitionsOutput = ::Struct.new(
      :next_token,
      :sync_definitions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_instance_name
    #   <p>The name of the service instance whose outputs you want.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated to.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token that indicates the location of the next output in the array of outputs, after the list of outputs that was previously requested.</p>
    #
    #   @return [String]
    #
    ListServiceInstanceOutputsInput = ::Struct.new(
      :service_instance_name,
      :service_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next output in the array of outputs, after the current requested list of outputs.</p>
    #
    #   @return [String]
    #
    # @!attribute outputs
    #   <p>An array of service instance Infrastructure as Code (IaC) outputs.</p>
    #
    #   @return [Array<Output>]
    #
    ListServiceInstanceOutputsOutput = ::Struct.new(
      :next_token,
      :outputs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated to.</p>
    #
    #   @return [String]
    #
    # @!attribute service_instance_name
    #   <p>The name of the service instance whose provisioned resources you want.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token that indicates the location of the next provisioned resource in the array of provisioned resources, after the list of provisioned resources
    #         that was previously requested.</p>
    #
    #   @return [String]
    #
    ListServiceInstanceProvisionedResourcesInput = ::Struct.new(
      :service_name,
      :service_instance_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next provisioned resource in the array of provisioned resources, after the current requested list of
    #         provisioned resources.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioned_resources
    #   <p>An array of provisioned resources for a service instance.</p>
    #
    #   @return [Array<ProvisionedResource>]
    #
    ListServiceInstanceProvisionedResourcesOutput = ::Struct.new(
      :next_token,
      :provisioned_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service that the service instance belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token that indicates the location of the next service in the array of service instances, after the list of service instances that was previously
    #         requested.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of service instances to list.</p>
    #
    #   @return [Integer]
    #
    ListServiceInstancesInput = ::Struct.new(
      :service_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next service instance in the array of service instances, after the current requested list of service
    #         instances.</p>
    #
    #   @return [String]
    #
    # @!attribute service_instances
    #   <p>An array of service instances with summary data.</p>
    #
    #   @return [Array<ServiceInstanceSummary>]
    #
    ListServiceInstancesOutput = ::Struct.new(
      :next_token,
      :service_instances,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service whose pipeline's outputs you want.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token that indicates the location of the next output in the array of outputs, after the list of outputs that was previously requested.</p>
    #
    #   @return [String]
    #
    ListServicePipelineOutputsInput = ::Struct.new(
      :service_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next output in the array of outputs, after the current requested list of outputs.</p>
    #
    #   @return [String]
    #
    # @!attribute outputs
    #   <p>An array of service pipeline Infrastructure as Code (IaC) outputs.</p>
    #
    #   @return [Array<Output>]
    #
    ListServicePipelineOutputsOutput = ::Struct.new(
      :next_token,
      :outputs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service whose pipeline's provisioned resources you want.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token that indicates the location of the next provisioned resource in the array of provisioned resources, after the list of provisioned resources
    #         that was previously requested.</p>
    #
    #   @return [String]
    #
    ListServicePipelineProvisionedResourcesInput = ::Struct.new(
      :service_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next provisioned resource in the array of provisioned resources, after the current requested list of
    #         provisioned resources.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioned_resources
    #   <p>An array of provisioned resources for a service and pipeline.</p>
    #
    #   @return [Array<ProvisionedResource>]
    #
    ListServicePipelineProvisionedResourcesOutput = ::Struct.new(
      :next_token,
      :provisioned_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next major or minor version in the array of major or minor versions of a service template, after the list
    #         of major or minor versions that was previously requested.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of major or minor versions of a service template to list.</p>
    #
    #   @return [Integer]
    #
    # @!attribute template_name
    #   <p>The name of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute major_version
    #   <p>To view a list of minor of versions under a major version of a service template, include <code>major Version</code>.</p>
    #            <p>To view a list of major versions of a service template, <i>exclude</i>
    #               <code>major Version</code>.</p>
    #
    #   @return [String]
    #
    ListServiceTemplateVersionsInput = ::Struct.new(
      :next_token,
      :max_results,
      :template_name,
      :major_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next major or minor version in the array of major or minor versions of a service template, after the
    #         current requested list of service major or minor versions.</p>
    #
    #   @return [String]
    #
    # @!attribute template_versions
    #   <p>An array of major or minor versions of a service template with detail data.</p>
    #
    #   @return [Array<ServiceTemplateVersionSummary>]
    #
    ListServiceTemplateVersionsOutput = ::Struct.new(
      :next_token,
      :template_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next service template in the array of service templates, after the list of service templates previously
    #         requested.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of service templates to list.</p>
    #
    #   @return [Integer]
    #
    ListServiceTemplatesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next service template in the array of service templates, after the current requested list of service
    #         templates.</p>
    #
    #   @return [String]
    #
    # @!attribute templates
    #   <p>An array of service templates with detail data.</p>
    #
    #   @return [Array<ServiceTemplateSummary>]
    #
    ListServiceTemplatesOutput = ::Struct.new(
      :next_token,
      :templates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next service in the array of services, after the list of services that was previously requested.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of services to list.</p>
    #
    #   @return [Integer]
    #
    ListServicesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates the location of the next service in the array of services, after the current requested list of services.</p>
    #
    #   @return [String]
    #
    # @!attribute services
    #   <p>An array of services with summaries of detail data.</p>
    #
    #   @return [Array<ServiceSummary>]
    #
    ListServicesOutput = ::Struct.new(
      :next_token,
      :services,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for the listed tags.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A token that indicates the location of the next resource tag in the array of resource tags, after the list of resource tags that was previously
    #         requested.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of tags to list.</p>
    #
    #   @return [Integer]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>A list of resource tags with detail data.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute next_token
    #   <p>A token that indicates the location of the next resource tag in the array of resource tags, after the current requested list of resource tags.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The provisioned resource Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of your provisioned resource.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #
    #   @return [String]
    #
    # @!attribute outputs
    #   <p>The provisioned resource state change detail data that's returned by Proton.</p>
    #
    #   @return [Array<Output>]
    #
    # @!attribute deployment_id
    #   <p>The deployment ID for your provisioned resource.</p>
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The deployment status message for your provisioned resource.</p>
    #
    #   @return [String]
    #
    NotifyResourceDeploymentStatusChangeInput = ::Struct.new(
      :resource_arn,
      :status,
      :outputs,
      :deployment_id,
      :status_message,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::NotifyResourceDeploymentStatusChangeInput "\
          "resource_arn=#{resource_arn || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "outputs=#{outputs || 'nil'}, "\
          "deployment_id=#{deployment_id || 'nil'}, "\
          "status_message=\"[SENSITIVE]\">"
      end
    end

    NotifyResourceDeploymentStatusChangeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An infrastructure as code defined resource output.</p>
    #
    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute key
    #   <p>The output key.</p>
    #
    #   @return [String]
    #
    # @!attribute value_string
    #   <p>The output value.</p>
    #
    #   @return [String]
    #
    Output = ::Struct.new(
      :key,
      :value_string,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::Output [SENSITIVE]>"
      end
    end

    # <p>Detail data for a provisioned resource.</p>
    #
    # @!attribute name
    #   <p>The provisioned resource name.</p>
    #
    #   @return [String]
    #
    # @!attribute identifier
    #   <p>The provisioned resource identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_engine
    #   <p>The resource provisioning engine. At this time, <code>CLOUDFORMATION</code> can be used for Amazon Web Services-managed provisioning, and <code>TERRAFORM</code> can
    #         be used for self-managed provisioning.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-works-prov-methods.html ag-works-prov-methods-self">Self-managed provisioning</a> in the <i>Proton Administrator Guide</i>.</p>
    #
    #   Enum, one of: ["CLOUDFORMATION", "TERRAFORM"]
    #
    #   @return [String]
    #
    ProvisionedResource = ::Struct.new(
      :name,
      :identifier,
      :provisioning_engine,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProvisionedResourceEngine
    #
    module ProvisionedResourceEngine
      # No documentation available.
      #
      CLOUDFORMATION = "CLOUDFORMATION"

      # No documentation available.
      #
      TERRAFORM = "TERRAFORM"
    end

    # Includes enum constants for Provisioning
    #
    module Provisioning
      # No documentation available.
      #
      CUSTOMER_MANAGED = "CUSTOMER_MANAGED"
    end

    # @!attribute id
    #   <p>The ID of the environment account connection to reject.</p>
    #
    #   @return [String]
    #
    RejectEnvironmentAccountConnectionInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_account_connection
    #   <p>The environment connection account detail data that's returned by Proton.</p>
    #
    #   @return [EnvironmentAccountConnection]
    #
    RejectEnvironmentAccountConnectionOutput = ::Struct.new(
      :environment_account_connection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detailed data of a repository that has been registered with Proton.</p>
    #
    # @!attribute arn
    #   <p>The repository Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute provider
    #   <p>The repository provider.</p>
    #
    #   Enum, one of: ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The repository name.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_arn
    #   <p>The repository Amazon Web Services CodeStar connection that connects Proton to your repository.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_key
    #   <p>Your customer Amazon Web Services KMS encryption key.</p>
    #
    #   @return [String]
    #
    Repository = ::Struct.new(
      :arn,
      :provider,
      :name,
      :connection_arn,
      :encryption_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detail data for a repository branch.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the repository branch.</p>
    #
    #   @return [String]
    #
    # @!attribute provider
    #   <p>The repository provider.</p>
    #
    #   Enum, one of: ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The repository name.</p>
    #
    #   @return [String]
    #
    # @!attribute branch
    #   <p>The repository branch.</p>
    #
    #   @return [String]
    #
    RepositoryBranch = ::Struct.new(
      :arn,
      :provider,
      :name,
      :branch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detail input data for a repository branch.</p>
    #
    # @!attribute provider
    #   <p>The repository provider.</p>
    #
    #   Enum, one of: ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The repository name.</p>
    #
    #   @return [String]
    #
    # @!attribute branch
    #   <p>The repository branch.</p>
    #
    #   @return [String]
    #
    RepositoryBranchInput = ::Struct.new(
      :provider,
      :name,
      :branch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RepositoryProvider
    #
    module RepositoryProvider
      # No documentation available.
      #
      GITHUB = "GITHUB"

      # No documentation available.
      #
      GITHUB_ENTERPRISE = "GITHUB_ENTERPRISE"

      # No documentation available.
      #
      BITBUCKET = "BITBUCKET"
    end

    # <p>Summary data of a repository that has been registered with Proton.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for a repository.</p>
    #
    #   @return [String]
    #
    # @!attribute provider
    #   <p>The repository provider.</p>
    #
    #   Enum, one of: ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The repository name.</p>
    #
    #   @return [String]
    #
    RepositorySummary = ::Struct.new(
      :arn,
      :provider,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detail data for a repository sync attempt activated by a push to a repository.</p>
    #
    # @!attribute started_at
    #   <p>The time when the sync attempt started.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The sync attempt status.</p>
    #
    #   Enum, one of: ["INITIATED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "QUEUED"]
    #
    #   @return [String]
    #
    # @!attribute events
    #   <p>Detail data for sync attempt events.</p>
    #
    #   @return [Array<RepositorySyncEvent>]
    #
    RepositorySyncAttempt = ::Struct.new(
      :started_at,
      :status,
      :events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The repository sync definition.</p>
    #
    # @!attribute target
    #   <p>The resource that is synced to.</p>
    #
    #   @return [String]
    #
    # @!attribute parent
    #   <p>The resource that is synced from.</p>
    #
    #   @return [String]
    #
    # @!attribute branch
    #   <p>The repository branch.</p>
    #
    #   @return [String]
    #
    # @!attribute directory
    #   <p>The directory in the repository.</p>
    #
    #   @return [String]
    #
    RepositorySyncDefinition = ::Struct.new(
      :target,
      :parent,
      :branch,
      :directory,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Repository sync event detail data for a sync attempt.</p>
    #
    # @!attribute type
    #   <p>The type of event.</p>
    #
    #   @return [String]
    #
    # @!attribute external_id
    #   <p>The external ID of the sync event.</p>
    #
    #   @return [String]
    #
    # @!attribute time
    #   <p>The time that the sync event occurred.</p>
    #
    #   @return [Time]
    #
    # @!attribute event
    #   <p>Event detail for a repository sync attempt.</p>
    #
    #   @return [String]
    #
    RepositorySyncEvent = ::Struct.new(
      :type,
      :external_id,
      :time,
      :event,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RepositorySyncStatus
    #
    module RepositorySyncStatus
      #    A repository sync attempt has been created and will begin soon.
      #
      #
      INITIATED = "INITIATED"

      #     A repository sync attempt has started and work is being done to reconcile the branch.
      #
      #
      IN_PROGRESS = "IN_PROGRESS"

      #     The repository sync attempt has completed successfully.
      #
      #
      SUCCEEDED = "SUCCEEDED"

      #     The repository sync attempt has failed.
      #
      #
      FAILED = "FAILED"

      #     The repository sync attempt didn't execute and was queued.
      #
      #
      QUEUED = "QUEUED"
    end

    # Includes enum constants for ResourceDeploymentStatus
    #
    module ResourceDeploymentStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"
    end

    # <p>The requested resource <i>wasn't</i> found.</p>
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

      def to_s
        "#<struct AWS::SDK::Proton::Types::ResourceNotFoundException "\
          "message=\"[SENSITIVE]\">"
      end
    end

    # <p>Detail data for a resource sync attempt activated by a push to a repository.</p>
    #
    # @!attribute initial_revision
    #   <p>Detail data for the initial repository commit, path and push.</p>
    #
    #   @return [Revision]
    #
    # @!attribute target_revision
    #   <p>Detail data for the target revision.</p>
    #
    #   @return [Revision]
    #
    # @!attribute target
    #   <p>The resource that is synced to.</p>
    #
    #   @return [String]
    #
    # @!attribute started_at
    #   <p>The time when the sync attempt started.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the sync attempt.</p>
    #
    #   Enum, one of: ["INITIATED", "IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute events
    #   <p>An array of events with detail data.</p>
    #
    #   @return [Array<ResourceSyncEvent>]
    #
    ResourceSyncAttempt = ::Struct.new(
      :initial_revision,
      :target_revision,
      :target,
      :started_at,
      :status,
      :events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detail data for a resource sync event.</p>
    #
    # @!attribute type
    #   <p>The type of event.</p>
    #
    #   @return [String]
    #
    # @!attribute external_id
    #   <p>The external ID for the event.</p>
    #
    #   @return [String]
    #
    # @!attribute time
    #   <p>The time when the event occurred.</p>
    #
    #   @return [Time]
    #
    # @!attribute event
    #   <p>A resource sync event.</p>
    #
    #   @return [String]
    #
    ResourceSyncEvent = ::Struct.new(
      :type,
      :external_id,
      :time,
      :event,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceSyncStatus
    #
    module ResourceSyncStatus
      #    A sync attempt has been created and will begin soon.
      #
      #
      INITIATED = "INITIATED"

      #     Syncing has started and work is being done to reconcile state.
      #
      #
      IN_PROGRESS = "IN_PROGRESS"

      #     Syncing has completed successfully.
      #
      #
      SUCCEEDED = "SUCCEEDED"

      #     Syncing has failed.
      #
      #
      FAILED = "FAILED"
    end

    # <p>Revision detail data for a commit and push that activates a sync attempt</p>
    #
    # @!attribute repository_name
    #   <p>The repository name.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_provider
    #   <p>The repository provider.</p>
    #
    #   Enum, one of: ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #
    #   @return [String]
    #
    # @!attribute sha
    #   <p>The secure hash algorithm (SHA) hash for the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute directory
    #   <p>The repository directory changed by a commit and push that activated the sync attempt.</p>
    #
    #   @return [String]
    #
    # @!attribute branch
    #   <p>The repository branch.</p>
    #
    #   @return [String]
    #
    Revision = ::Struct.new(
      :repository_name,
      :repository_provider,
      :sha,
      :directory,
      :branch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Template bundle S3 bucket data.</p>
    #
    # @!attribute bucket
    #   <p>The name of the S3 bucket that contains a template bundle.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The path to the S3 bucket that contains a template bundle.</p>
    #
    #   @return [String]
    #
    S3ObjectSource = ::Struct.new(
      :bucket,
      :key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detailed data of an Proton service resource.</p>
    #
    # @!attribute name
    #   <p>The name of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time when the service was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_at
    #   <p>The time when the service was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the service.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_FAILED_CLEANUP_IN_PROGRESS", "CREATE_FAILED_CLEANUP_COMPLETE", "CREATE_FAILED_CLEANUP_FAILED", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_COMPLETE", "UPDATE_FAILED_CLEANUP_FAILED", "UPDATE_FAILED", "UPDATE_COMPLETE_CLEANUP_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A service status message.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The formatted specification that defines the service.</p>
    #
    #   @return [String]
    #
    # @!attribute pipeline
    #   <p>The service pipeline detail data.</p>
    #
    #   @return [ServicePipeline]
    #
    # @!attribute repository_connection_arn
    #   <p>The Amazon Resource Name (ARN) of the repository connection. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/setting-up-for-service.html setting-up-vcontrol">Set up a repository connection</a> in the <i>Proton
    #           Administrator Guide</i> and <a href="https://docs.aws.amazon.com/proton/latest/userguide/proton-setup.html setup-repo-connection">Setting up with
    #           Proton</a> in the <i>Proton User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_id
    #   <p>The ID of the source code repository.</p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p>The name of the code repository branch that holds the code that's deployed in Proton.</p>
    #
    #   @return [String]
    #
    Service = ::Struct.new(
      :name,
      :description,
      :arn,
      :template_name,
      :created_at,
      :last_modified_at,
      :status,
      :status_message,
      :spec,
      :pipeline,
      :repository_connection_arn,
      :repository_id,
      :branch_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::Service "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "arn=#{arn || 'nil'}, "\
          "template_name=#{template_name || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "last_modified_at=#{last_modified_at || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "status_message=\"[SENSITIVE]\", "\
          "spec=\"[SENSITIVE]\", "\
          "pipeline=#{pipeline || 'nil'}, "\
          "repository_connection_arn=#{repository_connection_arn || 'nil'}, "\
          "repository_id=#{repository_id || 'nil'}, "\
          "branch_name=#{branch_name || 'nil'}>"
      end
    end

    # <p>Detailed data of an Proton service instance resource.</p>
    #
    # @!attribute name
    #   <p>The name of the service instance.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service instance.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time when the service instance was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_deployment_attempted_at
    #   <p>The time when a deployment of the service instance was last attempted.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_deployment_succeeded_at
    #   <p>The time when the service instance was last deployed successfully.</p>
    #
    #   @return [Time]
    #
    # @!attribute service_name
    #   <p>The name of the service that the service instance belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the environment that the service instance was deployed into.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the service template that was used to create the service instance.</p>
    #
    #   @return [String]
    #
    # @!attribute template_major_version
    #   <p>The major version of the service template that was used to create the service instance.</p>
    #
    #   @return [String]
    #
    # @!attribute template_minor_version
    #   <p>The minor version of the service template that was used to create the service instance.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_status
    #   <p>The service instance deployment status.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute deployment_status_message
    #   <p>The message associated with the service instance deployment status.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The service spec that was used to create the service instance.</p>
    #
    #   @return [String]
    #
    ServiceInstance = ::Struct.new(
      :name,
      :arn,
      :created_at,
      :last_deployment_attempted_at,
      :last_deployment_succeeded_at,
      :service_name,
      :environment_name,
      :template_name,
      :template_major_version,
      :template_minor_version,
      :deployment_status,
      :deployment_status_message,
      :spec,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::ServiceInstance "\
          "name=#{name || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "last_deployment_attempted_at=#{last_deployment_attempted_at || 'nil'}, "\
          "last_deployment_succeeded_at=#{last_deployment_succeeded_at || 'nil'}, "\
          "service_name=#{service_name || 'nil'}, "\
          "environment_name=#{environment_name || 'nil'}, "\
          "template_name=#{template_name || 'nil'}, "\
          "template_major_version=#{template_major_version || 'nil'}, "\
          "template_minor_version=#{template_minor_version || 'nil'}, "\
          "deployment_status=#{deployment_status || 'nil'}, "\
          "deployment_status_message=\"[SENSITIVE]\", "\
          "spec=\"[SENSITIVE]\">"
      end
    end

    # <p>Summary data of an Proton service instance resource.</p>
    #
    # @!attribute name
    #   <p>The name of the service instance.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service instance.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time when the service instance was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_deployment_attempted_at
    #   <p>The time when a deployment of the service was last attempted.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_deployment_succeeded_at
    #   <p>The time when the service was last deployed successfully.</p>
    #
    #   @return [Time]
    #
    # @!attribute service_name
    #   <p>The name of the service that the service instance belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_name
    #   <p>The name of the environment that the service instance was deployed into.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_major_version
    #   <p>The service instance template major version.</p>
    #
    #   @return [String]
    #
    # @!attribute template_minor_version
    #   <p>The service instance template minor version.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_status
    #   <p>The service instance deployment status.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute deployment_status_message
    #   <p>A service instance deployment status message.</p>
    #
    #   @return [String]
    #
    ServiceInstanceSummary = ::Struct.new(
      :name,
      :arn,
      :created_at,
      :last_deployment_attempted_at,
      :last_deployment_succeeded_at,
      :service_name,
      :environment_name,
      :template_name,
      :template_major_version,
      :template_minor_version,
      :deployment_status,
      :deployment_status_message,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::ServiceInstanceSummary "\
          "name=#{name || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "last_deployment_attempted_at=#{last_deployment_attempted_at || 'nil'}, "\
          "last_deployment_succeeded_at=#{last_deployment_succeeded_at || 'nil'}, "\
          "service_name=#{service_name || 'nil'}, "\
          "environment_name=#{environment_name || 'nil'}, "\
          "template_name=#{template_name || 'nil'}, "\
          "template_major_version=#{template_major_version || 'nil'}, "\
          "template_minor_version=#{template_minor_version || 'nil'}, "\
          "deployment_status=#{deployment_status || 'nil'}, "\
          "deployment_status_message=\"[SENSITIVE]\">"
      end
    end

    # <p>Detailed data of an Proton service instance pipeline resource.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time when the service pipeline was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_deployment_attempted_at
    #   <p>The time when a deployment of the service pipeline was last attempted.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_deployment_succeeded_at
    #   <p>The time when the service pipeline was last deployed successfully.</p>
    #
    #   @return [Time]
    #
    # @!attribute template_name
    #   <p>The name of the service template that was used to create the service pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute template_major_version
    #   <p>The major version of the service template that was used to create the service pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute template_minor_version
    #   <p>The minor version of the service template that was used to create the service pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_status
    #   <p>The deployment status of the service pipeline.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "FAILED", "SUCCEEDED", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "CANCELLING", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute deployment_status_message
    #   <p>A service pipeline deployment status message.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The service spec that was used to create the service pipeline.</p>
    #
    #   @return [String]
    #
    ServicePipeline = ::Struct.new(
      :arn,
      :created_at,
      :last_deployment_attempted_at,
      :last_deployment_succeeded_at,
      :template_name,
      :template_major_version,
      :template_minor_version,
      :deployment_status,
      :deployment_status_message,
      :spec,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::ServicePipeline "\
          "arn=#{arn || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "last_deployment_attempted_at=#{last_deployment_attempted_at || 'nil'}, "\
          "last_deployment_succeeded_at=#{last_deployment_succeeded_at || 'nil'}, "\
          "template_name=#{template_name || 'nil'}, "\
          "template_major_version=#{template_major_version || 'nil'}, "\
          "template_minor_version=#{template_minor_version || 'nil'}, "\
          "deployment_status=#{deployment_status || 'nil'}, "\
          "deployment_status_message=\"[SENSITIVE]\", "\
          "spec=\"[SENSITIVE]\">"
      end
    end

    # <p>A quota was exceeded. For more information, see <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-limits.html">Proton Quotas</a> in the <i>Proton Administrator
    #     Guide</i>.</p>
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

      def to_s
        "#<struct AWS::SDK::Proton::Types::ServiceQuotaExceededException "\
          "message=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for ServiceStatus
    #
    module ServiceStatus
      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      CREATE_FAILED_CLEANUP_IN_PROGRESS = "CREATE_FAILED_CLEANUP_IN_PROGRESS"

      # No documentation available.
      #
      CREATE_FAILED_CLEANUP_COMPLETE = "CREATE_FAILED_CLEANUP_COMPLETE"

      # No documentation available.
      #
      CREATE_FAILED_CLEANUP_FAILED = "CREATE_FAILED_CLEANUP_FAILED"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_FAILED_CLEANUP_IN_PROGRESS = "UPDATE_FAILED_CLEANUP_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_FAILED_CLEANUP_COMPLETE = "UPDATE_FAILED_CLEANUP_COMPLETE"

      # No documentation available.
      #
      UPDATE_FAILED_CLEANUP_FAILED = "UPDATE_FAILED_CLEANUP_FAILED"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"

      # No documentation available.
      #
      UPDATE_COMPLETE_CLEANUP_FAILED = "UPDATE_COMPLETE_CLEANUP_FAILED"
    end

    # <p>Summary data of an Proton service resource.</p>
    #
    # @!attribute name
    #   <p>The name of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service.</p>
    #
    #   @return [String]
    #
    # @!attribute template_name
    #   <p>The name of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time when the service was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_at
    #   <p>The time when the service was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the service.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_FAILED_CLEANUP_IN_PROGRESS", "CREATE_FAILED_CLEANUP_COMPLETE", "CREATE_FAILED_CLEANUP_FAILED", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_IN_PROGRESS", "UPDATE_FAILED_CLEANUP_COMPLETE", "UPDATE_FAILED_CLEANUP_FAILED", "UPDATE_FAILED", "UPDATE_COMPLETE_CLEANUP_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A service status message.</p>
    #
    #   @return [String]
    #
    ServiceSummary = ::Struct.new(
      :name,
      :description,
      :arn,
      :template_name,
      :created_at,
      :last_modified_at,
      :status,
      :status_message,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::ServiceSummary "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "arn=#{arn || 'nil'}, "\
          "template_name=#{template_name || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "last_modified_at=#{last_modified_at || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "status_message=\"[SENSITIVE]\">"
      end
    end

    # <p>Detailed data of an Proton service template resource.</p>
    #
    # @!attribute name
    #   <p>The name of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time when the service template was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_at
    #   <p>The time when the service template was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute display_name
    #   <p>The service template name as displayed in the developer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute recommended_version
    #   <p>The recommended version of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_key
    #   <p>The customer provided service template encryption key that's used to encrypt data.</p>
    #
    #   @return [String]
    #
    # @!attribute pipeline_provisioning
    #   <p>If <code>pipelineProvisioning</code> is <code>true</code>, a service pipeline is included in the service template. Otherwise, a service pipeline
    #           <i>isn't</i> included in the service template.</p>
    #
    #   Enum, one of: ["CUSTOMER_MANAGED"]
    #
    #   @return [String]
    #
    ServiceTemplate = ::Struct.new(
      :name,
      :arn,
      :created_at,
      :last_modified_at,
      :display_name,
      :description,
      :recommended_version,
      :encryption_key,
      :pipeline_provisioning,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::ServiceTemplate "\
          "name=#{name || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "last_modified_at=#{last_modified_at || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "recommended_version=#{recommended_version || 'nil'}, "\
          "encryption_key=#{encryption_key || 'nil'}, "\
          "pipeline_provisioning=#{pipeline_provisioning || 'nil'}>"
      end
    end

    # <p>Summary data of an Proton service template resource.</p>
    #
    # @!attribute name
    #   <p>The name of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time when the service template was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_at
    #   <p>The time when the service template was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute display_name
    #   <p>The service template name as displayed in the developer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute recommended_version
    #   <p>The recommended version of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute pipeline_provisioning
    #   <p>If <code>pipelineProvisioning</code> is <code>true</code>, a service pipeline is included in the service template, otherwise a service pipeline
    #           <i>isn't</i> included in the service template.</p>
    #
    #   Enum, one of: ["CUSTOMER_MANAGED"]
    #
    #   @return [String]
    #
    ServiceTemplateSummary = ::Struct.new(
      :name,
      :arn,
      :created_at,
      :last_modified_at,
      :display_name,
      :description,
      :recommended_version,
      :pipeline_provisioning,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::ServiceTemplateSummary "\
          "name=#{name || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "last_modified_at=#{last_modified_at || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "recommended_version=#{recommended_version || 'nil'}, "\
          "pipeline_provisioning=#{pipeline_provisioning || 'nil'}>"
      end
    end

    # Includes enum constants for ServiceTemplateSupportedComponentSourceType
    #
    module ServiceTemplateSupportedComponentSourceType
      # No documentation available.
      #
      DIRECTLY_DEFINED = "DIRECTLY_DEFINED"
    end

    # <p>Detailed data of an Proton service template version resource.</p>
    #
    # @!attribute template_name
    #   <p>The name of the version of a service template.</p>
    #
    #   @return [String]
    #
    # @!attribute major_version
    #   <p>The latest major version that's associated with the version of a service template.</p>
    #
    #   @return [String]
    #
    # @!attribute minor_version
    #   <p>The minor version of a service template.</p>
    #
    #   @return [String]
    #
    # @!attribute recommended_minor_version
    #   <p>The recommended minor version of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The service template version status.</p>
    #
    #   Enum, one of: ["REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A service template version status message.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the version of a service template.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the version of a service template.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time when the version of a service template was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_at
    #   <p>The time when the version of a service template was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute compatible_environment_templates
    #   <p>An array of compatible environment template names for the major version of a service template.</p>
    #
    #   @return [Array<CompatibleEnvironmentTemplate>]
    #
    # @!attribute schema
    #   <p>The schema of the version of a service template.</p>
    #
    #   @return [String]
    #
    # @!attribute supported_component_sources
    #   <p>An array of supported component sources. Components with supported sources can be attached to service instances based on this service template
    #         version.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #     <i>Proton Administrator Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    ServiceTemplateVersion = ::Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      :recommended_minor_version,
      :status,
      :status_message,
      :description,
      :arn,
      :created_at,
      :last_modified_at,
      :compatible_environment_templates,
      :schema,
      :supported_component_sources,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::ServiceTemplateVersion "\
          "template_name=#{template_name || 'nil'}, "\
          "major_version=#{major_version || 'nil'}, "\
          "minor_version=#{minor_version || 'nil'}, "\
          "recommended_minor_version=#{recommended_minor_version || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "status_message=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "arn=#{arn || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "last_modified_at=#{last_modified_at || 'nil'}, "\
          "compatible_environment_templates=#{compatible_environment_templates || 'nil'}, "\
          "schema=\"[SENSITIVE]\", "\
          "supported_component_sources=#{supported_component_sources || 'nil'}>"
      end
    end

    # <p>Summary data of an Proton service template version resource.</p>
    #
    # @!attribute template_name
    #   <p>The name of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute major_version
    #   <p>The latest major version that's associated with the version of a service template.</p>
    #
    #   @return [String]
    #
    # @!attribute minor_version
    #   <p>The minor version of a service template.</p>
    #
    #   @return [String]
    #
    # @!attribute recommended_minor_version
    #   <p>The recommended minor version of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The service template minor version status.</p>
    #
    #   Enum, one of: ["REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A service template minor version status message.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the version of a service template.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the version of a service template.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time when the version of a service template was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_at
    #   <p>The time when the version of a service template was last modified.</p>
    #
    #   @return [Time]
    #
    ServiceTemplateVersionSummary = ::Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      :recommended_minor_version,
      :status,
      :status_message,
      :description,
      :arn,
      :created_at,
      :last_modified_at,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::ServiceTemplateVersionSummary "\
          "template_name=#{template_name || 'nil'}, "\
          "major_version=#{major_version || 'nil'}, "\
          "minor_version=#{minor_version || 'nil'}, "\
          "recommended_minor_version=#{recommended_minor_version || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "status_message=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\", "\
          "arn=#{arn || 'nil'}, "\
          "created_at=#{created_at || 'nil'}, "\
          "last_modified_at=#{last_modified_at || 'nil'}>"
      end
    end

    # Includes enum constants for SyncType
    #
    module SyncType
      # No documentation available.
      #
      TEMPLATE_SYNC = "TEMPLATE_SYNC"
    end

    # <p>A description of a resource tag.</p>
    #
    # @!attribute key
    #   <p>The key of the resource tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the resource tag.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Proton resource to apply customer tags to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of customer tags to apply to the Proton resource.</p>
    #
    #   @return [Array<Tag>]
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

    # <p>The detail data for a template sync configuration.</p>
    #
    # @!attribute template_name
    #   <p>The template name.</p>
    #
    #   @return [String]
    #
    # @!attribute template_type
    #   <p>The template type.</p>
    #
    #   Enum, one of: ["ENVIRONMENT", "SERVICE"]
    #
    #   @return [String]
    #
    # @!attribute repository_provider
    #   <p>The repository provider.</p>
    #
    #   Enum, one of: ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository, for example <code>myrepos/myrepo</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute branch
    #   <p>The repository branch.</p>
    #
    #   @return [String]
    #
    # @!attribute subdirectory
    #   <p>A subdirectory path to your template bundle version.</p>
    #
    #   @return [String]
    #
    TemplateSyncConfig = ::Struct.new(
      :template_name,
      :template_type,
      :repository_provider,
      :repository_name,
      :branch,
      :subdirectory,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TemplateType
    #
    module TemplateType
      # No documentation available.
      #
      ENVIRONMENT = "ENVIRONMENT"

      # No documentation available.
      #
      SERVICE = "SERVICE"
    end

    # <p>Template version source data.</p>
    #
    class TemplateVersionSourceInput < Hearth::Union
      # <p>An S3 source object that includes the template bundle S3 path and name for a template minor version.</p>
      #
      class S3 < TemplateVersionSourceInput
        def to_h
          { s3: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Proton::Types::S3 #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < TemplateVersionSourceInput
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Proton::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # Includes enum constants for TemplateVersionStatus
    #
    module TemplateVersionStatus
      # No documentation available.
      #
      REGISTRATION_IN_PROGRESS = "REGISTRATION_IN_PROGRESS"

      # No documentation available.
      #
      REGISTRATION_FAILED = "REGISTRATION_FAILED"

      # No documentation available.
      #
      DRAFT = "DRAFT"

      # No documentation available.
      #
      PUBLISHED = "PUBLISHED"
    end

    # <p>The request was denied due to request throttling.</p>
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

      def to_s
        "#<struct AWS::SDK::Proton::Types::ThrottlingException "\
          "message=\"[SENSITIVE]\">"
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove customer tags from.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of customer tag keys that indicate the customer tags to be removed from the resource.</p>
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

    # @!attribute pipeline_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role you want to use for provisioning pipelines. Assumed by Proton for Amazon Web Services-managed provisioning, and by
    #         customer-owned automation for self-managed provisioning.</p>
    #
    #   @return [String]
    #
    # @!attribute pipeline_provisioning_repository
    #   <p>A repository for pipeline provisioning. Specify it if you have environments configured for self-managed provisioning with services that include
    #         pipelines.</p>
    #
    #   @return [RepositoryBranchInput]
    #
    UpdateAccountSettingsInput = ::Struct.new(
      :pipeline_service_role_arn,
      :pipeline_provisioning_repository,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_settings
    #   <p>The Proton pipeline service role and repository data shared across the Amazon Web Services account.</p>
    #
    #   @return [AccountSettings]
    #
    UpdateAccountSettingsOutput = ::Struct.new(
      :account_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the component to update.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_type
    #   <p>The deployment type. It defines the mode for updating a component, as follows:</p>
    #            <dl>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>NONE</code>
    #                  </p>
    #                  <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated. You can only specify
    #                 <code>description</code> in this mode.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>CURRENT_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the component is deployed and updated with the new <code>serviceSpec</code>, <code>templateSource</code>, and/or <code>type</code>
    #               that you provide. Only requested parameters are updated.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["NONE", "CURRENT_VERSION"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional customer-provided description of the component.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of the service that <code>serviceInstanceName</code> is associated with. Don't specify to keep the component's current service instance
    #         attachment. Specify an empty string to detach the component from the service instance it's attached to. Specify non-empty values for both
    #           <code>serviceInstanceName</code> and <code>serviceName</code> or for neither of them.</p>
    #
    #   @return [String]
    #
    # @!attribute service_instance_name
    #   <p>The name of the service instance that you want to attach this component to. Don't specify to keep the component's current service instance attachment.
    #         Specify an empty string to detach the component from the service instance it's attached to. Specify non-empty values for both
    #           <code>serviceInstanceName</code> and <code>serviceName</code> or for neither of them.</p>
    #
    #   @return [String]
    #
    # @!attribute service_spec
    #   <p>The service spec that you want the component to use to access service inputs. Set this only when the component is attached to a service
    #         instance.</p>
    #
    #   @return [String]
    #
    # @!attribute template_file
    #   <p>A path to the Infrastructure as Code (IaC) file describing infrastructure that a custom component provisions.</p>
    #            <note>
    #               <p>Components support a single IaC file, even if you use Terraform as your template language.</p>
    #            </note>
    #
    #   @return [String]
    #
    UpdateComponentInput = ::Struct.new(
      :name,
      :deployment_type,
      :description,
      :service_name,
      :service_instance_name,
      :service_spec,
      :template_file,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::UpdateComponentInput "\
          "name=#{name || 'nil'}, "\
          "deployment_type=#{deployment_type || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "service_name=#{service_name || 'nil'}, "\
          "service_instance_name=#{service_instance_name || 'nil'}, "\
          "service_spec=\"[SENSITIVE]\", "\
          "template_file=\"[SENSITIVE]\">"
      end
    end

    # @!attribute component
    #   <p>The detailed data of the updated component.</p>
    #
    #   @return [Component]
    #
    UpdateComponentOutput = ::Struct.new(
      :component,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the environment account connection to update.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that's associated with the environment account connection to update.</p>
    #
    #   @return [String]
    #
    # @!attribute component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in the associated
    #         environment account. It determines the scope of infrastructure that a component can provision in the account.</p>
    #            <p>The environment account connection must have a <code>componentRoleArn</code> to allow directly defined components to be associated with any
    #         environments running in the account.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #     <i>Proton Administrator Guide</i>.</p>
    #
    #   @return [String]
    #
    UpdateEnvironmentAccountConnectionInput = ::Struct.new(
      :id,
      :role_arn,
      :component_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute environment_account_connection
    #   <p>The environment account connection detail data that's returned by Proton.</p>
    #
    #   @return [EnvironmentAccountConnection]
    #
    UpdateEnvironmentAccountConnectionOutput = ::Struct.new(
      :environment_account_connection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the environment to update.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the environment update.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The formatted specification that defines the update.</p>
    #
    #   @return [String]
    #
    # @!attribute template_major_version
    #   <p>The major version of the environment to update.</p>
    #
    #   @return [String]
    #
    # @!attribute template_minor_version
    #   <p>The minor version of the environment to update.</p>
    #
    #   @return [String]
    #
    # @!attribute proton_service_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Proton service role that allows Proton to make API calls to other services your behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_type
    #   <p>There are four modes for updating an environment. The <code>deploymentType</code> field defines the mode.</p>
    #            <dl>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>NONE</code>
    #                  </p>
    #                  <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>CURRENT_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the environment is deployed and updated with the new spec that you provide. Only requested parameters are updated.
    #                 <i>Don’t</i> include major or minor version parameters when you use this <code>deployment-type</code>.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MINOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the environment is deployed and updated with the published, recommended (latest) minor version of the current major version in
    #               use, by default. You can also specify a different minor version of the current major version in use.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MAJOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the environment is deployed and updated with the published, recommended (latest) major and minor version of the current template,
    #               by default. You can also specify a different major version that is higher than the major version in use and a minor version (optional).</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["NONE", "CURRENT_VERSION", "MINOR_VERSION", "MAJOR_VERSION"]
    #
    #   @return [String]
    #
    # @!attribute environment_account_connection_id
    #   <p>The ID of the environment account connection.</p>
    #            <p>You can only update to a new environment account connection if it was created in the same environment account that the current environment account
    #         connection was created in and is associated with the current environment.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_repository
    #   <p>The infrastructure repository that you use to host your rendered infrastructure templates for self-managed provisioning.</p>
    #
    #   @return [RepositoryBranchInput]
    #
    # @!attribute component_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM service role that Proton uses when provisioning directly defined components in this environment. It
    #         determines the scope of infrastructure that a component can provision.</p>
    #            <p>The environment must have a <code>componentRoleArn</code> to allow directly defined components to be associated with the environment.</p>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #     <i>Proton Administrator Guide</i>.</p>
    #
    #   @return [String]
    #
    UpdateEnvironmentInput = ::Struct.new(
      :name,
      :description,
      :spec,
      :template_major_version,
      :template_minor_version,
      :proton_service_role_arn,
      :deployment_type,
      :environment_account_connection_id,
      :provisioning_repository,
      :component_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::UpdateEnvironmentInput "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "spec=\"[SENSITIVE]\", "\
          "template_major_version=#{template_major_version || 'nil'}, "\
          "template_minor_version=#{template_minor_version || 'nil'}, "\
          "proton_service_role_arn=#{proton_service_role_arn || 'nil'}, "\
          "deployment_type=#{deployment_type || 'nil'}, "\
          "environment_account_connection_id=#{environment_account_connection_id || 'nil'}, "\
          "provisioning_repository=#{provisioning_repository || 'nil'}, "\
          "component_role_arn=#{component_role_arn || 'nil'}>"
      end
    end

    # @!attribute environment
    #   <p>The environment detail data that's returned by Proton.</p>
    #
    #   @return [Environment]
    #
    UpdateEnvironmentOutput = ::Struct.new(
      :environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the environment template to update.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name of the environment template to update as displayed in the developer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the environment template update.</p>
    #
    #   @return [String]
    #
    UpdateEnvironmentTemplateInput = ::Struct.new(
      :name,
      :display_name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::UpdateEnvironmentTemplateInput "\
          "name=#{name || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\">"
      end
    end

    # @!attribute environment_template
    #   <p>The environment template detail data that's returned by Proton.</p>
    #
    #   @return [EnvironmentTemplate]
    #
    UpdateEnvironmentTemplateOutput = ::Struct.new(
      :environment_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of the environment template.</p>
    #
    #   @return [String]
    #
    # @!attribute major_version
    #   <p>To update a major version of an environment template, include <code>major Version</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute minor_version
    #   <p>To update a minor version of an environment template, include <code>minorVersion</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of environment template version to update.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the environment template minor version to update.</p>
    #
    #   Enum, one of: ["REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"]
    #
    #   @return [String]
    #
    UpdateEnvironmentTemplateVersionInput = ::Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      :description,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::UpdateEnvironmentTemplateVersionInput "\
          "template_name=#{template_name || 'nil'}, "\
          "major_version=#{major_version || 'nil'}, "\
          "minor_version=#{minor_version || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "status=#{status || 'nil'}>"
      end
    end

    # @!attribute environment_template_version
    #   <p>The environment template version detail data that's returned by Proton.</p>
    #
    #   @return [EnvironmentTemplateVersion]
    #
    UpdateEnvironmentTemplateVersionOutput = ::Struct.new(
      :environment_template_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the service to edit.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The edited service description.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>Lists the service instances to add and the existing service instances to remain. Omit the existing service instances to delete from the list.
    #           <i>Don't</i> include edits to the existing service instances or pipeline. For more information, see <i>Edit a service</i> in
    #         the <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-svc-update.html">Proton Administrator Guide</a> or the <a href="https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-update.html">Proton User Guide</a>.</p>
    #
    #   @return [String]
    #
    UpdateServiceInput = ::Struct.new(
      :name,
      :description,
      :spec,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::UpdateServiceInput "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "spec=\"[SENSITIVE]\">"
      end
    end

    # @!attribute name
    #   <p>The name of the service instance to update.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of the service that the service instance belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_type
    #   <p>The deployment type. It defines the mode for updating a service instance, as follows:</p>
    #            <dl>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>NONE</code>
    #                  </p>
    #                  <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>CURRENT_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service instance is deployed and updated with the new spec that you provide. Only requested parameters are updated.
    #                 <i>Don’t</i> include major or minor version parameters when you use this deployment type.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MINOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service instance is deployed and updated with the published, recommended (latest) minor version of the current major version
    #               in use, by default. You can also specify a different minor version of the current major version in use.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MAJOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service instance is deployed and updated with the published, recommended (latest) major and minor version of the current
    #               template, by default. You can specify a different major version that's higher than the major version in use and a minor version.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["NONE", "CURRENT_VERSION", "MINOR_VERSION", "MAJOR_VERSION"]
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The formatted specification that defines the service instance update.</p>
    #
    #   @return [String]
    #
    # @!attribute template_major_version
    #   <p>The major version of the service template to update.</p>
    #
    #   @return [String]
    #
    # @!attribute template_minor_version
    #   <p>The minor version of the service template to update.</p>
    #
    #   @return [String]
    #
    UpdateServiceInstanceInput = ::Struct.new(
      :name,
      :service_name,
      :deployment_type,
      :spec,
      :template_major_version,
      :template_minor_version,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::UpdateServiceInstanceInput "\
          "name=#{name || 'nil'}, "\
          "service_name=#{service_name || 'nil'}, "\
          "deployment_type=#{deployment_type || 'nil'}, "\
          "spec=\"[SENSITIVE]\", "\
          "template_major_version=#{template_major_version || 'nil'}, "\
          "template_minor_version=#{template_minor_version || 'nil'}>"
      end
    end

    # @!attribute service_instance
    #   <p>The service instance summary data that's returned by Proton.</p>
    #
    #   @return [ServiceInstance]
    #
    UpdateServiceInstanceOutput = ::Struct.new(
      :service_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service
    #   <p>The service detail data that's returned by Proton.</p>
    #
    #   @return [Service]
    #
    UpdateServiceOutput = ::Struct.new(
      :service,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_name
    #   <p>The name of the service to that the pipeline is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute spec
    #   <p>The spec for the service pipeline to update.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_type
    #   <p>The deployment type.</p>
    #            <p>There are four modes for updating a service pipeline. The <code>deploymentType</code> field defines the mode.</p>
    #            <dl>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>NONE</code>
    #                  </p>
    #                  <p>In this mode, a deployment <i>doesn't</i> occur. Only the requested metadata parameters are updated.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>CURRENT_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service pipeline is deployed and updated with the new spec that you provide. Only requested parameters are updated.
    #                 <i>Don’t</i> include major or minor version parameters when you use this <code>deployment-type</code>.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MINOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service pipeline is deployed and updated with the published, recommended (latest) minor version of the current major version
    #               in use, by default. You can specify a different minor version of the current major version in use.</p>
    #               </dd>
    #               <dt/>
    #               <dd>
    #                  <p>
    #                     <code>MAJOR_VERSION</code>
    #                  </p>
    #                  <p>In this mode, the service pipeline is deployed and updated with the published, recommended (latest) major and minor version of the current
    #               template, by default. You can specify a different major version that's higher than the major version in use and a minor version.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["NONE", "CURRENT_VERSION", "MINOR_VERSION", "MAJOR_VERSION"]
    #
    #   @return [String]
    #
    # @!attribute template_major_version
    #   <p>The major version of the service template that was used to create the service that the pipeline is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute template_minor_version
    #   <p>The minor version of the service template that was used to create the service that the pipeline is associated with.</p>
    #
    #   @return [String]
    #
    UpdateServicePipelineInput = ::Struct.new(
      :service_name,
      :spec,
      :deployment_type,
      :template_major_version,
      :template_minor_version,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::UpdateServicePipelineInput "\
          "service_name=#{service_name || 'nil'}, "\
          "spec=\"[SENSITIVE]\", "\
          "deployment_type=#{deployment_type || 'nil'}, "\
          "template_major_version=#{template_major_version || 'nil'}, "\
          "template_minor_version=#{template_minor_version || 'nil'}>"
      end
    end

    # @!attribute pipeline
    #   <p>The pipeline details that are returned by Proton.</p>
    #
    #   @return [ServicePipeline]
    #
    UpdateServicePipelineOutput = ::Struct.new(
      :pipeline,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the service template to update.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name of the service template to update that's displayed in the developer interface.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the service template update.</p>
    #
    #   @return [String]
    #
    UpdateServiceTemplateInput = ::Struct.new(
      :name,
      :display_name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::UpdateServiceTemplateInput "\
          "name=#{name || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "description=\"[SENSITIVE]\">"
      end
    end

    # @!attribute service_template
    #   <p>The service template detail data that's returned by Proton.</p>
    #
    #   @return [ServiceTemplate]
    #
    UpdateServiceTemplateOutput = ::Struct.new(
      :service_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The name of the service template.</p>
    #
    #   @return [String]
    #
    # @!attribute major_version
    #   <p>To update a major version of a service template, include <code>major Version</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute minor_version
    #   <p>To update a minor version of a service template, include <code>minorVersion</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of a service template version to update.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the service template minor version to update.</p>
    #
    #   Enum, one of: ["REGISTRATION_IN_PROGRESS", "REGISTRATION_FAILED", "DRAFT", "PUBLISHED"]
    #
    #   @return [String]
    #
    # @!attribute compatible_environment_templates
    #   <p>An array of environment template objects that are compatible with this service template version. A service instance based on this service template
    #         version can run in environments based on compatible templates.</p>
    #
    #   @return [Array<CompatibleEnvironmentTemplateInput>]
    #
    # @!attribute supported_component_sources
    #   <p>An array of supported component sources. Components with supported sources can be attached to service instances based on this service template
    #         version.</p>
    #            <note>
    #               <p>A change to <code>supportedComponentSources</code> doesn't impact existing component attachments to instances based on this template version. A
    #           change only affects later associations.</p>
    #            </note>
    #            <p>For more information about components, see
    #     <a href="https://docs.aws.amazon.com/proton/latest/adminguide/ag-components.html">Proton components</a> in the
    #     <i>Proton Administrator Guide</i>.</p>
    #
    #   @return [Array<String>]
    #
    UpdateServiceTemplateVersionInput = ::Struct.new(
      :template_name,
      :major_version,
      :minor_version,
      :description,
      :status,
      :compatible_environment_templates,
      :supported_component_sources,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Proton::Types::UpdateServiceTemplateVersionInput "\
          "template_name=#{template_name || 'nil'}, "\
          "major_version=#{major_version || 'nil'}, "\
          "minor_version=#{minor_version || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "status=#{status || 'nil'}, "\
          "compatible_environment_templates=#{compatible_environment_templates || 'nil'}, "\
          "supported_component_sources=#{supported_component_sources || 'nil'}>"
      end
    end

    # @!attribute service_template_version
    #   <p>The service template version detail data that's returned by Proton.</p>
    #
    #   @return [ServiceTemplateVersion]
    #
    UpdateServiceTemplateVersionOutput = ::Struct.new(
      :service_template_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_name
    #   <p>The synced template name.</p>
    #
    #   @return [String]
    #
    # @!attribute template_type
    #   <p>The synced template type.</p>
    #
    #   Enum, one of: ["ENVIRONMENT", "SERVICE"]
    #
    #   @return [String]
    #
    # @!attribute repository_provider
    #   <p>The repository provider.</p>
    #
    #   Enum, one of: ["GITHUB", "GITHUB_ENTERPRISE", "BITBUCKET"]
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository (for example, <code>myrepos/myrepo</code>).</p>
    #
    #   @return [String]
    #
    # @!attribute branch
    #   <p>The repository branch.</p>
    #
    #   @return [String]
    #
    # @!attribute subdirectory
    #   <p>A subdirectory path to your template bundle version. When included, limits the template bundle search to this repository directory.</p>
    #
    #   @return [String]
    #
    UpdateTemplateSyncConfigInput = ::Struct.new(
      :template_name,
      :template_type,
      :repository_provider,
      :repository_name,
      :branch,
      :subdirectory,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_sync_config
    #   <p>The template sync configuration detail data that's returned by Proton.</p>
    #
    #   @return [TemplateSyncConfig]
    #
    UpdateTemplateSyncConfigOutput = ::Struct.new(
      :template_sync_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input is invalid or an out-of-range value was supplied for the input parameter.</p>
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

      def to_s
        "#<struct AWS::SDK::Proton::Types::ValidationException "\
          "message=\"[SENSITIVE]\">"
      end
    end

  end
end
