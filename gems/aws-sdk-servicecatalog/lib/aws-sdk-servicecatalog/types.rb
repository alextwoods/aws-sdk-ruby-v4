# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServiceCatalog
  module Types

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute portfolio_share_type
    #   <p>The type of shared portfolios to accept. The default is to accept imported portfolios.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_ORGANIZATIONS</code> - Accept portfolios shared by the management account of your
    #                  organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMPORTED</code> - Accept imported portfolios.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_SERVICECATALOG</code> - Not supported. (Throws ResourceNotFoundException.)</p>
    #               </li>
    #            </ul>
    #            <p>For example, <code>aws servicecatalog accept-portfolio-share --portfolio-id "port-2qwzkwxt3y5fk" --portfolio-share-type AWS_ORGANIZATIONS</code>
    #            </p>
    #
    #   Enum, one of: ["IMPORTED", "AWS_SERVICECATALOG", "AWS_ORGANIZATIONS"]
    #
    #   @return [String]
    #
    AcceptPortfolioShareInput = ::Struct.new(
      :accept_language,
      :portfolio_id,
      :portfolio_share_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AcceptPortfolioShareOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The access level to use to filter results.</p>
    #
    # @!attribute key
    #   <p>The access level.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Account</code> - Filter results based on the account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Role</code> - Filter results based on the federated role of the specified user.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>User</code> - Filter results based on the specified user.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Account", "Role", "User"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The user to which the access level applies. The only supported value is <code>Self</code>.</p>
    #
    #   @return [String]
    #
    AccessLevelFilter = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AccessLevelFilterKey
    #
    module AccessLevelFilterKey
      # No documentation available.
      #
      ACCOUNT = "Account"

      # No documentation available.
      #
      ROLE = "Role"

      # No documentation available.
      #
      USER = "User"
    end

    # Includes enum constants for AccessStatus
    #
    module AccessStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      UNDER_CHANGE = "UNDER_CHANGE"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # @!attribute budget_name
    #   <p>The name of the budget you want to associate.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p> The resource identifier. Either a portfolio-id or a product-id.</p>
    #
    #   @return [String]
    #
    AssociateBudgetWithResourceInput = ::Struct.new(
      :budget_name,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateBudgetWithResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_arn
    #   <p>The ARN of the principal (IAM user, role, or group).</p>
    #
    #   @return [String]
    #
    # @!attribute principal_type
    #   <p>The principal type. The supported value is <code>IAM</code>.</p>
    #
    #   Enum, one of: ["IAM"]
    #
    #   @return [String]
    #
    AssociatePrincipalWithPortfolioInput = ::Struct.new(
      :accept_language,
      :portfolio_id,
      :principal_arn,
      :principal_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociatePrincipalWithPortfolioOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute source_portfolio_id
    #   <p>The identifier of the source portfolio.</p>
    #
    #   @return [String]
    #
    AssociateProductWithPortfolioInput = ::Struct.new(
      :accept_language,
      :product_id,
      :portfolio_id,
      :source_portfolio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateProductWithPortfolioOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute product_id
    #   <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    AssociateServiceActionWithProvisioningArtifactInput = ::Struct.new(
      :product_id,
      :provisioning_artifact_id,
      :service_action_id,
      :accept_language,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateServiceActionWithProvisioningArtifactOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The resource identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_option_id
    #   <p>The TagOption identifier.</p>
    #
    #   @return [String]
    #
    AssociateTagOptionWithResourceInput = ::Struct.new(
      :resource_id,
      :tag_option_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateTagOptionWithResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_action_associations
    #   <p>One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>
    #
    #   @return [Array<ServiceActionAssociation>]
    #
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    BatchAssociateServiceActionWithProvisioningArtifactInput = ::Struct.new(
      :service_action_associations,
      :accept_language,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_service_action_associations
    #   <p>An object that contains a list of errors, along with information to help you identify the self-service action.</p>
    #
    #   @return [Array<FailedServiceActionAssociation>]
    #
    BatchAssociateServiceActionWithProvisioningArtifactOutput = ::Struct.new(
      :failed_service_action_associations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_action_associations
    #   <p>One or more associations, each consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>
    #
    #   @return [Array<ServiceActionAssociation>]
    #
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    BatchDisassociateServiceActionFromProvisioningArtifactInput = ::Struct.new(
      :service_action_associations,
      :accept_language,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_service_action_associations
    #   <p>An object that contains a list of errors, along with information to help you identify the self-service action.</p>
    #
    #   @return [Array<FailedServiceActionAssociation>]
    #
    BatchDisassociateServiceActionFromProvisioningArtifactOutput = ::Struct.new(
      :failed_service_action_associations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a budget.</p>
    #
    # @!attribute budget_name
    #   <p>Name of the associated budget.</p>
    #
    #   @return [String]
    #
    BudgetDetail = ::Struct.new(
      :budget_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChangeAction
    #
    module ChangeAction
      # No documentation available.
      #
      ADD = "ADD"

      # No documentation available.
      #
      MODIFY = "MODIFY"

      # No documentation available.
      #
      REMOVE = "REMOVE"
    end

    # <p>Information about a CloudWatch dashboard.</p>
    #
    # @!attribute name
    #   <p>The name of the CloudWatch dashboard.</p>
    #
    #   @return [String]
    #
    CloudWatchDashboard = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a constraint.</p>
    #
    # @!attribute constraint_id
    #   <p>The identifier of the constraint.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of constraint.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LAUNCH</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOTIFICATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>STACKSET</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TEMPLATE</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the constraint.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The owner of the constraint.</p>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The identifier of the product the constraint applies to. Note that a constraint applies to a specific instance of a product within a certain portfolio.</p>
    #
    #   @return [String]
    #
    # @!attribute portfolio_id
    #   <p>The identifier of the portfolio the product resides in. The constraint applies only to the instance of the product that lives within this portfolio.</p>
    #
    #   @return [String]
    #
    ConstraintDetail = ::Struct.new(
      :constraint_id,
      :type,
      :description,
      :owner,
      :product_id,
      :portfolio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information about a constraint.</p>
    #
    # @!attribute type
    #   <p>The type of constraint.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LAUNCH</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOTIFICATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>STACKSET</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TEMPLATE</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the constraint.</p>
    #
    #   @return [String]
    #
    ConstraintSummary = ::Struct.new(
      :type,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CopyOption
    #
    module CopyOption
      # No documentation available.
      #
      CopyTags = "CopyTags"
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute source_product_arn
    #   <p>The Amazon Resource Name (ARN) of the source product.</p>
    #
    #   @return [String]
    #
    # @!attribute target_product_id
    #   <p>The identifier of the target product. By default, a new product is created.</p>
    #
    #   @return [String]
    #
    # @!attribute target_product_name
    #   <p>A name for the target product. The default is the name of the source product.</p>
    #
    #   @return [String]
    #
    # @!attribute source_provisioning_artifact_identifiers
    #   <p>The identifiers of the provisioning artifacts (also known as versions) of the product to copy.
    #            By default, all provisioning artifacts are copied.</p>
    #
    #   @return [Array<Hash<String, String>>]
    #
    # @!attribute copy_options
    #   <p>The copy options. If the value is <code>CopyTags</code>, the tags from the source
    #            product are copied to the target product.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute idempotency_token
    #   <p> A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request. </p>
    #
    #   @return [String]
    #
    CopyProductInput = ::Struct.new(
      :accept_language,
      :source_product_arn,
      :target_product_id,
      :target_product_name,
      :source_provisioning_artifact_identifiers,
      :copy_options,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute copy_product_token
    #   <p>The token to use to track the progress of the operation.</p>
    #
    #   @return [String]
    #
    CopyProductOutput = ::Struct.new(
      :copy_product_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CopyProductStatus
    #
    module CopyProductStatus
      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:</p>
    #            <dl>
    #               <dt>LAUNCH</dt>
    #               <dd>
    #                  <p>You are required to specify either the <code>RoleArn</code> or the <code>LocalRoleName</code> but can't use both.</p>
    #                  <p>Specify the <code>RoleArn</code> property as follows:</p>
    #                  <p>
    #                     <code>{"RoleArn" : "arn:aws:iam::123456789012:role/LaunchRole"}</code>
    #                  </p>
    #                  <p>Specify the <code>LocalRoleName</code> property as follows:</p>
    #                  <p>
    #                     <code>{"LocalRoleName": "SCBasicLaunchRole"}</code>
    #                  </p>
    #                  <p>If you specify the <code>LocalRoleName</code> property, when an account uses the launch constraint, the IAM role with that name in the account will be used. This allows launch-role constraints to be
    #                  account-agnostic so the administrator can create fewer resources per shared account.</p>
    #                  <note>
    #                     <p>The given role name must exist in the account used to create the launch constraint and the account of the user who launches a product with this launch constraint.</p>
    #                  </note>
    #                  <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
    #                  <p>You also cannot have more than one <code>LAUNCH</code> constraint on a product and portfolio.</p>
    #               </dd>
    #               <dt>NOTIFICATION</dt>
    #               <dd>
    #                  <p>Specify the <code>NotificationArns</code> property as follows:</p>
    #                  <p>
    #                     <code>{"NotificationArns" : ["arn:aws:sns:us-east-1:123456789012:Topic"]}</code>
    #                  </p>
    #               </dd>
    #               <dt>RESOURCE_UPDATE</dt>
    #               <dd>
    #                  <p>Specify the <code>TagUpdatesOnProvisionedProduct</code> property as follows:</p>
    #                  <p>
    #                     <code>{"Version":"2.0","Properties":{"TagUpdateOnProvisionedProduct":"String"}}</code>
    #                  </p>
    #                  <p>The <code>TagUpdatesOnProvisionedProduct</code> property accepts a string value of <code>ALLOWED</code> or <code>NOT_ALLOWED</code>.</p>
    #               </dd>
    #               <dt>STACKSET</dt>
    #               <dd>
    #                  <p>Specify the <code>Parameters</code> property as follows:</p>
    #                  <p>
    #                     <code>{"Version": "String", "Properties": {"AccountList": [ "String" ], "RegionList": [ "String" ], "AdminRole": "String", "ExecutionRole": "String"}}</code>
    #                  </p>
    #                  <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
    #                  <p>You also cannot have more than one <code>STACKSET</code> constraint on a product and portfolio.</p>
    #                  <p>Products with a <code>STACKSET</code> constraint will launch an AWS CloudFormation stack set.</p>
    #               </dd>
    #               <dt>TEMPLATE</dt>
    #               <dd>
    #                  <p>Specify the <code>Rules</code> property. For more information, see
    #                     <a href="http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html">Template Constraint Rules</a>.</p>
    #               </dd>
    #            </dl>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of constraint.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LAUNCH</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOTIFICATION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESOURCE_UPDATE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STACKSET</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TEMPLATE</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the constraint.</p>
    #
    #   @return [String]
    #
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #
    #   @return [String]
    #
    CreateConstraintInput = ::Struct.new(
      :accept_language,
      :portfolio_id,
      :product_id,
      :parameters,
      :type,
      :description,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute constraint_detail
    #   <p>Information about the constraint.</p>
    #
    #   @return [ConstraintDetail]
    #
    # @!attribute constraint_parameters
    #   <p>The constraint parameters.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the current request.</p>
    #
    #   Enum, one of: ["AVAILABLE", "CREATING", "FAILED"]
    #
    #   @return [String]
    #
    CreateConstraintOutput = ::Struct.new(
      :constraint_detail,
      :constraint_parameters,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name to use for display purposes.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the portfolio.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_name
    #   <p>The name of the portfolio provider.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #
    #   @return [String]
    #
    CreatePortfolioInput = ::Struct.new(
      :accept_language,
      :display_name,
      :description,
      :provider_name,
      :tags,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portfolio_detail
    #   <p>Information about the portfolio.</p>
    #
    #   @return [PortfolioDetail]
    #
    # @!attribute tags
    #   <p>Information about the tags associated with the portfolio.</p>
    #
    #   @return [Array<Tag>]
    #
    CreatePortfolioOutput = ::Struct.new(
      :portfolio_detail,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The AWS account ID. For example, <code>123456789012</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_node
    #   <p>The organization node to whom you are going to share. If <code>OrganizationNode</code>
    #            is passed in, <code>PortfolioShare</code> will be created for the node an
    #            ListOrganizationPortfolioAccessd its children (when applies), and a
    #               <code>PortfolioShareToken</code> will be returned in the output in order for the
    #            administrator to monitor the status of the <code>PortfolioShare</code> creation
    #            process.</p>
    #
    #   @return [OrganizationNode]
    #
    # @!attribute share_tag_options
    #   <p>Enables or disables <code>TagOptions </code> sharing when creating the portfolio share. If this flag is not provided, TagOptions sharing is disabled.</p>
    #
    #   @return [Boolean]
    #
    CreatePortfolioShareInput = ::Struct.new(
      :accept_language,
      :portfolio_id,
      :account_id,
      :organization_node,
      :share_tag_options,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.share_tag_options ||= false
      end

    end

    # @!attribute portfolio_share_token
    #   <p>The portfolio shares a unique identifier that only returns if the portfolio is shared to an organization node.</p>
    #
    #   @return [String]
    #
    CreatePortfolioShareOutput = ::Struct.new(
      :portfolio_share_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the product.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The owner of the product.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the product.</p>
    #
    #   @return [String]
    #
    # @!attribute distributor
    #   <p>The distributor of the product.</p>
    #
    #   @return [String]
    #
    # @!attribute support_description
    #   <p>The support information about the product.</p>
    #
    #   @return [String]
    #
    # @!attribute support_email
    #   <p>The contact email for product support.</p>
    #
    #   @return [String]
    #
    # @!attribute support_url
    #   <p>The contact URL for product support.</p>
    #            <p>
    #               <code>^https?:\/\// </code>/ is the pattern used to validate SupportUrl.</p>
    #
    #   @return [String]
    #
    # @!attribute product_type
    #   <p>The type of product.</p>
    #
    #   Enum, one of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute provisioning_artifact_parameters
    #   <p>The configuration of the provisioning artifact. </p>
    #
    #   @return [ProvisioningArtifactProperties]
    #
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #
    #   @return [String]
    #
    CreateProductInput = ::Struct.new(
      :accept_language,
      :name,
      :owner,
      :description,
      :distributor,
      :support_description,
      :support_email,
      :support_url,
      :product_type,
      :tags,
      :provisioning_artifact_parameters,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute product_view_detail
    #   <p>Information about the product view.</p>
    #
    #   @return [ProductViewDetail]
    #
    # @!attribute provisioning_artifact_detail
    #   <p>Information about the provisioning artifact. </p>
    #
    #   @return [ProvisioningArtifactDetail]
    #
    # @!attribute tags
    #   <p>Information about the tags associated with the product.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateProductOutput = ::Struct.new(
      :product_view_detail,
      :provisioning_artifact_detail,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute plan_name
    #   <p>The name of the plan.</p>
    #
    #   @return [String]
    #
    # @!attribute plan_type
    #   <p>The plan type.</p>
    #
    #   Enum, one of: ["CLOUDFORMATION"]
    #
    #   @return [String]
    #
    # @!attribute notification_arns
    #   <p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related
    #            events.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute path_id
    #   <p>The path identifier of the product. This value is optional if the product
    #            has a default path, and required if the product has more than one path.
    #            To list the paths for a product, use <a>ListLaunchPaths</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioned_product_name
    #   <p>A user-friendly name for the provisioned product. This value must be
    #            unique for the AWS account and cannot be updated after the product is provisioned.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_parameters
    #   <p>Parameters specified by the administrator that are required for provisioning the
    #            product.</p>
    #
    #   @return [Array<UpdateProvisioningParameter>]
    #
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
    #            <p>If the plan is for an existing provisioned product, the product must have a <code>RESOURCE_UPDATE</code> constraint with <code>TagUpdatesOnProvisionedProduct</code> set to <code>ALLOWED</code> to allow tag updates.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateProvisionedProductPlanInput = ::Struct.new(
      :accept_language,
      :plan_name,
      :plan_type,
      :notification_arns,
      :path_id,
      :product_id,
      :provisioned_product_name,
      :provisioning_artifact_id,
      :provisioning_parameters,
      :idempotency_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute plan_name
    #   <p>The name of the plan.</p>
    #
    #   @return [String]
    #
    # @!attribute plan_id
    #   <p>The plan identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute provision_product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioned_product_name
    #   <p>The user-friendly name of the provisioned product.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    CreateProvisionedProductPlanOutput = ::Struct.new(
      :plan_name,
      :plan_id,
      :provision_product_id,
      :provisioned_product_name,
      :provisioning_artifact_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The configuration for the provisioning artifact.</p>
    #
    #   @return [ProvisioningArtifactProperties]
    #
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #
    #   @return [String]
    #
    CreateProvisioningArtifactInput = ::Struct.new(
      :accept_language,
      :product_id,
      :parameters,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute provisioning_artifact_detail
    #   <p>Information about the provisioning artifact.</p>
    #
    #   @return [ProvisioningArtifactDetail]
    #
    # @!attribute info
    #   <p>Specify the template source with one of the following options, but not both. Keys
    #            accepted: [ <code>LoadTemplateFromURL</code>, <code>ImportFromPhysicalId</code> ].</p>
    #            <p>The URL of the CloudFormation template in Amazon S3, in JSON format. </p>
    #            <p>
    #               <code>LoadTemplateFromURL</code>
    #            </p>
    #            <p>Use the URL of the CloudFormation template in Amazon S3 in JSON format.</p>
    #            <p>
    #               <code>ImportFromPhysicalId</code>
    #            </p>
    #            <p>Use the physical id of the resource that contains the template; currently supports
    #            CloudFormation stack ARN.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute status
    #   <p>The status of the current request.</p>
    #
    #   Enum, one of: ["AVAILABLE", "CREATING", "FAILED"]
    #
    #   @return [String]
    #
    CreateProvisioningArtifactOutput = ::Struct.new(
      :provisioning_artifact_detail,
      :info,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The self-service action name.</p>
    #
    #   @return [String]
    #
    # @!attribute definition_type
    #   <p>The service action definition type. For example, <code>SSM_AUTOMATION</code>.</p>
    #
    #   Enum, one of: ["SSM_AUTOMATION"]
    #
    #   @return [String]
    #
    # @!attribute definition
    #   <p>The self-service action definition. Can be one of the following:</p>
    #            <dl>
    #               <dt>Name</dt>
    #               <dd>
    #                  <p>The name of the AWS Systems Manager document (SSM document). For example, <code>AWS-RestartEC2Instance</code>.</p>
    #                  <p>If you are using a shared SSM document, you must provide the ARN instead of the name.</p>
    #               </dd>
    #               <dt>Version</dt>
    #               <dd>
    #                  <p>The AWS Systems Manager automation document version. For example, <code>"Version": "1"</code>
    #                  </p>
    #               </dd>
    #               <dt>AssumeRole</dt>
    #               <dd>
    #                  <p>The Amazon Resource Name (ARN) of the role that performs the self-service actions on your behalf. For example, <code>"AssumeRole": "arn:aws:iam::12345678910:role/ActionRole"</code>.</p>
    #                  <p>To reuse the provisioned product launch role, set to <code>"AssumeRole": "LAUNCH_ROLE"</code>.</p>
    #               </dd>
    #               <dt>Parameters</dt>
    #               <dd>
    #                  <p>The list of parameters in JSON format.</p>
    #                  <p>For example: <code>[{\"Name\":\"InstanceId\",\"Type\":\"TARGET\"}]</code> or <code>[{\"Name\":\"InstanceId\",\"Type\":\"TEXT_VALUE\"}]</code>.</p>
    #               </dd>
    #            </dl>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute description
    #   <p>The self-service action description.</p>
    #
    #   @return [String]
    #
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #
    #   @return [String]
    #
    CreateServiceActionInput = ::Struct.new(
      :name,
      :definition_type,
      :definition,
      :description,
      :accept_language,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_action_detail
    #   <p>An object containing information about the self-service action.</p>
    #
    #   @return [ServiceActionDetail]
    #
    CreateServiceActionOutput = ::Struct.new(
      :service_action_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute key
    #   <p>The TagOption key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The TagOption value.</p>
    #
    #   @return [String]
    #
    CreateTagOptionInput = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tag_option_detail
    #   <p>Information about the TagOption.</p>
    #
    #   @return [TagOptionDetail]
    #
    CreateTagOptionOutput = ::Struct.new(
      :tag_option_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The identifier of the constraint.</p>
    #
    #   @return [String]
    #
    DeleteConstraintInput = ::Struct.new(
      :accept_language,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteConstraintOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The portfolio identifier.</p>
    #
    #   @return [String]
    #
    DeletePortfolioInput = ::Struct.new(
      :accept_language,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePortfolioOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The AWS account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_node
    #   <p>The organization node to whom you are going to stop sharing.</p>
    #
    #   @return [OrganizationNode]
    #
    DeletePortfolioShareInput = ::Struct.new(
      :accept_language,
      :portfolio_id,
      :account_id,
      :organization_node,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portfolio_share_token
    #   <p>The portfolio share unique identifier. This will only be returned if delete is made to an organization node.</p>
    #
    #   @return [String]
    #
    DeletePortfolioShareOutput = ::Struct.new(
      :portfolio_share_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    DeleteProductInput = ::Struct.new(
      :accept_language,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteProductOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute plan_id
    #   <p>The plan identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute ignore_errors
    #   <p>If set to true, AWS Service Catalog stops managing the specified provisioned product even
    #            if it cannot delete the underlying resources.</p>
    #
    #   @return [Boolean]
    #
    DeleteProvisionedProductPlanInput = ::Struct.new(
      :accept_language,
      :plan_id,
      :ignore_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.ignore_errors ||= false
      end

    end

    DeleteProvisionedProductPlanOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    DeleteProvisioningArtifactInput = ::Struct.new(
      :accept_language,
      :product_id,
      :provisioning_artifact_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteProvisioningArtifactOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    DeleteServiceActionInput = ::Struct.new(
      :id,
      :accept_language,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteServiceActionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The TagOption identifier.</p>
    #
    #   @return [String]
    #
    DeleteTagOptionInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTagOptionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The identifier of the constraint.</p>
    #
    #   @return [String]
    #
    DescribeConstraintInput = ::Struct.new(
      :accept_language,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute constraint_detail
    #   <p>Information about the constraint.</p>
    #
    #   @return [ConstraintDetail]
    #
    # @!attribute constraint_parameters
    #   <p>The constraint parameters.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the current request.</p>
    #
    #   Enum, one of: ["AVAILABLE", "CREATING", "FAILED"]
    #
    #   @return [String]
    #
    DescribeConstraintOutput = ::Struct.new(
      :constraint_detail,
      :constraint_parameters,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute copy_product_token
    #   <p>The token for the copy product operation. This token is returned by <a>CopyProduct</a>.</p>
    #
    #   @return [String]
    #
    DescribeCopyProductStatusInput = ::Struct.new(
      :accept_language,
      :copy_product_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute copy_product_status
    #   <p>The status of the copy product operation.</p>
    #
    #   Enum, one of: ["SUCCEEDED", "IN_PROGRESS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute target_product_id
    #   <p>The identifier of the copied product.</p>
    #
    #   @return [String]
    #
    # @!attribute status_detail
    #   <p>The status message.</p>
    #
    #   @return [String]
    #
    DescribeCopyProductStatusOutput = ::Struct.new(
      :copy_product_status,
      :target_product_id,
      :status_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The portfolio identifier.</p>
    #
    #   @return [String]
    #
    DescribePortfolioInput = ::Struct.new(
      :accept_language,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portfolio_detail
    #   <p>Information about the portfolio.</p>
    #
    #   @return [PortfolioDetail]
    #
    # @!attribute tags
    #   <p>Information about the tags associated with the portfolio.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute tag_options
    #   <p>Information about the TagOptions associated with the portfolio.</p>
    #
    #   @return [Array<TagOptionDetail>]
    #
    # @!attribute budgets
    #   <p>Information about the associated budgets.</p>
    #
    #   @return [Array<BudgetDetail>]
    #
    DescribePortfolioOutput = ::Struct.new(
      :portfolio_detail,
      :tags,
      :tag_options,
      :budgets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portfolio_share_token
    #   <p>The token for the portfolio share operation. This token is returned either by CreatePortfolioShare or by DeletePortfolioShare.</p>
    #
    #   @return [String]
    #
    DescribePortfolioShareStatusInput = ::Struct.new(
      :portfolio_share_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portfolio_share_token
    #   <p>The token for the portfolio share operation. For example, <code>share-6v24abcdefghi</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_node_value
    #   <p>Organization node identifier. It can be either account id, organizational unit id or organization id.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Status of the portfolio share operation.</p>
    #
    #   Enum, one of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute share_details
    #   <p>Information about the portfolio share operation.</p>
    #
    #   @return [ShareDetails]
    #
    DescribePortfolioShareStatusOutput = ::Struct.new(
      :portfolio_share_token,
      :portfolio_id,
      :organization_node_value,
      :status,
      :share_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DescribePortfolioShareType
    #
    module DescribePortfolioShareType
      # No documentation available.
      #
      ACCOUNT = "ACCOUNT"

      # No documentation available.
      #
      ORGANIZATION = "ORGANIZATION"

      # No documentation available.
      #
      ORGANIZATIONAL_UNIT = "ORGANIZATIONAL_UNIT"

      # No documentation available.
      #
      ORGANIZATION_MEMBER_ACCOUNT = "ORGANIZATION_MEMBER_ACCOUNT"
    end

    # @!attribute portfolio_id
    #   <p>The unique identifier of the portfolio for which shares will be retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of portfolio share to summarize. This field acts as a filter on the type of portfolio share, which can be one of the following:</p>
    #            <p>1. <code>ACCOUNT</code> - Represents an external account to account share.</p>
    #            <p>2. <code>ORGANIZATION</code> - Represents a share to an organization. This share is available to every account in the organization.</p>
    #            <p>3. <code>ORGANIZATIONAL_UNIT</code> - Represents a share to an organizational unit.</p>
    #            <p>4. <code>ORGANIZATION_MEMBER_ACCOUNT</code> - Represents a share to an account in the organization.</p>
    #
    #   Enum, one of: ["ACCOUNT", "ORGANIZATION", "ORGANIZATIONAL_UNIT", "ORGANIZATION_MEMBER_ACCOUNT"]
    #
    #   @return [String]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    DescribePortfolioSharesInput = ::Struct.new(
      :portfolio_id,
      :type,
      :page_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    # @!attribute portfolio_share_details
    #   <p>Summaries about each of the portfolio shares.</p>
    #
    #   @return [Array<PortfolioShareDetail>]
    #
    DescribePortfolioSharesOutput = ::Struct.new(
      :next_page_token,
      :portfolio_share_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The product name.</p>
    #
    #   @return [String]
    #
    # @!attribute source_portfolio_id
    #   <p>The unique identifier of the shared portfolio that the specified product is associated
    #            with.</p>
    #            <p>You can provide this parameter to retrieve the shared TagOptions associated with the
    #            product. If this parameter is provided and if TagOptions sharing is enabled in the
    #            portfolio share, the API returns both local and shared TagOptions associated with the
    #            product. Otherwise only local TagOptions will be returned. </p>
    #
    #   @return [String]
    #
    DescribeProductAsAdminInput = ::Struct.new(
      :accept_language,
      :id,
      :name,
      :source_portfolio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute product_view_detail
    #   <p>Information about the product view.</p>
    #
    #   @return [ProductViewDetail]
    #
    # @!attribute provisioning_artifact_summaries
    #   <p>Information about the provisioning artifacts (also known as versions) for the specified product.</p>
    #
    #   @return [Array<ProvisioningArtifactSummary>]
    #
    # @!attribute tags
    #   <p>Information about the tags associated with the product.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute tag_options
    #   <p>Information about the TagOptions associated with the product.</p>
    #
    #   @return [Array<TagOptionDetail>]
    #
    # @!attribute budgets
    #   <p>Information about the associated budgets.</p>
    #
    #   @return [Array<BudgetDetail>]
    #
    DescribeProductAsAdminOutput = ::Struct.new(
      :product_view_detail,
      :provisioning_artifact_summaries,
      :tags,
      :tag_options,
      :budgets,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The product name.</p>
    #
    #   @return [String]
    #
    DescribeProductInput = ::Struct.new(
      :accept_language,
      :id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute product_view_summary
    #   <p>Summary information about the product view.</p>
    #
    #   @return [ProductViewSummary]
    #
    # @!attribute provisioning_artifacts
    #   <p>Information about the provisioning artifacts for the specified product.</p>
    #
    #   @return [Array<ProvisioningArtifact>]
    #
    # @!attribute budgets
    #   <p>Information about the associated budgets.</p>
    #
    #   @return [Array<BudgetDetail>]
    #
    # @!attribute launch_paths
    #   <p>Information about the associated launch paths.</p>
    #
    #   @return [Array<LaunchPath>]
    #
    DescribeProductOutput = ::Struct.new(
      :product_view_summary,
      :provisioning_artifacts,
      :budgets,
      :launch_paths,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The product view identifier.</p>
    #
    #   @return [String]
    #
    DescribeProductViewInput = ::Struct.new(
      :accept_language,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute product_view_summary
    #   <p>Summary information about the product.</p>
    #
    #   @return [ProductViewSummary]
    #
    # @!attribute provisioning_artifacts
    #   <p>Information about the provisioning artifacts for the product.</p>
    #
    #   @return [Array<ProvisioningArtifact>]
    #
    DescribeProductViewOutput = ::Struct.new(
      :product_view_summary,
      :provisioning_artifacts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # DescribeProvisionedProductAPI input structure.
    #
    #         AcceptLanguage - [Optional]
    #         The language code for localization.
    #
    #         Id - [Optional]
    #         The provisioned product identifier.
    #
    #         Name - [Optional]
    #         Another provisioned product identifier. Customers must provide either Id or Name.
    #
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The provisioned product identifier. You must provide the name or ID, but not both.</p>
    #            <p>If you do not provide a name or ID, or you provide both name and ID, an <code>InvalidParametersException</code> will occur.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the provisioned product. You must provide the name or ID, but not both.</p>
    #            <p>If you do not provide a name or ID, or you provide both name and ID, an <code>InvalidParametersException</code> will occur.</p>
    #
    #   @return [String]
    #
    DescribeProvisionedProductInput = ::Struct.new(
      :accept_language,
      :id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute provisioned_product_detail
    #   <p>Information about the provisioned product.</p>
    #
    #   @return [ProvisionedProductDetail]
    #
    # @!attribute cloud_watch_dashboards
    #   <p>Any CloudWatch dashboards that were created when provisioning the product.</p>
    #
    #   @return [Array<CloudWatchDashboard>]
    #
    DescribeProvisionedProductOutput = ::Struct.new(
      :provisioned_product_detail,
      :cloud_watch_dashboards,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute plan_id
    #   <p>The plan identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    DescribeProvisionedProductPlanInput = ::Struct.new(
      :accept_language,
      :plan_id,
      :page_size,
      :page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute provisioned_product_plan_details
    #   <p>Information about the plan.</p>
    #
    #   @return [ProvisionedProductPlanDetails]
    #
    # @!attribute resource_changes
    #   <p>Information about the resource changes that will occur when the plan is executed.</p>
    #
    #   @return [Array<ResourceChange>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    DescribeProvisionedProductPlanOutput = ::Struct.new(
      :provisioned_product_plan_details,
      :resource_changes,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_name
    #   <p>The provisioning artifact name.</p>
    #
    #   @return [String]
    #
    # @!attribute product_name
    #   <p>The product name.</p>
    #
    #   @return [String]
    #
    # @!attribute verbose
    #   <p>Indicates whether a verbose level of detail is enabled.</p>
    #
    #   @return [Boolean]
    #
    DescribeProvisioningArtifactInput = ::Struct.new(
      :accept_language,
      :provisioning_artifact_id,
      :product_id,
      :provisioning_artifact_name,
      :product_name,
      :verbose,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.verbose ||= false
      end

    end

    # @!attribute provisioning_artifact_detail
    #   <p>Information about the provisioning artifact.</p>
    #
    #   @return [ProvisioningArtifactDetail]
    #
    # @!attribute info
    #   <p>The URL of the CloudFormation template in Amazon S3.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute status
    #   <p>The status of the current request.</p>
    #
    #   Enum, one of: ["AVAILABLE", "CREATING", "FAILED"]
    #
    #   @return [String]
    #
    DescribeProvisioningArtifactOutput = ::Struct.new(
      :provisioning_artifact_detail,
      :info,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier. You must provide the product name or ID, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute product_name
    #   <p>The name of the product. You must provide the name or ID, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. You must provide the name or ID, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_name
    #   <p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute path_id
    #   <p>The path identifier of the product. This value is optional if the product
    #            has a default path, and required if the product has more than one path.
    #            To list the paths for a product, use <a>ListLaunchPaths</a>. You must provide the name or ID, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute path_name
    #   <p>The name of the path. You must provide the name or ID, but not both.</p>
    #
    #   @return [String]
    #
    DescribeProvisioningParametersInput = ::Struct.new(
      :accept_language,
      :product_id,
      :product_name,
      :provisioning_artifact_id,
      :provisioning_artifact_name,
      :path_id,
      :path_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute provisioning_artifact_parameters
    #   <p>Information about the parameters used to provision the product.</p>
    #
    #   @return [Array<ProvisioningArtifactParameter>]
    #
    # @!attribute constraint_summaries
    #   <p>Information about the constraints used to provision the product.</p>
    #
    #   @return [Array<ConstraintSummary>]
    #
    # @!attribute usage_instructions
    #   <p>Any additional metadata specifically related to the provisioning of the product. For
    #            example, see the <code>Version</code> field of the CloudFormation template.</p>
    #
    #   @return [Array<UsageInstruction>]
    #
    # @!attribute tag_options
    #   <p>Information about the TagOptions associated with the resource.</p>
    #
    #   @return [Array<TagOptionSummary>]
    #
    # @!attribute provisioning_artifact_preferences
    #   <p>An object that contains information about preferences, such as regions and accounts, for the provisioning artifact.</p>
    #
    #   @return [ProvisioningArtifactPreferences]
    #
    # @!attribute provisioning_artifact_outputs
    #   <p>The output of the provisioning artifact.</p>
    #
    #   @deprecated
    #     This property is deprecated and returns the Id and Description of the Provisioning Artifact. Use ProvisioningArtifactOutputKeys instead to get the Keys and Descriptions of the outputs.
    #
    #   @return [Array<ProvisioningArtifactOutput>]
    #
    # @!attribute provisioning_artifact_output_keys
    #   <p>A list of the keys and descriptions of the outputs. These outputs can be referenced from a provisioned product launched from this provisioning artifact.</p>
    #
    #   @return [Array<ProvisioningArtifactOutput>]
    #
    DescribeProvisioningParametersOutput = ::Struct.new(
      :provisioning_artifact_parameters,
      :constraint_summaries,
      :usage_instructions,
      :tag_options,
      :provisioning_artifact_preferences,
      :provisioning_artifact_outputs,
      :provisioning_artifact_output_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The record identifier of the provisioned product. This identifier is returned by the
    #            request operation.</p>
    #
    #   @return [String]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    DescribeRecordInput = ::Struct.new(
      :accept_language,
      :id,
      :page_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute record_detail
    #   <p>Information about the product.</p>
    #
    #   @return [RecordDetail]
    #
    # @!attribute record_outputs
    #   <p>Information about the product created as the result of a request. For example, the output for
    #            a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.</p>
    #
    #   @return [Array<RecordOutput>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    DescribeRecordOutput = ::Struct.new(
      :record_detail,
      :record_outputs,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute provisioned_product_id
    #   <p>The identifier of the provisioned product.</p>
    #
    #   @return [String]
    #
    # @!attribute service_action_id
    #   <p>The self-service action identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    DescribeServiceActionExecutionParametersInput = ::Struct.new(
      :provisioned_product_id,
      :service_action_id,
      :accept_language,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_action_parameters
    #   <p>The parameters of the self-service action.</p>
    #
    #   @return [Array<ExecutionParameter>]
    #
    DescribeServiceActionExecutionParametersOutput = ::Struct.new(
      :service_action_parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The self-service action identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    DescribeServiceActionInput = ::Struct.new(
      :id,
      :accept_language,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_action_detail
    #   <p>Detailed information about the self-service action.</p>
    #
    #   @return [ServiceActionDetail]
    #
    DescribeServiceActionOutput = ::Struct.new(
      :service_action_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The TagOption identifier.</p>
    #
    #   @return [String]
    #
    DescribeTagOptionInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tag_option_detail
    #   <p>Information about the TagOption.</p>
    #
    #   @return [TagOptionDetail]
    #
    DescribeTagOptionOutput = ::Struct.new(
      :tag_option_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisableAWSOrganizationsAccessInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisableAWSOrganizationsAccessOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute budget_name
    #   <p>The name of the budget you want to disassociate.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The resource identifier you want to disassociate from. Either a portfolio-id or a product-id.</p>
    #
    #   @return [String]
    #
    DisassociateBudgetFromResourceInput = ::Struct.new(
      :budget_name,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateBudgetFromResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute principal_arn
    #   <p>The ARN of the principal (IAM user, role, or group).</p>
    #
    #   @return [String]
    #
    DisassociatePrincipalFromPortfolioInput = ::Struct.new(
      :accept_language,
      :portfolio_id,
      :principal_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociatePrincipalFromPortfolioOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    #   @return [String]
    #
    DisassociateProductFromPortfolioInput = ::Struct.new(
      :accept_language,
      :product_id,
      :portfolio_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateProductFromPortfolioOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute product_id
    #   <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    DisassociateServiceActionFromProvisioningArtifactInput = ::Struct.new(
      :product_id,
      :provisioning_artifact_id,
      :service_action_id,
      :accept_language,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateServiceActionFromProvisioningArtifactOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The resource identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_option_id
    #   <p>The TagOption identifier.</p>
    #
    #   @return [String]
    #
    DisassociateTagOptionFromResourceInput = ::Struct.new(
      :resource_id,
      :tag_option_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateTagOptionFromResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource is a duplicate.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DuplicateResourceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    EnableAWSOrganizationsAccessInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    EnableAWSOrganizationsAccessOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EvaluationType
    #
    module EvaluationType
      # No documentation available.
      #
      STATIC = "STATIC"

      # No documentation available.
      #
      DYNAMIC = "DYNAMIC"
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute plan_id
    #   <p>The plan identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #
    #   @return [String]
    #
    ExecuteProvisionedProductPlanInput = ::Struct.new(
      :accept_language,
      :plan_id,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute record_detail
    #   <p>Information about the result of provisioning the product.</p>
    #
    #   @return [RecordDetail]
    #
    ExecuteProvisionedProductPlanOutput = ::Struct.new(
      :record_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute provisioned_product_id
    #   <p>The identifier of the provisioned product.</p>
    #
    #   @return [String]
    #
    # @!attribute service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute execute_token
    #   <p>An idempotency token that uniquely identifies the execute request.</p>
    #
    #   @return [String]
    #
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>A map of all self-service action parameters and their values. If a provided parameter is of a special type, such as <code>TARGET</code>, the provided value will
    #               override the default value generated by AWS Service Catalog. If the parameters field is not provided, no additional parameters are passed and default values will be used for
    #               any special parameters such as <code>TARGET</code>.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    ExecuteProvisionedProductServiceActionInput = ::Struct.new(
      :provisioned_product_id,
      :service_action_id,
      :execute_token,
      :accept_language,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute record_detail
    #   <p>An object containing detailed information about the result of provisioning the product.</p>
    #
    #   @return [RecordDetail]
    #
    ExecuteProvisionedProductServiceActionOutput = ::Struct.new(
      :record_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details of an execution parameter value that is passed to a self-service action when executed on a provisioned product.</p>
    #
    # @!attribute name
    #   <p>The name of the execution parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The execution parameter type.</p>
    #
    #   @return [String]
    #
    # @!attribute default_values
    #   <p>The default values for the execution parameter.</p>
    #
    #   @return [Array<String>]
    #
    ExecutionParameter = ::Struct.new(
      :name,
      :type,
      :default_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object containing information about the error, along with identifying information about the self-service action and its associations.</p>
    #
    # @!attribute service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The error code. Valid values are listed below.</p>
    #
    #   Enum, one of: ["DUPLICATE_RESOURCE", "INTERNAL_FAILURE", "LIMIT_EXCEEDED", "RESOURCE_NOT_FOUND", "THROTTLING"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>A text description of the error.</p>
    #
    #   @return [String]
    #
    FailedServiceActionAssociation = ::Struct.new(
      :service_action_id,
      :product_id,
      :provisioning_artifact_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetAWSOrganizationsAccessStatusInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute access_status
    #   <p>The status of the portfolio share feature.</p>
    #
    #   Enum, one of: ["ENABLED", "UNDER_CHANGE", "DISABLED"]
    #
    #   @return [String]
    #
    GetAWSOrganizationsAccessStatusOutput = ::Struct.new(
      :access_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute provisioned_product_id
    #   <p>The identifier of the provisioned product that you want the outputs from.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioned_product_name
    #   <p>The name of the provisioned product that you want the outputs from.</p>
    #
    #   @return [String]
    #
    # @!attribute output_keys
    #   <p>The list of keys that the API should return with their values. If none are provided, the API will return all outputs of the provisioned product.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    GetProvisionedProductOutputsInput = ::Struct.new(
      :accept_language,
      :provisioned_product_id,
      :provisioned_product_name,
      :output_keys,
      :page_size,
      :page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute outputs
    #   <p>Information about the product created as the result of a request. For example, the output for a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.
    #         </p>
    #
    #   @return [Array<RecordOutput>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    GetProvisionedProductOutputsOutput = ::Struct.new(
      :outputs,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioned_product_name
    #   <p>The user-friendly name of the provisioned product. The value must be unique for the AWS
    #            account. The name cannot be updated after the product is provisioned. </p>
    #
    #   @return [String]
    #
    # @!attribute physical_id
    #   <p>The unique identifier of the resource to be imported. It only currently supports
    #            CloudFormation stack IDs.</p>
    #
    #   @return [String]
    #
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #
    #   @return [String]
    #
    ImportAsProvisionedProductInput = ::Struct.new(
      :accept_language,
      :product_id,
      :provisioning_artifact_id,
      :provisioned_product_name,
      :physical_id,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute record_detail
    #   <p>Information about a request operation.</p>
    #
    #   @return [RecordDetail]
    #
    ImportAsProvisionedProductOutput = ::Struct.new(
      :record_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more parameters provided to the operation are not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParametersException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An attempt was made to modify a resource that is in a state that is not valid.
    #          Check your resources to ensure that they are in valid states before retrying the operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A launch path object.</p>
    #
    # @!attribute id
    #   <p>The identifier of the launch path.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the launch path.</p>
    #
    #   @return [String]
    #
    LaunchPath = ::Struct.new(
      :id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information about a product path for a user.</p>
    #
    # @!attribute id
    #   <p>The identifier of the product path.</p>
    #
    #   @return [String]
    #
    # @!attribute constraint_summaries
    #   <p>The constraints on the portfolio-product relationship.</p>
    #
    #   @return [Array<ConstraintSummary>]
    #
    # @!attribute tags
    #   <p>The tags associated with this product path.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute name
    #   <p>The name of the portfolio that contains the product. </p>
    #
    #   @return [String]
    #
    LaunchPathSummary = ::Struct.new(
      :id,
      :constraint_summaries,
      :tags,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The current limits of the service would have been exceeded by this operation. Decrease your
    #          resource use or increase your service limits and retry the operation.</p>
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

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute portfolio_share_type
    #   <p>The type of shared portfolios to list. The default is to list imported portfolios.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_ORGANIZATIONS</code> - List portfolios accepted and shared via organizational sharing by the management account or delegated administrator of your organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_SERVICECATALOG</code> - Deprecated type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMPORTED</code> - List imported portfolios that have been accepted and
    #                  shared through account-to-account sharing.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["IMPORTED", "AWS_SERVICECATALOG", "AWS_ORGANIZATIONS"]
    #
    #   @return [String]
    #
    ListAcceptedPortfolioSharesInput = ::Struct.new(
      :accept_language,
      :page_token,
      :page_size,
      :portfolio_share_type,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute portfolio_details
    #   <p>Information about the portfolios.</p>
    #
    #   @return [Array<PortfolioDetail>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    ListAcceptedPortfolioSharesOutput = ::Struct.new(
      :portfolio_details,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The resource identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    ListBudgetsForResourceInput = ::Struct.new(
      :accept_language,
      :resource_id,
      :page_size,
      :page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute budgets
    #   <p>Information about the associated budgets.</p>
    #
    #   @return [Array<BudgetDetail>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    ListBudgetsForResourceOutput = ::Struct.new(
      :budgets,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    ListConstraintsForPortfolioInput = ::Struct.new(
      :accept_language,
      :portfolio_id,
      :product_id,
      :page_size,
      :page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute constraint_details
    #   <p>Information about the constraints.</p>
    #
    #   @return [Array<ConstraintDetail>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    ListConstraintsForPortfolioOutput = ::Struct.new(
      :constraint_details,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    ListLaunchPathsInput = ::Struct.new(
      :accept_language,
      :product_id,
      :page_size,
      :page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute launch_path_summaries
    #   <p>Information about the launch path.</p>
    #
    #   @return [Array<LaunchPathSummary>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    ListLaunchPathsOutput = ::Struct.new(
      :launch_path_summaries,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute portfolio_id
    #   <p>The portfolio identifier. For example, <code>port-2abcdext3y5fk</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_node_type
    #   <p>The organization node type that will be returned in the output.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ORGANIZATION</code> - Organization that has access to the portfolio. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ORGANIZATIONAL_UNIT</code> - Organizational unit that has access to the portfolio within your organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACCOUNT</code> - Account that has access to the portfolio within your organization.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ORGANIZATION", "ORGANIZATIONAL_UNIT", "ACCOUNT"]
    #
    #   @return [String]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    ListOrganizationPortfolioAccessInput = ::Struct.new(
      :accept_language,
      :portfolio_id,
      :organization_node_type,
      :page_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute organization_nodes
    #   <p>Displays information about the organization nodes.</p>
    #
    #   @return [Array<OrganizationNode>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    ListOrganizationPortfolioAccessOutput = ::Struct.new(
      :organization_nodes,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_parent_id
    #   <p>The ID of an organization node the portfolio is shared with. All children of this node with an inherited portfolio share will be returned.</p>
    #
    #   @return [String]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    ListPortfolioAccessInput = ::Struct.new(
      :accept_language,
      :portfolio_id,
      :organization_parent_id,
      :page_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute account_ids
    #   <p>Information about the AWS accounts with access to the portfolio.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    ListPortfolioAccessOutput = ::Struct.new(
      :account_ids,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    ListPortfoliosForProductInput = ::Struct.new(
      :accept_language,
      :product_id,
      :page_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute portfolio_details
    #   <p>Information about the portfolios.</p>
    #
    #   @return [Array<PortfolioDetail>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    ListPortfoliosForProductOutput = ::Struct.new(
      :portfolio_details,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    ListPortfoliosInput = ::Struct.new(
      :accept_language,
      :page_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute portfolio_details
    #   <p>Information about the portfolios.</p>
    #
    #   @return [Array<PortfolioDetail>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    ListPortfoliosOutput = ::Struct.new(
      :portfolio_details,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    ListPrincipalsForPortfolioInput = ::Struct.new(
      :accept_language,
      :portfolio_id,
      :page_size,
      :page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute principals
    #   <p>The IAM principals (users or roles) associated with the portfolio.</p>
    #
    #   @return [Array<Principal>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    ListPrincipalsForPortfolioOutput = ::Struct.new(
      :principals,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute provision_product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    # @!attribute access_level_filter
    #   <p>The access level to use to obtain results. The default is <code>User</code>.</p>
    #
    #   @return [AccessLevelFilter]
    #
    ListProvisionedProductPlansInput = ::Struct.new(
      :accept_language,
      :provision_product_id,
      :page_size,
      :page_token,
      :access_level_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute provisioned_product_plans
    #   <p>Information about the plans.</p>
    #
    #   @return [Array<ProvisionedProductPlanSummary>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    ListProvisionedProductPlansOutput = ::Struct.new(
      :provisioned_product_plans,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    ListProvisioningArtifactsForServiceActionInput = ::Struct.new(
      :service_action_id,
      :page_size,
      :page_token,
      :accept_language,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute provisioning_artifact_views
    #   <p>An array of objects with information about product views and provisioning artifacts.</p>
    #
    #   @return [Array<ProvisioningArtifactView>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    ListProvisioningArtifactsForServiceActionOutput = ::Struct.new(
      :provisioning_artifact_views,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    ListProvisioningArtifactsInput = ::Struct.new(
      :accept_language,
      :product_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute provisioning_artifact_details
    #   <p>Information about the provisioning artifacts.</p>
    #
    #   @return [Array<ProvisioningArtifactDetail>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    ListProvisioningArtifactsOutput = ::Struct.new(
      :provisioning_artifact_details,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute access_level_filter
    #   <p>The access level to use to obtain results. The default is <code>User</code>.</p>
    #
    #   @return [AccessLevelFilter]
    #
    # @!attribute search_filter
    #   <p>The search filter to scope the results.</p>
    #
    #   @return [ListRecordHistorySearchFilter]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    ListRecordHistoryInput = ::Struct.new(
      :accept_language,
      :access_level_filter,
      :search_filter,
      :page_size,
      :page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute record_details
    #   <p>The records, in reverse chronological order.</p>
    #
    #   @return [Array<RecordDetail>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    ListRecordHistoryOutput = ::Struct.new(
      :record_details,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The search filter to use when listing history records.</p>
    #
    # @!attribute key
    #   <p>The filter key.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>product</code> - Filter results based on the specified product identifier.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>provisionedproduct</code> - Filter results based on the provisioned product identifier.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The filter value.</p>
    #
    #   @return [String]
    #
    ListRecordHistorySearchFilter = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tag_option_id
    #   <p>The TagOption identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Portfolio</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Product</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    ListResourcesForTagOptionInput = ::Struct.new(
      :tag_option_id,
      :resource_type,
      :page_size,
      :page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute resource_details
    #   <p>Information about the resources.</p>
    #
    #   @return [Array<ResourceDetail>]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    ListResourcesForTagOptionOutput = ::Struct.new(
      :resource_details,
      :page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute product_id
    #   <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    ListServiceActionsForProvisioningArtifactInput = ::Struct.new(
      :product_id,
      :provisioning_artifact_id,
      :page_size,
      :page_token,
      :accept_language,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute service_action_summaries
    #   <p>An object containing information about the self-service actions associated with the provisioning artifact.</p>
    #
    #   @return [Array<ServiceActionSummary>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    ListServiceActionsForProvisioningArtifactOutput = ::Struct.new(
      :service_action_summaries,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    ListServiceActionsInput = ::Struct.new(
      :accept_language,
      :page_size,
      :page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute service_action_summaries
    #   <p>An object containing information about the service actions associated with the provisioning artifact.</p>
    #
    #   @return [Array<ServiceActionSummary>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    ListServiceActionsOutput = ::Struct.new(
      :service_action_summaries,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute provisioned_product_id
    #   <p>The identifier of the provisioned product.</p>
    #
    #   @return [String]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    ListStackInstancesForProvisionedProductInput = ::Struct.new(
      :accept_language,
      :provisioned_product_id,
      :page_token,
      :page_size,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute stack_instances
    #   <p>List of stack instances.</p>
    #
    #   @return [Array<StackInstance>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    ListStackInstancesForProvisionedProductOutput = ::Struct.new(
      :stack_instances,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filters to use when listing TagOptions.</p>
    #
    # @!attribute key
    #   <p>The TagOption key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The TagOption value.</p>
    #
    #   @return [String]
    #
    # @!attribute active
    #   <p>The active state.</p>
    #
    #   @return [Boolean]
    #
    ListTagOptionsFilters = ::Struct.new(
      :key,
      :value,
      :active,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>The search filters. If no search filters are specified, the output includes all TagOptions.</p>
    #
    #   @return [ListTagOptionsFilters]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    ListTagOptionsInput = ::Struct.new(
      :filters,
      :page_size,
      :page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute tag_option_details
    #   <p>Information about the TagOptions.</p>
    #
    #   @return [Array<TagOptionDetail>]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    ListTagOptionsOutput = ::Struct.new(
      :tag_option_details,
      :page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation is not supported.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OperationNotSupportedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the organization node.</p>
    #
    # @!attribute type
    #   <p>The organization node type.</p>
    #
    #   Enum, one of: ["ORGANIZATION", "ORGANIZATIONAL_UNIT", "ACCOUNT"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The identifier of the organization node.</p>
    #
    #   @return [String]
    #
    OrganizationNode = ::Struct.new(
      :type,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OrganizationNodeType
    #
    module OrganizationNodeType
      # No documentation available.
      #
      ORGANIZATION = "ORGANIZATION"

      # No documentation available.
      #
      ORGANIZATIONAL_UNIT = "ORGANIZATIONAL_UNIT"

      # No documentation available.
      #
      ACCOUNT = "ACCOUNT"
    end

    # <p>The constraints that the administrator has put on the parameter.</p>
    #
    # @!attribute allowed_values
    #   <p>The values that the administrator has allowed for the parameter.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute allowed_pattern
    #   <p>A regular expression that represents the patterns that allow for <code>String</code> types. The pattern must match the entire parameter value provided.</p>
    #
    #   @return [String]
    #
    # @!attribute constraint_description
    #   <p>A string that explains a constraint when the constraint is violated. For example, without a constraint description, a parameter that has an allowed pattern of <code>[A-Za-z0-9]+</code> displays the following error message when the user specifies an invalid value:</p>
    #
    #            <p>
    #               <code>Malformed input-Parameter MyParameter must match pattern [A-Za-z0-9]+</code>
    #            </p>
    #
    #            <p>By adding a constraint description, such as must only contain letters (uppercase and lowercase) and numbers, you can display the following customized error message:</p>
    #
    #            <p>
    #               <code>Malformed input-Parameter MyParameter must only contain uppercase and lowercase letters and numbers.</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute max_length
    #   <p>An integer value that determines the largest number of characters you want to allow for <code>String</code> types. </p>
    #
    #   @return [String]
    #
    # @!attribute min_length
    #   <p>An integer value that determines the smallest number of characters you want to allow for <code>String</code> types.</p>
    #
    #   @return [String]
    #
    # @!attribute max_value
    #   <p>A numeric value that determines the largest numeric value you want to allow for <code>Number</code> types.</p>
    #
    #   @return [String]
    #
    # @!attribute min_value
    #   <p>A numeric value that determines the smallest numeric value you want to allow for <code>Number</code> types. </p>
    #
    #   @return [String]
    #
    ParameterConstraints = ::Struct.new(
      :allowed_values,
      :allowed_pattern,
      :constraint_description,
      :max_length,
      :min_length,
      :max_value,
      :min_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a portfolio.</p>
    #
    # @!attribute id
    #   <p>The portfolio identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN assigned to the portfolio.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name to use for display purposes.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the portfolio.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The UTC time stamp of the creation time.</p>
    #
    #   @return [Time]
    #
    # @!attribute provider_name
    #   <p>The name of the portfolio provider.</p>
    #
    #   @return [String]
    #
    PortfolioDetail = ::Struct.new(
      :id,
      :arn,
      :display_name,
      :description,
      :created_time,
      :provider_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the portfolio share.</p>
    #
    # @!attribute principal_id
    #   <p>The identifier of the recipient entity that received the portfolio share.
    #            The recipient entities can be one of the following:
    #         </p>
    #            <p>1. An external account.</p>
    #            <p>2. An organziation member account.</p>
    #            <p>3. An organzational unit (OU).</p>
    #            <p>4. The organization itself. (This shares with every account in the organization).</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the portfolio share.</p>
    #
    #   Enum, one of: ["ACCOUNT", "ORGANIZATION", "ORGANIZATIONAL_UNIT", "ORGANIZATION_MEMBER_ACCOUNT"]
    #
    #   @return [String]
    #
    # @!attribute accepted
    #   <p>Indicates whether the shared portfolio is imported by the recipient account. If the recipient is in an organization node, the share is automatically imported, and the field is always set to true.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute share_tag_options
    #   <p>Indicates whether TagOptions sharing is enabled or disabled for the portfolio share.</p>
    #
    #   @return [Boolean]
    #
    PortfolioShareDetail = ::Struct.new(
      :principal_id,
      :type,
      :accepted,
      :share_tag_options,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.accepted ||= false
        self.share_tag_options ||= false
      end

    end

    # Includes enum constants for PortfolioShareType
    #
    module PortfolioShareType
      # No documentation available.
      #
      IMPORTED = "IMPORTED"

      # No documentation available.
      #
      AWS_SERVICECATALOG = "AWS_SERVICECATALOG"

      # No documentation available.
      #
      AWS_ORGANIZATIONS = "AWS_ORGANIZATIONS"
    end

    # <p>Information about a principal.</p>
    #
    # @!attribute principal_arn
    #   <p>The ARN of the principal (IAM user, role, or group).</p>
    #
    #   @return [String]
    #
    # @!attribute principal_type
    #   <p>The principal type. The supported value is <code>IAM</code>.</p>
    #
    #   Enum, one of: ["IAM"]
    #
    #   @return [String]
    #
    Principal = ::Struct.new(
      :principal_arn,
      :principal_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PrincipalType
    #
    module PrincipalType
      # No documentation available.
      #
      IAM = "IAM"
    end

    # Includes enum constants for ProductSource
    #
    module ProductSource
      # No documentation available.
      #
      ACCOUNT = "ACCOUNT"
    end

    # Includes enum constants for ProductType
    #
    module ProductType
      # No documentation available.
      #
      CLOUD_FORMATION_TEMPLATE = "CLOUD_FORMATION_TEMPLATE"

      # No documentation available.
      #
      MARKETPLACE = "MARKETPLACE"
    end

    # <p>A single product view aggregation value/count pair, containing metadata about each
    #          product to which the calling user has access.</p>
    #
    # @!attribute value
    #   <p>The value of the product view aggregation.</p>
    #
    #   @return [String]
    #
    # @!attribute approximate_count
    #   <p>An approximate count of the products that match the value.</p>
    #
    #   @return [Integer]
    #
    ProductViewAggregationValue = ::Struct.new(
      :value,
      :approximate_count,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.approximate_count ||= 0
      end

    end

    # <p>Information about a product view.</p>
    #
    # @!attribute product_view_summary
    #   <p>Summary information about the product view.</p>
    #
    #   @return [ProductViewSummary]
    #
    # @!attribute status
    #   <p>The status of the product.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - The product is ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - Product creation has started; the product is not ready for use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - An action failed.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["AVAILABLE", "CREATING", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute product_arn
    #   <p>The ARN of the product.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The UTC time stamp of the creation time.</p>
    #
    #   @return [Time]
    #
    ProductViewDetail = ::Struct.new(
      :product_view_summary,
      :status,
      :product_arn,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProductViewFilterBy
    #
    module ProductViewFilterBy
      # No documentation available.
      #
      FullTextSearch = "FullTextSearch"

      # No documentation available.
      #
      Owner = "Owner"

      # No documentation available.
      #
      ProductType = "ProductType"

      # No documentation available.
      #
      SourceProductId = "SourceProductId"
    end

    # Includes enum constants for ProductViewSortBy
    #
    module ProductViewSortBy
      # No documentation available.
      #
      Title = "Title"

      # No documentation available.
      #
      VersionCount = "VersionCount"

      # No documentation available.
      #
      CreationDate = "CreationDate"
    end

    # <p>Summary information about a product view.</p>
    #
    # @!attribute id
    #   <p>The product view identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the product.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The owner of the product. Contact the product administrator for the significance of
    #            this value.</p>
    #
    #   @return [String]
    #
    # @!attribute short_description
    #   <p>Short description of the product.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The product type. Contact the product administrator for the significance of this
    #            value. If this value is <code>MARKETPLACE</code>, the product was created by AWS
    #            Marketplace.</p>
    #
    #   Enum, one of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE"]
    #
    #   @return [String]
    #
    # @!attribute distributor
    #   <p>The distributor of the product. Contact the product administrator for the
    #            significance of this value.</p>
    #
    #   @return [String]
    #
    # @!attribute has_default_path
    #   <p>Indicates whether the product has a default path.
    #            If the product does not have a default path, call <a>ListLaunchPaths</a>
    #            to disambiguate between paths. Otherwise, <a>ListLaunchPaths</a> is not
    #            required, and the output of <a>ProductViewSummary</a> can be used directly with
    #            <a>DescribeProvisioningParameters</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute support_email
    #   <p>The email contact information to obtain support for this Product.</p>
    #
    #   @return [String]
    #
    # @!attribute support_description
    #   <p>The description of the support for this Product.</p>
    #
    #   @return [String]
    #
    # @!attribute support_url
    #   <p>The URL information to obtain support for this Product.</p>
    #
    #   @return [String]
    #
    ProductViewSummary = ::Struct.new(
      :id,
      :product_id,
      :name,
      :owner,
      :short_description,
      :type,
      :distributor,
      :has_default_path,
      :support_email,
      :support_description,
      :support_url,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.has_default_path ||= false
      end

    end

    # Includes enum constants for PropertyKey
    #
    module PropertyKey
      # No documentation available.
      #
      Owner = "OWNER"

      # No documentation available.
      #
      LaunchRole = "LAUNCH_ROLE"
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier. You must provide the name or ID, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute product_name
    #   <p>The name of the product. You must provide the name or ID, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. You must provide the name or ID, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_name
    #   <p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute path_id
    #   <p>The path identifier of the product. This value is optional if the product
    #            has a default path, and required if the product has more than one path.
    #            To list the paths for a product, use <a>ListLaunchPaths</a>. You must provide the name or ID, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute path_name
    #   <p>The name of the path. You must provide the name or ID, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioned_product_name
    #   <p>A user-friendly name for the provisioned product. This value must be
    #            unique for the AWS account and cannot be updated after the product is provisioned.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_parameters
    #   <p>Parameters specified by the administrator that are required for provisioning the
    #            product.</p>
    #
    #   @return [Array<ProvisioningParameter>]
    #
    # @!attribute provisioning_preferences
    #   <p>An object that contains information about the provisioning preferences for a stack set.</p>
    #
    #   @return [ProvisioningPreferences]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute notification_arns
    #   <p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related
    #            events.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute provision_token
    #   <p>An idempotency token that uniquely identifies the provisioning request.</p>
    #
    #   @return [String]
    #
    ProvisionProductInput = ::Struct.new(
      :accept_language,
      :product_id,
      :product_name,
      :provisioning_artifact_id,
      :provisioning_artifact_name,
      :path_id,
      :path_name,
      :provisioned_product_name,
      :provisioning_parameters,
      :provisioning_preferences,
      :tags,
      :notification_arns,
      :provision_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute record_detail
    #   <p>Information about the result of provisioning the product.</p>
    #
    #   @return [RecordDetail]
    #
    ProvisionProductOutput = ::Struct.new(
      :record_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a provisioned product.</p>
    #
    # @!attribute name
    #   <p>The user-friendly name of the provisioned product.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the provisioned product.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of provisioned product. The supported values are <code>CFN_STACK</code> and <code>CFN_STACKSET</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The identifier of the provisioned product.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the provisioned product.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - Stable state, ready to perform any operation. The most
    #                  recent operation succeeded and completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNDER_CHANGE</code> - Transitive state. Operations performed might not have valid results.
    #                  Wait for an <code>AVAILABLE</code> status before performing operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TAINTED</code> - Stable state, ready to perform any operation. The stack has
    #                  completed the requested operation but is not exactly what was requested. For example, a
    #                  request to update to a new version failed and the stack rolled back to the current version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code> - An unexpected error occurred. The provisioned product exists but the stack is not running.
    #                  For example, CloudFormation received a parameter value that was not valid and could not launch the stack.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PLAN_IN_PROGRESS</code> - Transitive state. The plan operations were performed to provision a new product,
    #                   but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an <code>AVAILABLE</code> status before performing operations.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["AVAILABLE", "UNDER_CHANGE", "TAINTED", "ERROR", "PLAN_IN_PROGRESS"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The current status message of the provisioned product.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The UTC time stamp of the creation time.</p>
    #
    #   @return [Time]
    #
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #
    #   @return [String]
    #
    # @!attribute last_record_id
    #   <p>The record identifier of the last request performed on this provisioned product.</p>
    #
    #   @return [String]
    #
    # @!attribute last_provisioning_record_id
    #   <p>The record identifier of the last request performed on this provisioned product of the following types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                  ProvisionedProduct
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  UpdateProvisionedProduct
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  ExecuteProvisionedProductPlan
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  TerminateProvisionedProduct
    #               </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute last_successful_provisioning_record_id
    #   <p>The record identifier of the last successful request performed on this provisioned product of the following types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                  ProvisionedProduct
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  UpdateProvisionedProduct
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  ExecuteProvisionedProductPlan
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  TerminateProvisionedProduct
    #               </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute physical_id
    #   <p>The assigned identifier for the resource, such as an EC2 instance ID or an S3 bucket name.</p>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute product_name
    #   <p>The name of the product.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_name
    #   <p>The name of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM user.</p>
    #
    #   @return [String]
    #
    # @!attribute user_arn_session
    #   <p>The ARN of the IAM user in the session. This ARN might contain a session ID.</p>
    #
    #   @return [String]
    #
    ProvisionedProductAttribute = ::Struct.new(
      :name,
      :arn,
      :type,
      :id,
      :status,
      :status_message,
      :created_time,
      :idempotency_token,
      :last_record_id,
      :last_provisioning_record_id,
      :last_successful_provisioning_record_id,
      :tags,
      :physical_id,
      :product_id,
      :product_name,
      :provisioning_artifact_id,
      :provisioning_artifact_name,
      :user_arn,
      :user_arn_session,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a provisioned product.</p>
    #
    # @!attribute name
    #   <p>The user-friendly name of the provisioned product.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the provisioned product.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of provisioned product. The supported values are <code>CFN_STACK</code> and <code>CFN_STACKSET</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The identifier of the provisioned product.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the provisioned product.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - Stable state, ready to perform any operation. The most
    #                  recent operation succeeded and completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNDER_CHANGE</code> - Transitive state. Operations performed might not have valid results.
    #                  Wait for an <code>AVAILABLE</code> status before performing operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TAINTED</code> - Stable state, ready to perform any operation. The stack has
    #                  completed the requested operation but is not exactly what was requested. For example, a
    #                  request to update to a new version failed and the stack rolled back to the current version.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR</code> - An unexpected error occurred. The provisioned product exists but the stack is not running.
    #                  For example, CloudFormation received a parameter value that was not valid and could not launch the stack.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PLAN_IN_PROGRESS</code> - Transitive state. The plan operations were performed to provision a new product,
    #                  but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an <code>AVAILABLE</code> status before performing operations.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["AVAILABLE", "UNDER_CHANGE", "TAINTED", "ERROR", "PLAN_IN_PROGRESS"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>The current status message of the provisioned product.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The UTC time stamp of the creation time.</p>
    #
    #   @return [Time]
    #
    # @!attribute idempotency_token
    #   <p>A unique identifier that you provide to ensure idempotency. If multiple requests differ only by the idempotency token,
    #     the same response is returned for each repeated request.</p>
    #
    #   @return [String]
    #
    # @!attribute last_record_id
    #   <p>The record identifier of the last request performed on this provisioned product.</p>
    #
    #   @return [String]
    #
    # @!attribute last_provisioning_record_id
    #   <p>The record identifier of the last request performed on this provisioned product of the following types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                  ProvisionedProduct
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  UpdateProvisionedProduct
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  ExecuteProvisionedProductPlan
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  TerminateProvisionedProduct
    #               </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute last_successful_provisioning_record_id
    #   <p>The record identifier of the last successful request performed on this provisioned product of the following types:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                  ProvisionedProduct
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  UpdateProvisionedProduct
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  ExecuteProvisionedProductPlan
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                  TerminateProvisionedProduct
    #               </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_role_arn
    #   <p>The ARN of the launch role associated with the provisioned product.</p>
    #
    #   @return [String]
    #
    ProvisionedProductDetail = ::Struct.new(
      :name,
      :arn,
      :type,
      :id,
      :status,
      :status_message,
      :created_time,
      :idempotency_token,
      :last_record_id,
      :last_provisioning_record_id,
      :last_successful_provisioning_record_id,
      :product_id,
      :provisioning_artifact_id,
      :launch_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a plan.</p>
    #
    # @!attribute created_time
    #   <p>The UTC time stamp of the creation time.</p>
    #
    #   @return [Time]
    #
    # @!attribute path_id
    #   <p>The path identifier of the product. This value is optional if the product
    #            has a default path, and required if the product has more than one path.
    #            To list the paths for a product, use <a>ListLaunchPaths</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute plan_name
    #   <p>The name of the plan.</p>
    #
    #   @return [String]
    #
    # @!attribute plan_id
    #   <p>The plan identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute provision_product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute provision_product_name
    #   <p>The user-friendly name of the provisioned product.</p>
    #
    #   @return [String]
    #
    # @!attribute plan_type
    #   <p>The plan type.</p>
    #
    #   Enum, one of: ["CLOUDFORMATION"]
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_SUCCESS", "CREATE_FAILED", "EXECUTE_IN_PROGRESS", "EXECUTE_SUCCESS", "EXECUTE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute updated_time
    #   <p>The time when the plan was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute notification_arns
    #   <p>Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related
    #            events.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute provisioning_parameters
    #   <p>Parameters specified by the administrator that are required for provisioning the
    #            product.</p>
    #
    #   @return [Array<UpdateProvisioningParameter>]
    #
    # @!attribute tags
    #   <p>One or more tags.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute status_message
    #   <p>The status message.</p>
    #
    #   @return [String]
    #
    ProvisionedProductPlanDetails = ::Struct.new(
      :created_time,
      :path_id,
      :product_id,
      :plan_name,
      :plan_id,
      :provision_product_id,
      :provision_product_name,
      :plan_type,
      :provisioning_artifact_id,
      :status,
      :updated_time,
      :notification_arns,
      :provisioning_parameters,
      :tags,
      :status_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProvisionedProductPlanStatus
    #
    module ProvisionedProductPlanStatus
      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      CREATE_SUCCESS = "CREATE_SUCCESS"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      EXECUTE_IN_PROGRESS = "EXECUTE_IN_PROGRESS"

      # No documentation available.
      #
      EXECUTE_SUCCESS = "EXECUTE_SUCCESS"

      # No documentation available.
      #
      EXECUTE_FAILED = "EXECUTE_FAILED"
    end

    # <p>Summary information about a plan.</p>
    #
    # @!attribute plan_name
    #   <p>The name of the plan.</p>
    #
    #   @return [String]
    #
    # @!attribute plan_id
    #   <p>The plan identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute provision_product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute provision_product_name
    #   <p>The user-friendly name of the provisioned product.</p>
    #
    #   @return [String]
    #
    # @!attribute plan_type
    #   <p>The plan type.</p>
    #
    #   Enum, one of: ["CLOUDFORMATION"]
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    ProvisionedProductPlanSummary = ::Struct.new(
      :plan_name,
      :plan_id,
      :provision_product_id,
      :provision_product_name,
      :plan_type,
      :provisioning_artifact_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProvisionedProductPlanType
    #
    module ProvisionedProductPlanType
      # No documentation available.
      #
      CLOUDFORMATION = "CLOUDFORMATION"
    end

    # Includes enum constants for ProvisionedProductStatus
    #
    module ProvisionedProductStatus
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      UNDER_CHANGE = "UNDER_CHANGE"

      # No documentation available.
      #
      TAINTED = "TAINTED"

      # No documentation available.
      #
      ERROR = "ERROR"

      # No documentation available.
      #
      PLAN_IN_PROGRESS = "PLAN_IN_PROGRESS"
    end

    # Includes enum constants for ProvisionedProductViewFilterBy
    #
    module ProvisionedProductViewFilterBy
      # No documentation available.
      #
      SearchQuery = "SearchQuery"
    end

    # <p>Information about a provisioning artifact. A provisioning artifact is also known as a product version.</p>
    #
    # @!attribute id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The UTC time stamp of the creation time.</p>
    #
    #   @return [Time]
    #
    # @!attribute guidance
    #   <p>Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.</p>
    #
    #   Enum, one of: ["DEFAULT", "DEPRECATED"]
    #
    #   @return [String]
    #
    ProvisioningArtifact = ::Struct.new(
      :id,
      :name,
      :description,
      :created_time,
      :guidance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a provisioning artifact (also known as a version) for a product.</p>
    #
    # @!attribute id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of provisioning artifact.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CLOUD_FORMATION_TEMPLATE</code> - AWS CloudFormation template</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MARKETPLACE_AMI</code> - AWS Marketplace AMI</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MARKETPLACE_CAR</code> - AWS Marketplace Clusters and AWS Resources</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The UTC time stamp of the creation time.</p>
    #
    #   @return [Time]
    #
    # @!attribute active
    #   <p>Indicates whether the product version is active.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute guidance
    #   <p>Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.</p>
    #
    #   Enum, one of: ["DEFAULT", "DEPRECATED"]
    #
    #   @return [String]
    #
    ProvisioningArtifactDetail = ::Struct.new(
      :id,
      :name,
      :description,
      :type,
      :created_time,
      :active,
      :guidance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProvisioningArtifactGuidance
    #
    module ProvisioningArtifactGuidance
      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      DEPRECATED = "DEPRECATED"
    end

    # <p>Provisioning artifact output.</p>
    #
    # @!attribute key
    #   <p>The provisioning artifact output key.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Description of the provisioning artifact output key.</p>
    #
    #   @return [String]
    #
    ProvisioningArtifactOutput = ::Struct.new(
      :key,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a parameter used to provision a product.</p>
    #
    # @!attribute parameter_key
    #   <p>The parameter key.</p>
    #
    #   @return [String]
    #
    # @!attribute default_value
    #   <p>The default value.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_type
    #   <p>The parameter type.</p>
    #
    #   @return [String]
    #
    # @!attribute is_no_echo
    #   <p>If this value is true, the value for this parameter is obfuscated from view when the
    #            parameter is retrieved. This parameter is used to hide sensitive information.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute description
    #   <p>The description of the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_constraints
    #   <p>Constraints that the administrator has put on a parameter.</p>
    #
    #   @return [ParameterConstraints]
    #
    ProvisioningArtifactParameter = ::Struct.new(
      :parameter_key,
      :default_value,
      :parameter_type,
      :is_no_echo,
      :description,
      :parameter_constraints,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_no_echo ||= false
      end

    end

    # <p>The user-defined preferences that will be applied during product provisioning, unless overridden by <code>ProvisioningPreferences</code> or <code>UpdateProvisioningPreferences</code>.</p>
    #          <p>For more information on maximum concurrent accounts and failure tolerance, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options">Stack set operation options</a> in the <i>AWS CloudFormation User Guide</i>.</p>
    #
    # @!attribute stack_set_accounts
    #   <p>One or more AWS accounts where stack instances are deployed from the stack set. These accounts can be scoped in <code>ProvisioningPreferences$StackSetAccounts</code> and <code>UpdateProvisioningPreferences$StackSetAccounts</code>.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute stack_set_regions
    #   <p>One or more AWS Regions where stack instances are deployed from the stack set. These regions can be scoped in <code>ProvisioningPreferences$StackSetRegions</code> and <code>UpdateProvisioningPreferences$StackSetRegions</code>.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #
    #   @return [Array<String>]
    #
    ProvisioningArtifactPreferences = ::Struct.new(
      :stack_set_accounts,
      :stack_set_regions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a provisioning artifact (also known as a version) for a product.</p>
    #
    # @!attribute name
    #   <p>The name of the provisioning artifact (for example, v1 v2beta). No spaces are allowed.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the provisioning artifact, including how it differs from the previous provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute info
    #   <p>Specify the template source with one of the following options, but not both.
    #            Keys accepted: [ <code>LoadTemplateFromURL</code>, <code>ImportFromPhysicalId</code> ]</p>
    #            <p>The URL of the CloudFormation template in Amazon S3. Specify the URL in JSON format as follows:</p>
    #            <p>
    #               <code>"LoadTemplateFromURL": "https://s3.amazonaws.com/cf-templates-ozkq9d3hgiq2-us-east-1/..."</code>
    #            </p>
    #            <p>
    #               <code>ImportFromPhysicalId</code>: The physical id of the resource that contains the
    #            template. Currently only supports CloudFormation stack arn. Specify the physical id in JSON
    #            format as follows: <code>ImportFromPhysicalId: “arn:aws:cloudformation:[us-east-1]:[accountId]:stack/[StackName]/[resourceId]</code>
    #            </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute type
    #   <p>The type of provisioning artifact.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CLOUD_FORMATION_TEMPLATE</code> - AWS CloudFormation template</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MARKETPLACE_AMI</code> - AWS Marketplace AMI</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MARKETPLACE_CAR</code> - AWS Marketplace Clusters and AWS Resources</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR"]
    #
    #   @return [String]
    #
    # @!attribute disable_template_validation
    #   <p>If set to true, AWS Service Catalog stops validating the specified provisioning artifact even if it is invalid.</p>
    #
    #   @return [Boolean]
    #
    ProvisioningArtifactProperties = ::Struct.new(
      :name,
      :description,
      :info,
      :type,
      :disable_template_validation,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.disable_template_validation ||= false
      end

    end

    # Includes enum constants for ProvisioningArtifactPropertyName
    #
    module ProvisioningArtifactPropertyName
      # No documentation available.
      #
      Id = "Id"
    end

    # <p>Summary information about a provisioning artifact (also known as a version) for a product.</p>
    #
    # @!attribute id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The UTC time stamp of the creation time.</p>
    #
    #   @return [Time]
    #
    # @!attribute provisioning_artifact_metadata
    #   <p>The metadata for the provisioning artifact. This is used with AWS Marketplace products.</p>
    #
    #   @return [Hash<String, String>]
    #
    ProvisioningArtifactSummary = ::Struct.new(
      :id,
      :name,
      :description,
      :created_time,
      :provisioning_artifact_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProvisioningArtifactType
    #
    module ProvisioningArtifactType
      # No documentation available.
      #
      CLOUD_FORMATION_TEMPLATE = "CLOUD_FORMATION_TEMPLATE"

      # No documentation available.
      #
      MARKETPLACE_AMI = "MARKETPLACE_AMI"

      # No documentation available.
      #
      MARKETPLACE_CAR = "MARKETPLACE_CAR"
    end

    # <p>An object that contains summary information about a product view and a provisioning artifact.</p>
    #
    # @!attribute product_view_summary
    #   <p>Summary information about a product view.</p>
    #
    #   @return [ProductViewSummary]
    #
    # @!attribute provisioning_artifact
    #   <p>Information about a provisioning artifact. A provisioning artifact is also known as a product version.</p>
    #
    #   @return [ProvisioningArtifact]
    #
    ProvisioningArtifactView = ::Struct.new(
      :product_view_summary,
      :provisioning_artifact,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a parameter used to provision a product.</p>
    #
    # @!attribute key
    #   <p>The parameter key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The parameter value.</p>
    #
    #   @return [String]
    #
    ProvisioningParameter = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The user-defined preferences that will be applied when updating a provisioned
    #          product. Not all preferences are applicable to all provisioned product type</p>
    #          <p>One or more AWS accounts that will have access to the provisioned product.</p>
    #          <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #          <p>The AWS accounts specified should be within the list of accounts in the
    #             <code>STACKSET</code> constraint. To get the list of accounts in the
    #             <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code>
    #          operation.</p>
    #          <p>If no values are specified, the default value is all accounts from the
    #             <code>STACKSET</code> constraint.</p>
    #
    # @!attribute stack_set_accounts
    #   <p>One or more AWS accounts where the provisioned product will be available.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>The specified accounts should be within the list of accounts from the <code>STACKSET</code> constraint. To get the list of accounts in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p>
    #            <p>If no values are specified, the default value is all acounts from the <code>STACKSET</code> constraint.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute stack_set_regions
    #   <p>One or more AWS Regions where the provisioned product will be available.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>The specified regions should be within the list of regions from the <code>STACKSET</code> constraint. To get the list of regions in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p>
    #            <p>If no values are specified, the default value is all regions from the <code>STACKSET</code> constraint.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute stack_set_failure_tolerance_count
    #   <p>The number of accounts, per region, for which this operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p>
    #            <p>The default value is <code>0</code> if no value is specified.</p>
    #
    #   @return [Integer]
    #
    # @!attribute stack_set_failure_tolerance_percentage
    #   <p>The percentage of accounts, per region, for which this stack operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions.</p>
    #            <p>When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p>
    #
    #   @return [Integer]
    #
    # @!attribute stack_set_max_concurrency_count
    #   <p>The maximum number of accounts in which to perform this operation at one time. This is dependent on the value of <code>StackSetFailureToleranceCount</code>. <code>StackSetMaxConcurrentCount</code> is at most one more than the <code>StackSetFailureToleranceCount</code>.</p>
    #            <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>
    #
    #   @return [Integer]
    #
    # @!attribute stack_set_max_concurrency_percentage
    #   <p>The maximum percentage of accounts in which to perform this operation at one time.</p>
    #            <p>When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, AWS Service Catalog sets the number as <code>1</code> instead.</p>
    #            <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>
    #
    #   @return [Integer]
    #
    ProvisioningPreferences = ::Struct.new(
      :stack_set_accounts,
      :stack_set_regions,
      :stack_set_failure_tolerance_count,
      :stack_set_failure_tolerance_percentage,
      :stack_set_max_concurrency_count,
      :stack_set_max_concurrency_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a request operation.</p>
    #
    # @!attribute record_id
    #   <p>The identifier of the record.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioned_product_name
    #   <p>The user-friendly name of the provisioned product.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the provisioned product.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATED</code> - The request was created but the operation has not started.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code> - The requested operation is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS_IN_ERROR</code> - The provisioned product is under change but the
    #               requested operation failed and some remediation is occurring. For example, a rollback.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code> - The requested operation has successfully completed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - The requested operation has unsuccessfully completed.
    #               Investigate using the error messages returned.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The UTC time stamp of the creation time.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_time
    #   <p>The time when the record was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute provisioned_product_type
    #   <p>The type of provisioned product. The supported values are <code>CFN_STACK</code> and <code>CFN_STACKSET</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute record_type
    #   <p>The record type.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PROVISION_PRODUCT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_PROVISIONED_PRODUCT</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TERMINATE_PROVISIONED_PRODUCT</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute provisioned_product_id
    #   <p>The identifier of the provisioned product.</p>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute path_id
    #   <p>The path identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute record_errors
    #   <p>The errors that occurred.</p>
    #
    #   @return [Array<RecordError>]
    #
    # @!attribute record_tags
    #   <p>One or more tags.</p>
    #
    #   @return [Array<RecordTag>]
    #
    # @!attribute launch_role_arn
    #   <p>The ARN of the launch role associated with the provisioned product.</p>
    #
    #   @return [String]
    #
    RecordDetail = ::Struct.new(
      :record_id,
      :provisioned_product_name,
      :status,
      :created_time,
      :updated_time,
      :provisioned_product_type,
      :record_type,
      :provisioned_product_id,
      :product_id,
      :provisioning_artifact_id,
      :path_id,
      :record_errors,
      :record_tags,
      :launch_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The error code and description resulting from an operation.</p>
    #
    # @!attribute code
    #   <p>The numeric value of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the error.</p>
    #
    #   @return [String]
    #
    RecordError = ::Struct.new(
      :code,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for the product created as the result of a request. For example, the output for
    #          a CloudFormation-backed product that creates an S3 bucket would include the S3 bucket URL.</p>
    #
    # @!attribute output_key
    #   <p>The output key.</p>
    #
    #   @return [String]
    #
    # @!attribute output_value
    #   <p>The output value.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the output.</p>
    #
    #   @return [String]
    #
    RecordOutput = ::Struct.new(
      :output_key,
      :output_value,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RecordStatus
    #
    module RecordStatus
      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      IN_PROGRESS_IN_ERROR = "IN_PROGRESS_IN_ERROR"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Information about a tag, which is a key-value pair.</p>
    #
    # @!attribute key
    #   <p>The key for this tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value for this tag.</p>
    #
    #   @return [String]
    #
    RecordTag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute portfolio_share_type
    #   <p>The type of shared portfolios to reject. The default is to reject imported portfolios.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AWS_ORGANIZATIONS</code> - Reject portfolios shared by the management account of your
    #                  organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMPORTED</code> - Reject imported portfolios.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_SERVICECATALOG</code> - Not supported. (Throws ResourceNotFoundException.)</p>
    #               </li>
    #            </ul>
    #            <p>For example, <code>aws servicecatalog reject-portfolio-share --portfolio-id "port-2qwzkwxt3y5fk" --portfolio-share-type AWS_ORGANIZATIONS</code>
    #            </p>
    #
    #   Enum, one of: ["IMPORTED", "AWS_SERVICECATALOG", "AWS_ORGANIZATIONS"]
    #
    #   @return [String]
    #
    RejectPortfolioShareInput = ::Struct.new(
      :accept_language,
      :portfolio_id,
      :portfolio_share_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RejectPortfolioShareOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Replacement
    #
    module Replacement
      # No documentation available.
      #
      TRUE = "TRUE"

      # No documentation available.
      #
      FALSE = "FALSE"

      # No documentation available.
      #
      CONDITIONAL = "CONDITIONAL"
    end

    # Includes enum constants for RequiresRecreation
    #
    module RequiresRecreation
      # No documentation available.
      #
      NEVER = "NEVER"

      # No documentation available.
      #
      CONDITIONALLY = "CONDITIONALLY"

      # No documentation available.
      #
      ALWAYS = "ALWAYS"
    end

    # Includes enum constants for ResourceAttribute
    #
    module ResourceAttribute
      # No documentation available.
      #
      PROPERTIES = "PROPERTIES"

      # No documentation available.
      #
      METADATA = "METADATA"

      # No documentation available.
      #
      CREATIONPOLICY = "CREATIONPOLICY"

      # No documentation available.
      #
      UPDATEPOLICY = "UPDATEPOLICY"

      # No documentation available.
      #
      DELETIONPOLICY = "DELETIONPOLICY"

      # No documentation available.
      #
      TAGS = "TAGS"
    end

    # <p>Information about a resource change that will occur when a plan is executed.</p>
    #
    # @!attribute action
    #   <p>The change action.</p>
    #
    #   Enum, one of: ["ADD", "MODIFY", "REMOVE"]
    #
    #   @return [String]
    #
    # @!attribute logical_resource_id
    #   <p>The ID of the resource, as defined in the CloudFormation template.</p>
    #
    #   @return [String]
    #
    # @!attribute physical_resource_id
    #   <p>The ID of the resource, if it was already created.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource.</p>
    #
    #   @return [String]
    #
    # @!attribute replacement
    #   <p>If the change type is <code>Modify</code>, indicates whether the existing resource
    #            is deleted and replaced with a new one.</p>
    #
    #   Enum, one of: ["TRUE", "FALSE", "CONDITIONAL"]
    #
    #   @return [String]
    #
    # @!attribute scope
    #   <p>The change scope.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute details
    #   <p>Information about the resource changes.</p>
    #
    #   @return [Array<ResourceChangeDetail>]
    #
    ResourceChange = ::Struct.new(
      :action,
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :replacement,
      :scope,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a change to a resource attribute.</p>
    #
    # @!attribute target
    #   <p>Information about the resource attribute to be modified.</p>
    #
    #   @return [ResourceTargetDefinition]
    #
    # @!attribute evaluation
    #   <p>For static evaluations, the value of the resource attribute will change and the new value is known.
    #            For dynamic evaluations, the value might change, and any new value will be determined when the plan is updated.</p>
    #
    #   Enum, one of: ["STATIC", "DYNAMIC"]
    #
    #   @return [String]
    #
    # @!attribute causing_entity
    #   <p>The ID of the entity that caused the change.</p>
    #
    #   @return [String]
    #
    ResourceChangeDetail = ::Struct.new(
      :target,
      :evaluation,
      :causing_entity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a resource.</p>
    #
    # @!attribute id
    #   <p>The identifier of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The creation time of the resource.</p>
    #
    #   @return [Time]
    #
    ResourceDetail = ::Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource that is currently in use. Ensure that the resource is not in use and retry the operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource was not found.</p>
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

    # <p>Information about a change to a resource attribute.</p>
    #
    # @!attribute attribute
    #   <p>The attribute to be changed.</p>
    #
    #   Enum, one of: ["PROPERTIES", "METADATA", "CREATIONPOLICY", "UPDATEPOLICY", "DELETIONPOLICY", "TAGS"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>If the attribute is <code>Properties</code>, the value is the name of the property.
    #            Otherwise, the value is null.</p>
    #
    #   @return [String]
    #
    # @!attribute requires_recreation
    #   <p>If the attribute is <code>Properties</code>, indicates whether a change to this property
    #            causes the resource to be re-created.</p>
    #
    #   Enum, one of: ["NEVER", "CONDITIONALLY", "ALWAYS"]
    #
    #   @return [String]
    #
    ResourceTargetDefinition = ::Struct.new(
      :attribute,
      :name,
      :requires_recreation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute access_level_filter
    #   <p>The access level to use to obtain results. The default is <code>User</code>.</p>
    #
    #   @return [AccessLevelFilter]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    ScanProvisionedProductsInput = ::Struct.new(
      :accept_language,
      :access_level_filter,
      :page_size,
      :page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute provisioned_products
    #   <p>Information about the provisioned products.</p>
    #
    #   @return [Array<ProvisionedProductDetail>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    ScanProvisionedProductsOutput = ::Struct.new(
      :provisioned_products,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute portfolio_id
    #   <p>The portfolio identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>The search filters. If no search filters are specified, the output includes all products
    #            to which the administrator has access.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute sort_by
    #   <p>The sort field. If no value is specified, the results are not sorted.</p>
    #
    #   Enum, one of: ["Title", "VersionCount", "CreationDate"]
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>The sort order. If no value is specified, the results are not sorted.</p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute product_source
    #   <p>Access level of the source of the product.</p>
    #
    #   Enum, one of: ["ACCOUNT"]
    #
    #   @return [String]
    #
    SearchProductsAsAdminInput = ::Struct.new(
      :accept_language,
      :portfolio_id,
      :filters,
      :sort_by,
      :sort_order,
      :page_token,
      :page_size,
      :product_source,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute product_view_details
    #   <p>Information about the product views.</p>
    #
    #   @return [Array<ProductViewDetail>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    SearchProductsAsAdminOutput = ::Struct.new(
      :product_view_details,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>The search filters. If no search filters are specified, the output includes
    #            all products to which the caller has access.</p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute sort_by
    #   <p>The sort field. If no value is specified, the results are not sorted.</p>
    #
    #   Enum, one of: ["Title", "VersionCount", "CreationDate"]
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>The sort order. If no value is specified, the results are not sorted.</p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    SearchProductsInput = ::Struct.new(
      :accept_language,
      :filters,
      :page_size,
      :sort_by,
      :sort_order,
      :page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute product_view_summaries
    #   <p>Information about the product views.</p>
    #
    #   @return [Array<ProductViewSummary>]
    #
    # @!attribute product_view_aggregations
    #   <p>The product view aggregations.</p>
    #
    #   @return [Hash<String, Array<ProductViewAggregationValue>>]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    SearchProductsOutput = ::Struct.new(
      :product_view_summaries,
      :product_view_aggregations,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute access_level_filter
    #   <p>The access level to use to obtain results. The default is <code>User</code>.</p>
    #
    #   @return [AccessLevelFilter]
    #
    # @!attribute filters
    #   <p>The search filters.</p>
    #            <p>When the key is <code>SearchQuery</code>, the searchable fields are <code>arn</code>,
    #            <code>createdTime</code>, <code>id</code>, <code>lastRecordId</code>,
    #            <code>idempotencyToken</code>, <code>name</code>, <code>physicalId</code>, <code>productId</code>,
    #            <code>provisioningArtifact</code>, <code>type</code>, <code>status</code>,
    #            <code>tags</code>, <code>userArn</code>, <code>userArnSession</code>, <code>lastProvisioningRecordId</code>, <code>lastSuccessfulProvisioningRecordId</code>,
    #            <code>productName</code>, and <code>provisioningArtifactName</code>.</p>
    #            <p>Example: <code>"SearchQuery":["status:AVAILABLE"]</code>
    #            </p>
    #
    #   @return [Hash<String, Array<String>>]
    #
    # @!attribute sort_by
    #   <p>The sort field. If no value is specified, the results are not sorted. The valid values are <code>arn</code>, <code>id</code>, <code>name</code>,
    #            and <code>lastRecordId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>The sort order. If no value is specified, the results are not sorted.</p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute page_size
    #   <p>The maximum number of items to return with this call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute page_token
    #   <p>The page token for the next set of results. To retrieve the first set of results, use null.</p>
    #
    #   @return [String]
    #
    SearchProvisionedProductsInput = ::Struct.new(
      :accept_language,
      :access_level_filter,
      :filters,
      :sort_by,
      :sort_order,
      :page_size,
      :page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.page_size ||= 0
      end

    end

    # @!attribute provisioned_products
    #   <p>Information about the provisioned products.</p>
    #
    #   @return [Array<ProvisionedProductAttribute>]
    #
    # @!attribute total_results_count
    #   <p>The number of provisioned products found.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_page_token
    #   <p>The page token to use to retrieve the next set of results. If there are no additional results, this value is null.</p>
    #
    #   @return [String]
    #
    SearchProvisionedProductsOutput = ::Struct.new(
      :provisioned_products,
      :total_results_count,
      :next_page_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.total_results_count ||= 0
      end

    end

    # <p>A self-service action association consisting of the Action ID, the Product ID, and the Provisioning Artifact ID.</p>
    #
    # @!attribute service_action_id
    #   <p>The self-service action identifier. For example, <code>act-fs7abcd89wxyz</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier. For example, <code>prod-abcdzk7xy33qa</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact. For example, <code>pa-4abcdjnxjj6ne</code>.</p>
    #
    #   @return [String]
    #
    ServiceActionAssociation = ::Struct.new(
      :service_action_id,
      :product_id,
      :provisioning_artifact_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServiceActionAssociationErrorCode
    #
    module ServiceActionAssociationErrorCode
      # No documentation available.
      #
      DuplicateResourceException = "DUPLICATE_RESOURCE"

      # No documentation available.
      #
      InternalFailure = "INTERNAL_FAILURE"

      # No documentation available.
      #
      LimitExceededException = "LIMIT_EXCEEDED"

      # No documentation available.
      #
      ResourceNotFoundException = "RESOURCE_NOT_FOUND"

      # No documentation available.
      #
      ThrottlingException = "THROTTLING"
    end

    # Includes enum constants for ServiceActionDefinitionKey
    #
    module ServiceActionDefinitionKey
      # No documentation available.
      #
      Name = "Name"

      # No documentation available.
      #
      Version = "Version"

      # No documentation available.
      #
      AssumeRole = "AssumeRole"

      # No documentation available.
      #
      Parameters = "Parameters"
    end

    # Includes enum constants for ServiceActionDefinitionType
    #
    module ServiceActionDefinitionType
      # No documentation available.
      #
      SsmAutomation = "SSM_AUTOMATION"
    end

    # <p>An object containing detailed information about the self-service action.</p>
    #
    # @!attribute service_action_summary
    #   <p>Summary information about the self-service action.</p>
    #
    #   @return [ServiceActionSummary]
    #
    # @!attribute definition
    #   <p>A map that defines the self-service action.</p>
    #
    #   @return [Hash<String, String>]
    #
    ServiceActionDetail = ::Struct.new(
      :service_action_summary,
      :definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detailed information about the self-service action.</p>
    #
    # @!attribute id
    #   <p>The self-service action identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The self-service action name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The self-service action description.</p>
    #
    #   @return [String]
    #
    # @!attribute definition_type
    #   <p>The self-service action definition type. For example, <code>SSM_AUTOMATION</code>.</p>
    #
    #   Enum, one of: ["SSM_AUTOMATION"]
    #
    #   @return [String]
    #
    ServiceActionSummary = ::Struct.new(
      :id,
      :name,
      :description,
      :definition_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the portfolio share operation.</p>
    #
    # @!attribute successful_shares
    #   <p>List of accounts for whom the operation succeeded.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute share_errors
    #   <p>List of errors.</p>
    #
    #   @return [Array<ShareError>]
    #
    ShareDetails = ::Struct.new(
      :successful_shares,
      :share_errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Errors that occurred during the portfolio share operation.</p>
    #
    # @!attribute accounts
    #   <p>List of accounts impacted by the error.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute message
    #   <p>Information about the error.</p>
    #
    #   @return [String]
    #
    # @!attribute error
    #   <p>Error type that happened when processing the operation.</p>
    #
    #   @return [String]
    #
    ShareError = ::Struct.new(
      :accounts,
      :message,
      :error,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ShareStatus
    #
    module ShareStatus
      # No documentation available.
      #
      NOT_STARTED = "NOT_STARTED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      COMPLETED_WITH_ERRORS = "COMPLETED_WITH_ERRORS"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # Includes enum constants for SortOrder
    #
    module SortOrder
      # No documentation available.
      #
      ASCENDING = "ASCENDING"

      # No documentation available.
      #
      DESCENDING = "DESCENDING"
    end

    # <p>An AWS CloudFormation stack, in a specific account and region, that's part of a stack set operation. A stack instance is a reference to an attempted or actual stack in a given account within a given region. A stack instance can exist without a stack—for example, if the stack couldn't be created for some reason. A stack instance is associated with only one stack set. Each stack instance contains the ID of its associated stack set, as well as the ID of the actual stack and the stack status. </p>
    #
    # @!attribute account
    #   <p>The name of the AWS account that the stack instance is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The name of the AWS region that the stack instance is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_instance_status
    #   <p>The status of the stack instance, in terms of its synchronization with its associated stack set. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INOPERABLE</code>: A <code>DeleteStackInstances</code> operation has failed and left the stack in an unstable state. Stacks in this state are excluded from further <code>UpdateStackSet</code> operations. You might need to perform a <code>DeleteStackInstances</code> operation, with <code>RetainStacks</code> set to true, to delete the stack instance, and then delete the stack manually. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OUTDATED</code>: The stack isn't currently up to date with the stack set because either
    #               the associated stack failed during a <code>CreateStackSet</code> or <code>UpdateStackSet</code> operation,
    #               or the stack was part of a <code>CreateStackSet</code> or <code>UpdateStackSet</code> operation that failed or was stopped before the stack was created or updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CURRENT</code>: The stack is currently up to date with the stack set.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CURRENT", "OUTDATED", "INOPERABLE"]
    #
    #   @return [String]
    #
    StackInstance = ::Struct.new(
      :account,
      :region,
      :stack_instance_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StackInstanceStatus
    #
    module StackInstanceStatus
      # No documentation available.
      #
      CURRENT = "CURRENT"

      # No documentation available.
      #
      OUTDATED = "OUTDATED"

      # No documentation available.
      #
      INOPERABLE = "INOPERABLE"
    end

    # Includes enum constants for StackSetOperationType
    #
    module StackSetOperationType
      # No documentation available.
      #
      CREATE = "CREATE"

      # No documentation available.
      #
      UPDATE = "UPDATE"

      # No documentation available.
      #
      DELETE = "DELETE"
    end

    # Includes enum constants for Status
    #
    module Status
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Information about a tag. A tag is a key-value pair. Tags are propagated
    #          to the resources created when provisioning a product.</p>
    #
    # @!attribute key
    #   <p>The tag key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value for this key.</p>
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

    # <p>Information about a TagOption.</p>
    #
    # @!attribute key
    #   <p>The TagOption key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The TagOption value.</p>
    #
    #   @return [String]
    #
    # @!attribute active
    #   <p>The TagOption active state.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute id
    #   <p>The TagOption identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The AWS account Id of the owner account that created the TagOption.</p>
    #
    #   @return [String]
    #
    TagOptionDetail = ::Struct.new(
      :key,
      :value,
      :active,
      :id,
      :owner,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An operation requiring TagOptions failed because the TagOptions migration process has
    #          not been performed for this account. Please use the AWS console to perform the migration
    #          process before retrying the operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TagOptionNotMigratedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information about a TagOption.</p>
    #
    # @!attribute key
    #   <p>The TagOption key.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The TagOption value.</p>
    #
    #   @return [Array<String>]
    #
    TagOptionSummary = ::Struct.new(
      :key,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute provisioned_product_name
    #   <p>The name of the provisioned product. You cannot specify both
    #            <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioned_product_id
    #   <p>The identifier of the provisioned product. You cannot specify both
    #            <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute terminate_token
    #   <p>An idempotency token that uniquely identifies the termination request. This token is
    #            only valid during the termination process. After the provisioned product is terminated,
    #            subsequent requests to terminate the same provisioned product always return
    #            <b>ResourceNotFound</b>.</p>
    #
    #   @return [String]
    #
    # @!attribute ignore_errors
    #   <p>If set to true, AWS Service Catalog stops managing the specified provisioned product even
    #            if it cannot delete the underlying resources.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute retain_physical_resources
    #   <p>When this boolean parameter is set to true, the <code>TerminateProvisionedProduct</code> API deletes
    #            the Service Catalog provisioned product. However, it does not remove the CloudFormation
    #            stack, stack set, or the underlying resources of the deleted provisioned product. The
    #            default value is false.</p>
    #
    #   @return [Boolean]
    #
    TerminateProvisionedProductInput = ::Struct.new(
      :provisioned_product_name,
      :provisioned_product_id,
      :terminate_token,
      :ignore_errors,
      :accept_language,
      :retain_physical_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.ignore_errors ||= false
        self.retain_physical_resources ||= false
      end

    end

    # @!attribute record_detail
    #   <p>Information about the result of this request.</p>
    #
    #   @return [RecordDetail]
    #
    TerminateProvisionedProductOutput = ::Struct.new(
      :record_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The identifier of the constraint.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated description of the constraint.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The constraint parameters, in JSON format. The syntax depends on the constraint type as follows:</p>
    #            <dl>
    #               <dt>LAUNCH</dt>
    #               <dd>
    #                  <p>You are required to specify either the <code>RoleArn</code> or the <code>LocalRoleName</code> but can't use both.</p>
    #                  <p>Specify the <code>RoleArn</code> property as follows:</p>
    #                  <p>
    #                     <code>{"RoleArn" : "arn:aws:iam::123456789012:role/LaunchRole"}</code>
    #                  </p>
    #                  <p>Specify the <code>LocalRoleName</code> property as follows:</p>
    #                  <p>
    #                     <code>{"LocalRoleName": "SCBasicLaunchRole"}</code>
    #                  </p>
    #                  <p>If you specify the <code>LocalRoleName</code> property, when an account uses the launch constraint, the IAM role with that name in the account will be used. This allows launch-role constraints to be
    #                     account-agnostic so the administrator can create fewer resources per shared account.</p>
    #                  <note>
    #                     <p>The given role name must exist in the account used to create the launch constraint and the account of the user who launches a product with this launch constraint.</p>
    #                  </note>
    #                  <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
    #                  <p>You also cannot have more than one <code>LAUNCH</code> constraint on a product and portfolio.</p>
    #               </dd>
    #               <dt>NOTIFICATION</dt>
    #               <dd>
    #                  <p>Specify the <code>NotificationArns</code> property as follows:</p>
    #                  <p>
    #                     <code>{"NotificationArns" : ["arn:aws:sns:us-east-1:123456789012:Topic"]}</code>
    #                  </p>
    #               </dd>
    #               <dt>RESOURCE_UPDATE</dt>
    #               <dd>
    #                  <p>Specify the <code>TagUpdatesOnProvisionedProduct</code> property as follows:</p>
    #                  <p>
    #                     <code>{"Version":"2.0","Properties":{"TagUpdateOnProvisionedProduct":"String"}}</code>
    #                  </p>
    #                  <p>The <code>TagUpdatesOnProvisionedProduct</code> property accepts a string value of <code>ALLOWED</code> or <code>NOT_ALLOWED</code>.</p>
    #               </dd>
    #               <dt>STACKSET</dt>
    #               <dd>
    #                  <p>Specify the <code>Parameters</code> property as follows:</p>
    #                  <p>
    #                     <code>{"Version": "String", "Properties": {"AccountList": [ "String" ], "RegionList": [ "String" ], "AdminRole": "String", "ExecutionRole": "String"}}</code>
    #                  </p>
    #                  <p>You cannot have both a <code>LAUNCH</code> and a <code>STACKSET</code> constraint.</p>
    #                  <p>You also cannot have more than one <code>STACKSET</code> constraint on a product and portfolio.</p>
    #                  <p>Products with a <code>STACKSET</code> constraint will launch an AWS CloudFormation stack set.</p>
    #               </dd>
    #               <dt>TEMPLATE</dt>
    #               <dd>
    #                  <p>Specify the <code>Rules</code> property. For more information, see
    #                     <a href="http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html">Template Constraint Rules</a>.</p>
    #               </dd>
    #            </dl>
    #
    #   @return [String]
    #
    UpdateConstraintInput = ::Struct.new(
      :accept_language,
      :id,
      :description,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute constraint_detail
    #   <p>Information about the constraint.</p>
    #
    #   @return [ConstraintDetail]
    #
    # @!attribute constraint_parameters
    #   <p>The constraint parameters.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the current request.</p>
    #
    #   Enum, one of: ["AVAILABLE", "CREATING", "FAILED"]
    #
    #   @return [String]
    #
    UpdateConstraintOutput = ::Struct.new(
      :constraint_detail,
      :constraint_parameters,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The portfolio identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name to use for display purposes.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated description of the portfolio.</p>
    #
    #   @return [String]
    #
    # @!attribute provider_name
    #   <p>The updated name of the portfolio provider.</p>
    #
    #   @return [String]
    #
    # @!attribute add_tags
    #   <p>The tags to add.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute remove_tags
    #   <p>The tags to remove.</p>
    #
    #   @return [Array<String>]
    #
    UpdatePortfolioInput = ::Struct.new(
      :accept_language,
      :id,
      :display_name,
      :description,
      :provider_name,
      :add_tags,
      :remove_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portfolio_detail
    #   <p>Information about the portfolio.</p>
    #
    #   @return [PortfolioDetail]
    #
    # @!attribute tags
    #   <p>Information about the tags associated with the portfolio.</p>
    #
    #   @return [Array<Tag>]
    #
    UpdatePortfolioOutput = ::Struct.new(
      :portfolio_detail,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute portfolio_id
    #   <p>The unique identifier of the portfolio for which the share will be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The AWS Account Id of the recipient account. This field is required when updating an external account to account type share.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_node
    #   <p>Information about the organization node.</p>
    #
    #   @return [OrganizationNode]
    #
    # @!attribute share_tag_options
    #   <p>A flag to enable or disable TagOptions sharing for the portfolio share. If this field is not provided, the current state of TagOptions sharing on the portfolio share will not be modified.</p>
    #
    #   @return [Boolean]
    #
    UpdatePortfolioShareInput = ::Struct.new(
      :accept_language,
      :portfolio_id,
      :account_id,
      :organization_node,
      :share_tag_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portfolio_share_token
    #   <p>The token that tracks the status of the <code>UpdatePortfolioShare</code> operation for external account to account or  organizational type sharing.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of <code>UpdatePortfolioShare</code> operation.
    #            You can also obtain the operation status using <code>DescribePortfolioShareStatus</code> API.
    #         </p>
    #
    #   Enum, one of: ["NOT_STARTED", "IN_PROGRESS", "COMPLETED", "COMPLETED_WITH_ERRORS", "ERROR"]
    #
    #   @return [String]
    #
    UpdatePortfolioShareOutput = ::Struct.new(
      :portfolio_share_token,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The updated product name.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The updated owner of the product.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated description of the product.</p>
    #
    #   @return [String]
    #
    # @!attribute distributor
    #   <p>The updated distributor of the product.</p>
    #
    #   @return [String]
    #
    # @!attribute support_description
    #   <p>The updated support description for the product.</p>
    #
    #   @return [String]
    #
    # @!attribute support_email
    #   <p>The updated support email for the product.</p>
    #
    #   @return [String]
    #
    # @!attribute support_url
    #   <p>The updated support URL for the product.</p>
    #
    #   @return [String]
    #
    # @!attribute add_tags
    #   <p>The tags to add to the product.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute remove_tags
    #   <p>The tags to remove from the product.</p>
    #
    #   @return [Array<String>]
    #
    UpdateProductInput = ::Struct.new(
      :accept_language,
      :id,
      :name,
      :owner,
      :description,
      :distributor,
      :support_description,
      :support_email,
      :support_url,
      :add_tags,
      :remove_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute product_view_detail
    #   <p>Information about the product view.</p>
    #
    #   @return [ProductViewDetail]
    #
    # @!attribute tags
    #   <p>Information about the tags associated with the product.</p>
    #
    #   @return [Array<Tag>]
    #
    UpdateProductOutput = ::Struct.new(
      :product_view_detail,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute provisioned_product_name
    #   <p>The name of the provisioned product. You cannot specify both
    #            <code>ProvisionedProductName</code> and <code>ProvisionedProductId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioned_product_id
    #   <p>The identifier of the provisioned product. You must provide the name or ID, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The identifier of the product. You must provide the name or ID, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute product_name
    #   <p>The name of the product. You must provide the name or ID, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_name
    #   <p>The name of the provisioning artifact. You must provide the name or ID, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute path_id
    #   <p>The path identifier. This value is optional if the product
    #            has a default path, and required if the product has more than one path. You must provide the name or ID, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute path_name
    #   <p>The name of the path. You must provide the name or ID, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_parameters
    #   <p>The new parameters.</p>
    #
    #   @return [Array<UpdateProvisioningParameter>]
    #
    # @!attribute provisioning_preferences
    #   <p>An object that contains information about the provisioning preferences for a stack set.</p>
    #
    #   @return [UpdateProvisioningPreferences]
    #
    # @!attribute tags
    #   <p>One or more tags. Requires the product to have <code>RESOURCE_UPDATE</code> constraint with <code>TagUpdatesOnProvisionedProduct</code> set to <code>ALLOWED</code> to allow tag updates.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute update_token
    #   <p>The idempotency token that uniquely identifies the provisioning update request.</p>
    #
    #   @return [String]
    #
    UpdateProvisionedProductInput = ::Struct.new(
      :accept_language,
      :provisioned_product_name,
      :provisioned_product_id,
      :product_id,
      :product_name,
      :provisioning_artifact_id,
      :provisioning_artifact_name,
      :path_id,
      :path_name,
      :provisioning_parameters,
      :provisioning_preferences,
      :tags,
      :update_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute record_detail
    #   <p>Information about the result of the request.</p>
    #
    #   @return [RecordDetail]
    #
    UpdateProvisionedProductOutput = ::Struct.new(
      :record_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute provisioned_product_id
    #   <p>The identifier of the provisioned product.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioned_product_properties
    #   <p>A map that contains the provisioned product properties to be updated.</p>
    #            <p>The <code>LAUNCH_ROLE</code> key accepts role ARNs. This key allows an
    #            administrator to call <code>UpdateProvisionedProductProperties</code> to update the launch
    #            role that is associated with a provisioned product. This role is used when an end user
    #            calls a provisioning operation such as <code>UpdateProvisionedProduct</code>,
    #               <code>TerminateProvisionedProduct</code>, or
    #               <code>ExecuteProvisionedProductServiceAction</code>. Only a role ARN is valid. A user ARN is invalid. </p>
    #
    #            <p>The <code>OWNER</code> key accepts user ARNs and role ARNs. The owner is the user
    #            that has permission to see, update, terminate, and execute service actions in the
    #            provisioned product.</p>
    #            <p>The administrator can change the owner of a provisioned product to another IAM user within the same account. Both end user owners and
    #            administrators can see ownership history of the provisioned product using the <code>ListRecordHistory</code> API. The new owner can
    #         describe all past records for the provisioned product using the <code>DescribeRecord</code> API. The previous owner can no longer use <code>DescribeRecord</code>,
    #         but can still see the product's history from when he was an owner using <code>ListRecordHistory</code>.</p>
    #            <p>If a provisioned product ownership is assigned to an end user, they can see and perform any action through the API or
    #            Service Catalog console such as update, terminate, and execute service actions.
    #            If an end user provisions a product and the owner is updated to someone else, they will no longer be able to see or perform any actions through
    #            API or the Service Catalog console on that provisioned product.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute idempotency_token
    #   <p>The idempotency token that uniquely identifies the provisioning product update request.</p>
    #
    #   @return [String]
    #
    UpdateProvisionedProductPropertiesInput = ::Struct.new(
      :accept_language,
      :provisioned_product_id,
      :provisioned_product_properties,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute provisioned_product_id
    #   <p>The provisioned product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioned_product_properties
    #   <p>A map that contains the properties updated.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute record_id
    #   <p>The identifier of the record.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the request.</p>
    #
    #   Enum, one of: ["CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    UpdateProvisionedProductPropertiesOutput = ::Struct.new(
      :provisioned_product_id,
      :provisioned_product_properties,
      :record_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute product_id
    #   <p>The product identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_artifact_id
    #   <p>The identifier of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The updated name of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated description of the provisioning artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute active
    #   <p>Indicates whether the product version is active.</p>
    #            <p>Inactive provisioning artifacts are invisible to end users. End users cannot launch or update a provisioned product from an inactive provisioning artifact.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute guidance
    #   <p>Information set by the administrator to provide guidance to end users about which provisioning artifacts to use.</p>
    #            <p>The <code>DEFAULT</code> value indicates that the product version is active.</p>
    #            <p>The administrator can set the guidance to <code>DEPRECATED</code> to inform
    #             users that the product version is deprecated. Users are able to make updates to a provisioned product
    #             of a deprecated version but cannot launch new provisioned products using a deprecated version.</p>
    #
    #   Enum, one of: ["DEFAULT", "DEPRECATED"]
    #
    #   @return [String]
    #
    UpdateProvisioningArtifactInput = ::Struct.new(
      :accept_language,
      :product_id,
      :provisioning_artifact_id,
      :name,
      :description,
      :active,
      :guidance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute provisioning_artifact_detail
    #   <p>Information about the provisioning artifact.</p>
    #
    #   @return [ProvisioningArtifactDetail]
    #
    # @!attribute info
    #   <p>The URL of the CloudFormation template in Amazon S3.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute status
    #   <p>The status of the current request.</p>
    #
    #   Enum, one of: ["AVAILABLE", "CREATING", "FAILED"]
    #
    #   @return [String]
    #
    UpdateProvisioningArtifactOutput = ::Struct.new(
      :provisioning_artifact_detail,
      :info,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parameter key-value pair used to update a provisioned product.</p>
    #
    # @!attribute key
    #   <p>The parameter key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The parameter value.</p>
    #
    #   @return [String]
    #
    # @!attribute use_previous_value
    #   <p>If set to true, <code>Value</code> is ignored and the previous parameter value is kept.</p>
    #
    #   @return [Boolean]
    #
    UpdateProvisioningParameter = ::Struct.new(
      :key,
      :value,
      :use_previous_value,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.use_previous_value ||= false
      end

    end

    # <p>The user-defined preferences that will be applied when updating a provisioned product. Not all preferences are applicable to all provisioned product types.</p>
    #
    # @!attribute stack_set_accounts
    #   <p>One or more AWS accounts that will have access to the provisioned product.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>The AWS accounts specified should be within the list of accounts in the <code>STACKSET</code> constraint. To get the list of accounts in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p>
    #            <p>If no values are specified, the default value is all accounts from the <code>STACKSET</code> constraint.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute stack_set_regions
    #   <p>One or more AWS Regions where the provisioned product will be available.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>The specified regions should be within the list of regions from the <code>STACKSET</code> constraint. To get the list of regions in the <code>STACKSET</code> constraint, use the <code>DescribeProvisioningParameters</code> operation.</p>
    #            <p>If no values are specified, the default value is all regions from the <code>STACKSET</code> constraint.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute stack_set_failure_tolerance_count
    #   <p>The number of accounts, per region, for which this operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p>
    #            <p>The default value is <code>0</code> if no value is specified.</p>
    #
    #   @return [Integer]
    #
    # @!attribute stack_set_failure_tolerance_percentage
    #   <p>The percentage of accounts, per region, for which this stack operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions.</p>
    #            <p>When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>Conditional: You must specify either <code>StackSetFailureToleranceCount</code> or <code>StackSetFailureTolerancePercentage</code>, but not both.</p>
    #
    #   @return [Integer]
    #
    # @!attribute stack_set_max_concurrency_count
    #   <p>The maximum number of accounts in which to perform this operation at one time. This is dependent on the value of <code>StackSetFailureToleranceCount</code>. <code>StackSetMaxConcurrentCount</code> is at most one more than the <code>StackSetFailureToleranceCount</code>.</p>
    #            <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>
    #
    #   @return [Integer]
    #
    # @!attribute stack_set_max_concurrency_percentage
    #   <p>The maximum percentage of accounts in which to perform this operation at one time.</p>
    #            <p>When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, AWS Service Catalog sets the number as <code>1</code> instead.</p>
    #            <p>Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <p>Conditional: You must specify either <code>StackSetMaxConcurrentCount</code> or <code>StackSetMaxConcurrentPercentage</code>, but not both.</p>
    #
    #   @return [Integer]
    #
    # @!attribute stack_set_operation_type
    #   <p>Determines what action AWS Service Catalog performs to a stack set or a stack instance represented by the provisioned product. The default value is <code>UPDATE</code> if nothing is specified.</p>
    #            <p>Applicable only to a <code>CFN_STACKSET</code> provisioned product type.</p>
    #            <dl>
    #               <dt>CREATE</dt>
    #               <dd>
    #                  <p>Creates a new stack instance in the stack set represented by the provisioned product. In this case, only new stack instances are created based on accounts and regions; if new ProductId or ProvisioningArtifactID are passed, they will be ignored.</p>
    #               </dd>
    #               <dt>UPDATE</dt>
    #               <dd>
    #                  <p>Updates the stack set represented by the provisioned product and also its stack instances.</p>
    #               </dd>
    #               <dt>DELETE</dt>
    #               <dd>
    #                  <p>Deletes a stack instance in the stack set represented by the provisioned product.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["CREATE", "UPDATE", "DELETE"]
    #
    #   @return [String]
    #
    UpdateProvisioningPreferences = ::Struct.new(
      :stack_set_accounts,
      :stack_set_regions,
      :stack_set_failure_tolerance_count,
      :stack_set_failure_tolerance_percentage,
      :stack_set_max_concurrency_count,
      :stack_set_max_concurrency_percentage,
      :stack_set_operation_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The self-service action identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The self-service action name.</p>
    #
    #   @return [String]
    #
    # @!attribute definition
    #   <p>A map that defines the self-service action.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute description
    #   <p>The self-service action description.</p>
    #
    #   @return [String]
    #
    # @!attribute accept_language
    #   <p>The language code.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>en</code> - English (default)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>jp</code> - Japanese</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>zh</code> - Chinese</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    UpdateServiceActionInput = ::Struct.new(
      :id,
      :name,
      :definition,
      :description,
      :accept_language,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_action_detail
    #   <p>Detailed information about the self-service action.</p>
    #
    #   @return [ServiceActionDetail]
    #
    UpdateServiceActionOutput = ::Struct.new(
      :service_action_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The TagOption identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The updated value.</p>
    #
    #   @return [String]
    #
    # @!attribute active
    #   <p>The updated active state.</p>
    #
    #   @return [Boolean]
    #
    UpdateTagOptionInput = ::Struct.new(
      :id,
      :value,
      :active,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tag_option_detail
    #   <p>Information about the TagOption.</p>
    #
    #   @return [TagOptionDetail]
    #
    UpdateTagOptionOutput = ::Struct.new(
      :tag_option_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Additional information provided by the administrator.</p>
    #
    # @!attribute type
    #   <p>The usage instruction type for the value.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The usage instruction value for this type.</p>
    #
    #   @return [String]
    #
    UsageInstruction = ::Struct.new(
      :type,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
