# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WellArchitected
  module Types

    # <p>User does not have sufficient access to perform this action.</p>
    #
    # @!attribute message
    #   <p>Description of the error.</p>
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An answer of the question.</p>
    #
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #
    #   @return [String]
    #
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #           <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute question_title
    #   <p>The title of the question.</p>
    #
    #   @return [String]
    #
    # @!attribute question_description
    #   <p>The description of the question.</p>
    #
    #   @return [String]
    #
    # @!attribute improvement_plan_url
    #   <p>The improvement plan URL for a question.</p>
    #           <p>This value is only available if the question has been answered.</p>
    #
    #   @return [String]
    #
    # @!attribute helpful_resource_url
    #   <p>The helpful resource URL for a question.</p>
    #
    #   @return [String]
    #
    # @!attribute helpful_resource_display_text
    #   <p>The helpful resource text to be displayed.</p>
    #
    #   @return [String]
    #
    # @!attribute choices
    #   <p>List of choices available for a question.</p>
    #
    #   @return [Array<Choice>]
    #
    # @!attribute selected_choices
    #   <p>List of selected choice IDs in a question answer.</p>
    #           <p>The values entered replace the previously selected choices.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute choice_answers
    #   <p>A list of selected choices to a question in your workload.</p>
    #
    #   @return [Array<ChoiceAnswer>]
    #
    # @!attribute is_applicable
    #   <p>Defines whether this question is applicable to a lens review.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute risk
    #   <p>The risk for a given workload, lens review, pillar, or question.</p>
    #
    #   Enum, one of: ["UNANSWERED", "HIGH", "MEDIUM", "NONE", "NOT_APPLICABLE"]
    #
    #   @return [String]
    #
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason why the question is not applicable to your workload.</p>
    #
    #   Enum, one of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #
    #   @return [String]
    #
    Answer = ::Struct.new(
      :question_id,
      :pillar_id,
      :question_title,
      :question_description,
      :improvement_plan_url,
      :helpful_resource_url,
      :helpful_resource_display_text,
      :choices,
      :selected_choices,
      :choice_answers,
      :is_applicable,
      :risk,
      :notes,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_applicable ||= false
      end
    end

    # Includes enum constants for AnswerReason
    #
    module AnswerReason
      # No documentation available.
      #
      OUT_OF_SCOPE = "OUT_OF_SCOPE"

      # No documentation available.
      #
      BUSINESS_PRIORITIES = "BUSINESS_PRIORITIES"

      # No documentation available.
      #
      ARCHITECTURE_CONSTRAINTS = "ARCHITECTURE_CONSTRAINTS"

      # No documentation available.
      #
      OTHER = "OTHER"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # <p>An answer summary of a lens review in a workload.</p>
    #
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #
    #   @return [String]
    #
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #           <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute question_title
    #   <p>The title of the question.</p>
    #
    #   @return [String]
    #
    # @!attribute choices
    #   <p>List of choices available for a question.</p>
    #
    #   @return [Array<Choice>]
    #
    # @!attribute selected_choices
    #   <p>List of selected choice IDs in a question answer.</p>
    #           <p>The values entered replace the previously selected choices.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute choice_answer_summaries
    #   <p>A list of selected choices to a question in your workload.</p>
    #
    #   @return [Array<ChoiceAnswerSummary>]
    #
    # @!attribute is_applicable
    #   <p>Defines whether this question is applicable to a lens review.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute risk
    #   <p>The risk for a given workload, lens review, pillar, or question.</p>
    #
    #   Enum, one of: ["UNANSWERED", "HIGH", "MEDIUM", "NONE", "NOT_APPLICABLE"]
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason why a choice is non-applicable to a question in your workload.</p>
    #
    #   Enum, one of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #
    #   @return [String]
    #
    AnswerSummary = ::Struct.new(
      :question_id,
      :pillar_id,
      :question_title,
      :choices,
      :selected_choices,
      :choice_answer_summaries,
      :is_applicable,
      :risk,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_applicable ||= false
      end
    end

    # <p>Input to associate lens reviews.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_aliases
    #   <p>List of lens aliases to associate or disassociate with a workload. Up to 10 lenses can be specified.</p>
    #           <p>Identify a lens using its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [Array<String>]
    #
    AssociateLensesInput = ::Struct.new(
      :workload_id,
      :lens_aliases,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateLensesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A choice available to answer question.</p>
    #
    # @!attribute choice_id
    #   <p>The ID of a choice.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The title of a choice.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of a choice.</p>
    #
    #   @return [String]
    #
    # @!attribute helpful_resource
    #   <p>The choice level helpful resource.</p>
    #
    #   @return [ChoiceContent]
    #
    # @!attribute improvement_plan
    #   <p>The choice level improvement plan.</p>
    #
    #   @return [ChoiceContent]
    #
    Choice = ::Struct.new(
      :choice_id,
      :title,
      :description,
      :helpful_resource,
      :improvement_plan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A choice that has been answered on a question in your workload.</p>
    #
    # @!attribute choice_id
    #   <p>The ID of a choice.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of a choice.</p>
    #
    #   Enum, one of: ["SELECTED", "NOT_APPLICABLE", "UNSELECTED"]
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason why a choice is non-applicable to a question in your workload.</p>
    #
    #   Enum, one of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute notes
    #   <p>The notes associated with a choice.</p>
    #
    #   @return [String]
    #
    ChoiceAnswer = ::Struct.new(
      :choice_id,
      :status,
      :reason,
      :notes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A choice summary that has been answered on a question in your workload.</p>
    #
    # @!attribute choice_id
    #   <p>The ID of a choice.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of a choice.</p>
    #
    #   Enum, one of: ["SELECTED", "NOT_APPLICABLE", "UNSELECTED"]
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason why a choice is non-applicable to a question in your workload.</p>
    #
    #   Enum, one of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #
    #   @return [String]
    #
    ChoiceAnswerSummary = ::Struct.new(
      :choice_id,
      :status,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The choice content.</p>
    #
    # @!attribute display_text
    #   <p>The display text for the choice content.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The URL for the choice content.</p>
    #
    #   @return [String]
    #
    ChoiceContent = ::Struct.new(
      :display_text,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The choice level improvement plan.</p>
    #
    # @!attribute choice_id
    #   <p>The ID of a choice.</p>
    #
    #   @return [String]
    #
    # @!attribute display_text
    #   <p>The display text for the improvement plan.</p>
    #
    #   @return [String]
    #
    # @!attribute improvement_plan_url
    #   <p>The improvement plan URL for a question.</p>
    #           <p>This value is only available if the question has been answered.</p>
    #
    #   @return [String]
    #
    ChoiceImprovementPlan = ::Struct.new(
      :choice_id,
      :display_text,
      :improvement_plan_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChoiceReason
    #
    module ChoiceReason
      # No documentation available.
      #
      OUT_OF_SCOPE = "OUT_OF_SCOPE"

      # No documentation available.
      #
      BUSINESS_PRIORITIES = "BUSINESS_PRIORITIES"

      # No documentation available.
      #
      ARCHITECTURE_CONSTRAINTS = "ARCHITECTURE_CONSTRAINTS"

      # No documentation available.
      #
      OTHER = "OTHER"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for ChoiceStatus
    #
    module ChoiceStatus
      # No documentation available.
      #
      SELECTED = "SELECTED"

      # No documentation available.
      #
      NOT_APPLICABLE = "NOT_APPLICABLE"

      # No documentation available.
      #
      UNSELECTED = "UNSELECTED"
    end

    # <p>A list of choices to be updated.</p>
    #
    # @!attribute status
    #   <p>The status of a choice.</p>
    #
    #   Enum, one of: ["SELECTED", "NOT_APPLICABLE", "UNSELECTED"]
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason why a choice is non-applicable to a question in your workload.</p>
    #
    #   Enum, one of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute notes
    #   <p>The notes associated with a choice.</p>
    #
    #   @return [String]
    #
    ChoiceUpdate = ::Struct.new(
      :status,
      :reason,
      :notes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource already exists.</p>
    #
    # @!attribute message
    #   <p>Description of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>Identifier of the resource affected.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Type of the resource affected.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute shared_with
    #   <p>The Amazon Web Services account ID or IAM role with which the workload is shared.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    #   @return [String]
    #
    CreateLensShareInput = ::Struct.new(
      :lens_alias,
      :shared_with,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute share_id
    #   <p>The ID associated with the workload share.</p>
    #
    #   @return [String]
    #
    CreateLensShareOutput = ::Struct.new(
      :share_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_version
    #   <p>The version of the lens being created.</p>
    #
    #   @return [String]
    #
    # @!attribute is_major_version
    #   <p>Set to true if this new major lens version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    #   @return [String]
    #
    CreateLensVersionInput = ::Struct.new(
      :lens_alias,
      :lens_version,
      :is_major_version,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_major_version ||= false
      end
    end

    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_version
    #   <p>The version of the lens.</p>
    #
    #   @return [String]
    #
    CreateLensVersionOutput = ::Struct.new(
      :lens_arn,
      :lens_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for milestone creation.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute milestone_name
    #   <p>The name of the milestone in a workload.</p>
    #           <p>Milestone names must be unique within a workload.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    #   @return [String]
    #
    CreateMilestoneInput = ::Struct.new(
      :workload_id,
      :milestone_name,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Output of a create milestone call.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    #   @return [Integer]
    #
    CreateMilestoneOutput = ::Struct.new(
      :workload_id,
      :milestone_number,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.milestone_number ||= 0
      end
    end

    # <p>Input for workload creation.</p>
    #
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #           <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute environment
    #   <p>The environment for the workload.</p>
    #
    #   Enum, one of: ["PRODUCTION", "PREPRODUCTION"]
    #
    #   @return [String]
    #
    # @!attribute account_ids
    #   <p>The list of Amazon Web Services account IDs associated with the workload.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute aws_regions
    #   <p>The list of Amazon Web Services Regions associated with the workload, for example,
    #                   <code>us-east-2</code>, or <code>ca-central-1</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute non_aws_regions
    #   <p> The list of non-Amazon Web Services Regions associated with the workload.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute pillar_priorities
    #   <p>The priorities of the pillars, which are used to order items in the improvement plan.
    #               Each pillar is represented by its <a>PillarReviewSummary$PillarId</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute architectural_design
    #   <p>The URL of the architectural design for the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute review_owner
    #   <p>The review owner of the workload. The name, email address, or identifier for the
    #               primary group or individual that owns the workload review process.</p>
    #
    #   @return [String]
    #
    # @!attribute industry_type
    #   <p>The industry type for the workload.</p>
    #           <p>If specified, must be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Agriculture</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Automobile</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Defense</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Design and Engineering</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Digital Advertising</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Education</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Environmental Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Financial Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Gaming</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>General Public Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Healthcare</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Hospitality</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>InfoTech</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Justice and Public Safety</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Life Sciences</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Manufacturing</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Media & Entertainment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Mining & Resources</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Oil & Gas</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Power & Utilities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Professional Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Real Estate & Construction</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Retail & Wholesale</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Social Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Telecommunications</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Travel, Transportation & Logistics</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Other</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute industry
    #   <p>The industry for the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute lenses
    #   <p>The list of lenses associated with the workload. Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be associated with the workload.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateWorkloadInput = ::Struct.new(
      :workload_name,
      :description,
      :environment,
      :account_ids,
      :aws_regions,
      :non_aws_regions,
      :pillar_priorities,
      :architectural_design,
      :review_owner,
      :industry_type,
      :industry,
      :lenses,
      :notes,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Output of a create workload call.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute workload_arn
    #   <p>The ARN for the workload.</p>
    #
    #   @return [String]
    #
    CreateWorkloadOutput = ::Struct.new(
      :workload_id,
      :workload_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for Create Workload Share</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute shared_with
    #   <p>The Amazon Web Services account ID or IAM role with which the workload is shared.</p>
    #
    #   @return [String]
    #
    # @!attribute permission_type
    #   <p>Permission granted on a workload share.</p>
    #
    #   Enum, one of: ["READONLY", "CONTRIBUTOR"]
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    #   @return [String]
    #
    CreateWorkloadShareInput = ::Struct.new(
      :workload_id,
      :shared_with,
      :permission_type,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for Create Workload Share</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute share_id
    #   <p>The ID associated with the workload share.</p>
    #
    #   @return [String]
    #
    CreateWorkloadShareOutput = ::Struct.new(
      :workload_id,
      :share_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    #   @return [String]
    #
    # @!attribute lens_status
    #   <p>The status of the lens to be deleted.</p>
    #
    #   Enum, one of: ["ALL", "DRAFT", "PUBLISHED"]
    #
    #   @return [String]
    #
    DeleteLensInput = ::Struct.new(
      :lens_alias,
      :client_request_token,
      :lens_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLensOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute share_id
    #   <p>The ID associated with the workload share.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    #   @return [String]
    #
    DeleteLensShareInput = ::Struct.new(
      :share_id,
      :lens_alias,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLensShareOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for workload deletion.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    #   @return [String]
    #
    DeleteWorkloadInput = ::Struct.new(
      :workload_id,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteWorkloadOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for Delete Workload Share</p>
    #
    # @!attribute share_id
    #   <p>The ID associated with the workload share.</p>
    #
    #   @return [String]
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    #   @return [String]
    #
    DeleteWorkloadShareInput = ::Struct.new(
      :share_id,
      :workload_id,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteWorkloadShareOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DifferenceStatus
    #
    module DifferenceStatus
      # No documentation available.
      #
      UPDATED = "UPDATED"

      # No documentation available.
      #
      NEW = "NEW"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>Input to disassociate lens reviews.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_aliases
    #   <p>List of lens aliases to associate or disassociate with a workload. Up to 10 lenses can be specified.</p>
    #           <p>Identify a lens using its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [Array<String>]
    #
    DisassociateLensesInput = ::Struct.new(
      :workload_id,
      :lens_aliases,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateLensesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_version
    #   <p>The lens version to be exported.</p>
    #
    #   @return [String]
    #
    ExportLensInput = ::Struct.new(
      :lens_alias,
      :lens_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lens_json
    #   <p>The JSON for the lens.</p>
    #
    #   @return [String]
    #
    ExportLensOutput = ::Struct.new(
      :lens_json,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input to get answer.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #
    #   @return [String]
    #
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    #   @return [Integer]
    #
    GetAnswerInput = ::Struct.new(
      :workload_id,
      :lens_alias,
      :question_id,
      :milestone_number,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.milestone_number ||= 0
      end
    end

    # <p>Output of a get answer call.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute answer
    #   <p>An answer of the question.</p>
    #
    #   @return [Answer]
    #
    GetAnswerOutput = ::Struct.new(
      :workload_id,
      :milestone_number,
      :lens_alias,
      :lens_arn,
      :answer,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.milestone_number ||= 0
      end
    end

    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_version
    #   <p>The lens version to be retrieved.</p>
    #
    #   @return [String]
    #
    GetLensInput = ::Struct.new(
      :lens_alias,
      :lens_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lens
    #   <p>A lens return object.</p>
    #
    #   @return [Lens]
    #
    GetLensOutput = ::Struct.new(
      :lens,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input to get lens review.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    #   @return [Integer]
    #
    GetLensReviewInput = ::Struct.new(
      :workload_id,
      :lens_alias,
      :milestone_number,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.milestone_number ||= 0
      end
    end

    # <p>Output of a get lens review call.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lens_review
    #   <p>A lens review of a question.</p>
    #
    #   @return [LensReview]
    #
    GetLensReviewOutput = ::Struct.new(
      :workload_id,
      :milestone_number,
      :lens_review,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.milestone_number ||= 0
      end
    end

    # <p>Input to get lens review report.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    #   @return [Integer]
    #
    GetLensReviewReportInput = ::Struct.new(
      :workload_id,
      :lens_alias,
      :milestone_number,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.milestone_number ||= 0
      end
    end

    # <p>Output of a get lens review report call.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lens_review_report
    #   <p>A report of a lens review.</p>
    #
    #   @return [LensReviewReport]
    #
    GetLensReviewReportOutput = ::Struct.new(
      :workload_id,
      :milestone_number,
      :lens_review_report,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.milestone_number ||= 0
      end
    end

    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute base_lens_version
    #   <p>The base version of the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute target_lens_version
    #   <p>The lens version to target a difference for.</p>
    #
    #   @return [String]
    #
    GetLensVersionDifferenceInput = ::Struct.new(
      :lens_alias,
      :base_lens_version,
      :target_lens_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute base_lens_version
    #   <p>The base version of the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute target_lens_version
    #   <p>The target lens version for the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_lens_version
    #   <p>The latest version of the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute version_differences
    #   <p>The differences between the base and latest versions of the lens.</p>
    #
    #   @return [VersionDifferences]
    #
    GetLensVersionDifferenceOutput = ::Struct.new(
      :lens_alias,
      :lens_arn,
      :base_lens_version,
      :target_lens_version,
      :latest_lens_version,
      :version_differences,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input to get a milestone.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    #   @return [Integer]
    #
    GetMilestoneInput = ::Struct.new(
      :workload_id,
      :milestone_number,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.milestone_number ||= 0
      end
    end

    # <p>Output of a get milestone call.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute milestone
    #   <p>A milestone return object.</p>
    #
    #   @return [Milestone]
    #
    GetMilestoneOutput = ::Struct.new(
      :workload_id,
      :milestone,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input to get a workload.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    GetWorkloadInput = ::Struct.new(
      :workload_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Output of a get workload call.</p>
    #
    # @!attribute workload
    #   <p>A workload return object.</p>
    #
    #   @return [Workload]
    #
    GetWorkloadOutput = ::Struct.new(
      :workload,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute json_string
    #   <p>The JSON representation of a lens.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Tags to associate to a lens.</p>
    #
    #   @return [Hash<String, String>]
    #
    ImportLensInput = ::Struct.new(
      :lens_alias,
      :json_string,
      :client_request_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the imported lens.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "COMPLETE", "ERROR"]
    #
    #   @return [String]
    #
    ImportLensOutput = ::Struct.new(
      :lens_arn,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImportLensStatus
    #
    module ImportLensStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETE = "COMPLETE"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # <p>An improvement summary of a lens review in a workload.</p>
    #
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #
    #   @return [String]
    #
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #           <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute question_title
    #   <p>The title of the question.</p>
    #
    #   @return [String]
    #
    # @!attribute risk
    #   <p>The risk for a given workload, lens review, pillar, or question.</p>
    #
    #   Enum, one of: ["UNANSWERED", "HIGH", "MEDIUM", "NONE", "NOT_APPLICABLE"]
    #
    #   @return [String]
    #
    # @!attribute improvement_plan_url
    #   <p>The improvement plan URL for a question.</p>
    #           <p>This value is only available if the question has been answered.</p>
    #
    #   @return [String]
    #
    # @!attribute improvement_plans
    #   <p>The improvement plan details.</p>
    #
    #   @return [Array<ChoiceImprovementPlan>]
    #
    ImprovementSummary = ::Struct.new(
      :question_id,
      :pillar_id,
      :question_title,
      :risk,
      :improvement_plan_url,
      :improvement_plans,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is a problem with the Well-Architected Tool API service.</p>
    #
    # @!attribute message
    #   <p>Description of the error.</p>
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A lens return object.</p>
    #
    # @!attribute lens_arn
    #   <p>The ARN of a lens.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_version
    #   <p>The version of a lens.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The full name of the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The Amazon Web Services account ID that owns the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute share_invitation_id
    #   <p>The ID assigned to the share invitation.</p>
    #
    #   @return [String]
    #
    Lens = ::Struct.new(
      :lens_arn,
      :lens_version,
      :name,
      :description,
      :owner,
      :share_invitation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A lens review of a question.</p>
    #
    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_version
    #   <p>The version of the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_name
    #   <p>The full name of the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_status
    #   <p>The status of the lens.</p>
    #
    #   Enum, one of: ["CURRENT", "NOT_CURRENT", "DEPRECATED", "DELETED", "UNSHARED"]
    #
    #   @return [String]
    #
    # @!attribute pillar_review_summaries
    #   <p>List of pillar review summaries of lens review in a workload.</p>
    #
    #   @return [Array<PillarReviewSummary>]
    #
    # @!attribute updated_at
    #   <p>The date and time recorded.</p>
    #
    #   @return [Time]
    #
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute risk_counts
    #   <p>A map from risk names to the count of how questions have that rating.</p>
    #
    #   @return [Hash<String, Integer>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    LensReview = ::Struct.new(
      :lens_alias,
      :lens_arn,
      :lens_version,
      :lens_name,
      :lens_status,
      :pillar_review_summaries,
      :updated_at,
      :notes,
      :risk_counts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A report of a lens review.</p>
    #
    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute base64_string
    #   <p>The Base64-encoded string representation of a lens review report.</p>
    #           <p>This data can be used to create a PDF file.</p>
    #
    #   @return [String]
    #
    LensReviewReport = ::Struct.new(
      :lens_alias,
      :lens_arn,
      :base64_string,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A lens review summary of a workload.</p>
    #
    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_version
    #   <p>The version of the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_name
    #   <p>The full name of the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_status
    #   <p>The status of the lens.</p>
    #
    #   Enum, one of: ["CURRENT", "NOT_CURRENT", "DEPRECATED", "DELETED", "UNSHARED"]
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time recorded.</p>
    #
    #   @return [Time]
    #
    # @!attribute risk_counts
    #   <p>A map from risk names to the count of how questions have that rating.</p>
    #
    #   @return [Hash<String, Integer>]
    #
    LensReviewSummary = ::Struct.new(
      :lens_alias,
      :lens_arn,
      :lens_version,
      :lens_name,
      :lens_status,
      :updated_at,
      :risk_counts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A lens share summary return object.</p>
    #
    # @!attribute share_id
    #   <p>The ID associated with the workload share.</p>
    #
    #   @return [String]
    #
    # @!attribute shared_with
    #   <p>The Amazon Web Services account ID or IAM role with which the workload is shared.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of a workload share.</p>
    #
    #   Enum, one of: ["ACCEPTED", "REJECTED", "PENDING", "REVOKED", "EXPIRED"]
    #
    #   @return [String]
    #
    LensShareSummary = ::Struct.new(
      :share_id,
      :shared_with,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LensStatus
    #
    module LensStatus
      # No documentation available.
      #
      CURRENT = "CURRENT"

      # No documentation available.
      #
      NOT_CURRENT = "NOT_CURRENT"

      # No documentation available.
      #
      DEPRECATED = "DEPRECATED"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      UNSHARED = "UNSHARED"
    end

    # Includes enum constants for LensStatusType
    #
    module LensStatusType
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      DRAFT = "DRAFT"

      # No documentation available.
      #
      PUBLISHED = "PUBLISHED"
    end

    # <p>A lens summary of a lens.</p>
    #
    # @!attribute lens_arn
    #   <p>The ARN of the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_name
    #   <p>The full name of the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_type
    #   <p>The type of the lens.</p>
    #
    #   Enum, one of: ["AWS_OFFICIAL", "CUSTOM_SHARED", "CUSTOM_SELF"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time recorded.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The date and time recorded.</p>
    #
    #   @return [Time]
    #
    # @!attribute lens_version
    #   <p>The version of the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>An Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_status
    #   <p>The status of the lens.</p>
    #
    #   Enum, one of: ["CURRENT", "NOT_CURRENT", "DEPRECATED", "DELETED", "UNSHARED"]
    #
    #   @return [String]
    #
    LensSummary = ::Struct.new(
      :lens_arn,
      :lens_alias,
      :lens_name,
      :lens_type,
      :description,
      :created_at,
      :updated_at,
      :lens_version,
      :owner,
      :lens_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LensType
    #
    module LensType
      # No documentation available.
      #
      AWS_OFFICIAL = "AWS_OFFICIAL"

      # No documentation available.
      #
      CUSTOM_SHARED = "CUSTOM_SHARED"

      # No documentation available.
      #
      CUSTOM_SELF = "CUSTOM_SELF"
    end

    # <p>Lens upgrade summary return object.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #           <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute current_lens_version
    #   <p>The current version of the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_lens_version
    #   <p>The latest version of the lens.</p>
    #
    #   @return [String]
    #
    LensUpgradeSummary = ::Struct.new(
      :workload_id,
      :workload_name,
      :lens_alias,
      :lens_arn,
      :current_lens_version,
      :latest_lens_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input to list answers.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #           <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    #   @return [Integer]
    #
    ListAnswersInput = ::Struct.new(
      :workload_id,
      :lens_alias,
      :pillar_id,
      :milestone_number,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.milestone_number ||= 0
        self.max_results ||= 0
      end
    end

    # <p>Output of a list answers call.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute answer_summaries
    #   <p>List of answer summaries of lens review in a workload.</p>
    #
    #   @return [Array<AnswerSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListAnswersOutput = ::Struct.new(
      :workload_id,
      :milestone_number,
      :lens_alias,
      :lens_arn,
      :answer_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.milestone_number ||= 0
      end
    end

    # <p>Input to list lens review improvements.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #           <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    #   @return [Integer]
    #
    ListLensReviewImprovementsInput = ::Struct.new(
      :workload_id,
      :lens_alias,
      :pillar_id,
      :milestone_number,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.milestone_number ||= 0
        self.max_results ||= 0
      end
    end

    # <p>Output of a list lens review improvements call.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute improvement_summaries
    #   <p>List of improvement summaries of lens review in a workload.</p>
    #
    #   @return [Array<ImprovementSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListLensReviewImprovementsOutput = ::Struct.new(
      :workload_id,
      :milestone_number,
      :lens_alias,
      :lens_arn,
      :improvement_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.milestone_number ||= 0
      end
    end

    # <p>Input to list lens reviews.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    #   @return [Integer]
    #
    ListLensReviewsInput = ::Struct.new(
      :workload_id,
      :milestone_number,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.milestone_number ||= 0
        self.max_results ||= 0
      end
    end

    # <p>Output of a list lens reviews call.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lens_review_summaries
    #   <p>List of lens summaries of lens reviews of a workload.</p>
    #
    #   @return [Array<LensReviewSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListLensReviewsOutput = ::Struct.new(
      :workload_id,
      :milestone_number,
      :lens_review_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.milestone_number ||= 0
      end
    end

    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute shared_with_prefix
    #   <p>The Amazon Web Services account ID or IAM role with which the lens is shared.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    #   @return [Integer]
    #
    ListLensSharesInput = ::Struct.new(
      :lens_alias,
      :shared_with_prefix,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute lens_share_summaries
    #   <p>A list of lens share summaries.</p>
    #
    #   @return [Array<LensShareSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListLensSharesOutput = ::Struct.new(
      :lens_share_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input to list lenses.</p>
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lens_type
    #   <p>The type of lenses to be returned.</p>
    #
    #   Enum, one of: ["AWS_OFFICIAL", "CUSTOM_SHARED", "CUSTOM_SELF"]
    #
    #   @return [String]
    #
    # @!attribute lens_status
    #   <p>The status of lenses to be returned.</p>
    #
    #   Enum, one of: ["ALL", "DRAFT", "PUBLISHED"]
    #
    #   @return [String]
    #
    # @!attribute lens_name
    #   <p>The full name of the lens.</p>
    #
    #   @return [String]
    #
    ListLensesInput = ::Struct.new(
      :next_token,
      :max_results,
      :lens_type,
      :lens_status,
      :lens_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>Output of a list lenses call.</p>
    #
    # @!attribute lens_summaries
    #   <p>List of lens summaries of available lenses.</p>
    #
    #   @return [Array<LensSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListLensesOutput = ::Struct.new(
      :lens_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input to list all milestones for a workload.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    #   @return [Integer]
    #
    ListMilestonesInput = ::Struct.new(
      :workload_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>Output of a list milestones call.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute milestone_summaries
    #   <p>A list of milestone summaries.</p>
    #
    #   @return [Array<MilestoneSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListMilestonesOutput = ::Struct.new(
      :workload_id,
      :milestone_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    #   @return [Integer]
    #
    ListNotificationsInput = ::Struct.new(
      :workload_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # @!attribute notification_summaries
    #   <p>List of lens notification summaries in a workload.</p>
    #
    #   @return [Array<NotificationSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListNotificationsOutput = ::Struct.new(
      :notification_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for List Share Invitations</p>
    #
    # @!attribute workload_name_prefix
    #   <p>An optional string added to the beginning of each workload name returned in the
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_name_prefix
    #   <p>An optional string added to the beginning of each lens name returned in the results.</p>
    #
    #   @return [String]
    #
    # @!attribute share_resource_type
    #   <p>The type of share invitations to be returned.</p>
    #
    #   Enum, one of: ["WORKLOAD", "LENS"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    #   @return [Integer]
    #
    ListShareInvitationsInput = ::Struct.new(
      :workload_name_prefix,
      :lens_name_prefix,
      :share_resource_type,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>Input for List Share Invitations</p>
    #
    # @!attribute share_invitation_summaries
    #   <p>List of share invitation summaries in a workload.</p>
    #
    #   @return [Array<ShareInvitationSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListShareInvitationsOutput = ::Struct.new(
      :share_invitation_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workload_arn
    #   <p>The ARN for the workload.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :workload_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for List Workload Share</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute shared_with_prefix
    #   <p>The Amazon Web Services account ID or IAM role with which the workload is shared.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    #   @return [Integer]
    #
    ListWorkloadSharesInput = ::Struct.new(
      :workload_id,
      :shared_with_prefix,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>Input for List Workload Share</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute workload_share_summaries
    #   <p>A list of workload share summaries.</p>
    #
    #   @return [Array<WorkloadShareSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListWorkloadSharesOutput = ::Struct.new(
      :workload_id,
      :workload_share_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input to list all workloads.</p>
    #
    # @!attribute workload_name_prefix
    #   <p>An optional string added to the beginning of each workload name returned in the
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return for this request.</p>
    #
    #   @return [Integer]
    #
    ListWorkloadsInput = ::Struct.new(
      :workload_name_prefix,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_results ||= 0
      end
    end

    # <p>Output of a list workloads call.</p>
    #
    # @!attribute workload_summaries
    #   <p>A list of workload summaries.</p>
    #
    #   @return [Array<WorkloadSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListWorkloadsOutput = ::Struct.new(
      :workload_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A milestone return object.</p>
    #
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    #   @return [Integer]
    #
    # @!attribute milestone_name
    #   <p>The name of the milestone in a workload.</p>
    #           <p>Milestone names must be unique within a workload.</p>
    #
    #   @return [String]
    #
    # @!attribute recorded_at
    #   <p>The date and time recorded.</p>
    #
    #   @return [Time]
    #
    # @!attribute workload
    #   <p>A workload return object.</p>
    #
    #   @return [Workload]
    #
    Milestone = ::Struct.new(
      :milestone_number,
      :milestone_name,
      :recorded_at,
      :workload,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.milestone_number ||= 0
      end
    end

    # <p>A milestone summary return object.</p>
    #
    # @!attribute milestone_number
    #   <p>The milestone number.</p>
    #           <p>A workload can have a maximum of 100 milestones.</p>
    #
    #   @return [Integer]
    #
    # @!attribute milestone_name
    #   <p>The name of the milestone in a workload.</p>
    #           <p>Milestone names must be unique within a workload.</p>
    #
    #   @return [String]
    #
    # @!attribute recorded_at
    #   <p>The date and time recorded.</p>
    #
    #   @return [Time]
    #
    # @!attribute workload_summary
    #   <p>A workload summary return object.</p>
    #
    #   @return [WorkloadSummary]
    #
    MilestoneSummary = ::Struct.new(
      :milestone_number,
      :milestone_name,
      :recorded_at,
      :workload_summary,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.milestone_number ||= 0
      end
    end

    # <p>A notification summary return object.</p>
    #
    # @!attribute type
    #   <p>The type of notification.</p>
    #
    #   Enum, one of: ["LENS_VERSION_UPGRADED", "LENS_VERSION_DEPRECATED"]
    #
    #   @return [String]
    #
    # @!attribute lens_upgrade_summary
    #   <p>Summary of lens upgrade.</p>
    #
    #   @return [LensUpgradeSummary]
    #
    NotificationSummary = ::Struct.new(
      :type,
      :lens_upgrade_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NotificationType
    #
    module NotificationType
      # No documentation available.
      #
      LENS_VERSION_UPGRADED = "LENS_VERSION_UPGRADED"

      # No documentation available.
      #
      LENS_VERSION_DEPRECATED = "LENS_VERSION_DEPRECATED"
    end

    # Includes enum constants for PermissionType
    #
    module PermissionType
      # No documentation available.
      #
      READONLY = "READONLY"

      # No documentation available.
      #
      CONTRIBUTOR = "CONTRIBUTOR"
    end

    # <p>A pillar difference return object.</p>
    #
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #           <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute pillar_name
    #   <p>The name of the pillar.</p>
    #
    #   @return [String]
    #
    # @!attribute difference_status
    #   <p>Indicates the type of change to the pillar.</p>
    #
    #   Enum, one of: ["UPDATED", "NEW", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute question_differences
    #   <p>List of question differences.</p>
    #
    #   @return [Array<QuestionDifference>]
    #
    PillarDifference = ::Struct.new(
      :pillar_id,
      :pillar_name,
      :difference_status,
      :question_differences,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A pillar review summary of a lens review.</p>
    #
    # @!attribute pillar_id
    #   <p>The ID used to identify a pillar, for example, <code>security</code>.</p>
    #           <p>A pillar is identified by its <a>PillarReviewSummary$PillarId</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute pillar_name
    #   <p>The name of the pillar.</p>
    #
    #   @return [String]
    #
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute risk_counts
    #   <p>A map from risk names to the count of how questions have that rating.</p>
    #
    #   @return [Hash<String, Integer>]
    #
    PillarReviewSummary = ::Struct.new(
      :pillar_id,
      :pillar_name,
      :notes,
      :risk_counts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A question difference return object.</p>
    #
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #
    #   @return [String]
    #
    # @!attribute question_title
    #   <p>The title of the question.</p>
    #
    #   @return [String]
    #
    # @!attribute difference_status
    #   <p>Indicates the type of change to the question.</p>
    #
    #   Enum, one of: ["UPDATED", "NEW", "DELETED"]
    #
    #   @return [String]
    #
    QuestionDifference = ::Struct.new(
      :question_id,
      :question_title,
      :difference_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested resource was not found.</p>
    #
    # @!attribute message
    #   <p>Description of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>Identifier of the resource affected.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Type of the resource affected.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Risk
    #
    module Risk
      # No documentation available.
      #
      UNANSWERED = "UNANSWERED"

      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      NOT_APPLICABLE = "NOT_APPLICABLE"
    end

    # <p>The user has reached their resource quota.</p>
    #
    # @!attribute message
    #   <p>Description of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>Identifier of the resource affected.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Type of the resource affected.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>Service Quotas requirement to identify originating quota.</p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>Service Quotas requirement to identify originating service.</p>
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The share invitation.</p>
    #
    # @!attribute share_invitation_id
    #   <p>The ID assigned to the share invitation.</p>
    #
    #   @return [String]
    #
    # @!attribute share_resource_type
    #   <p>The resource type of the share invitation.</p>
    #
    #   Enum, one of: ["WORKLOAD", "LENS"]
    #
    #   @return [String]
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #
    #   @return [String]
    #
    ShareInvitation = ::Struct.new(
      :share_invitation_id,
      :share_resource_type,
      :workload_id,
      :lens_alias,
      :lens_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ShareInvitationAction
    #
    module ShareInvitationAction
      # No documentation available.
      #
      ACCEPT = "ACCEPT"

      # No documentation available.
      #
      REJECT = "REJECT"
    end

    # <p>A share invitation summary return object.</p>
    #
    # @!attribute share_invitation_id
    #   <p>The ID assigned to the share invitation.</p>
    #
    #   @return [String]
    #
    # @!attribute shared_by
    #   <p>An Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute shared_with
    #   <p>The Amazon Web Services account ID or IAM role with which the workload is shared.</p>
    #
    #   @return [String]
    #
    # @!attribute permission_type
    #   <p>Permission granted on a workload share.</p>
    #
    #   Enum, one of: ["READONLY", "CONTRIBUTOR"]
    #
    #   @return [String]
    #
    # @!attribute share_resource_type
    #   <p>The resource type of the share invitation.</p>
    #
    #   Enum, one of: ["WORKLOAD", "LENS"]
    #
    #   @return [String]
    #
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #           <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    #
    #   @return [String]
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_name
    #   <p>The full name of the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #
    #   @return [String]
    #
    ShareInvitationSummary = ::Struct.new(
      :share_invitation_id,
      :shared_by,
      :shared_with,
      :permission_type,
      :share_resource_type,
      :workload_name,
      :workload_id,
      :lens_name,
      :lens_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ShareResourceType
    #
    module ShareResourceType
      # No documentation available.
      #
      WORKLOAD = "WORKLOAD"

      # No documentation available.
      #
      LENS = "LENS"
    end

    # Includes enum constants for ShareStatus
    #
    module ShareStatus
      # No documentation available.
      #
      ACCEPTED = "ACCEPTED"

      # No documentation available.
      #
      REJECTED = "REJECTED"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      REVOKED = "REVOKED"

      # No documentation available.
      #
      EXPIRED = "EXPIRED"
    end

    # @!attribute workload_arn
    #   <p>The ARN for the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :workload_arn,
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

    # <p>Request was denied due to request throttling.</p>
    #
    # @!attribute message
    #   <p>Description of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>Service Quotas requirement to identify originating quota.</p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>Service Quotas requirement to identify originating service.</p>
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :quota_code,
      :service_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workload_arn
    #   <p>The ARN for the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of tag keys. Existing tags of the resource
    #               whose keys are members of this list are removed from the resource.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :workload_arn,
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

    # <p>Input to update answer.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute question_id
    #   <p>The ID of the question.</p>
    #
    #   @return [String]
    #
    # @!attribute selected_choices
    #   <p>List of selected choice IDs in a question answer.</p>
    #           <p>The values entered replace the previously selected choices.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute choice_updates
    #   <p>A list of choices to update on a question in your workload.  The String key
    #               corresponds to the choice ID to be updated.</p>
    #
    #   @return [Hash<String, ChoiceUpdate>]
    #
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute is_applicable
    #   <p>Defines whether this question is applicable to a lens review.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute reason
    #   <p>The reason why a question is not applicable to your workload.</p>
    #
    #   Enum, one of: ["OUT_OF_SCOPE", "BUSINESS_PRIORITIES", "ARCHITECTURE_CONSTRAINTS", "OTHER", "NONE"]
    #
    #   @return [String]
    #
    UpdateAnswerInput = ::Struct.new(
      :workload_id,
      :lens_alias,
      :question_id,
      :selected_choices,
      :choice_updates,
      :notes,
      :is_applicable,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_applicable ||= false
      end
    end

    # <p>Output of a update answer call.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_arn
    #   <p>The ARN for the lens.</p>
    #
    #   @return [String]
    #
    # @!attribute answer
    #   <p>An answer of the question.</p>
    #
    #   @return [Answer]
    #
    UpdateAnswerOutput = ::Struct.new(
      :workload_id,
      :lens_alias,
      :lens_arn,
      :answer,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for update lens review.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_notes
    #   <p>The notes associated with the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute pillar_notes
    #   <p>List of pillar notes of a lens review in a workload.</p>
    #
    #   @return [Hash<String, String>]
    #
    UpdateLensReviewInput = ::Struct.new(
      :workload_id,
      :lens_alias,
      :lens_notes,
      :pillar_notes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Output of a update lens review call.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_review
    #   <p>A lens review of a question.</p>
    #
    #   @return [LensReview]
    #
    UpdateLensReviewOutput = ::Struct.new(
      :workload_id,
      :lens_review,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for Update Share Invitation</p>
    #
    # @!attribute share_invitation_id
    #   <p>The ID assigned to the share invitation.</p>
    #
    #   @return [String]
    #
    # @!attribute share_invitation_action
    #   <p>Share invitation action taken by contributor.</p>
    #
    #   Enum, one of: ["ACCEPT", "REJECT"]
    #
    #   @return [String]
    #
    UpdateShareInvitationInput = ::Struct.new(
      :share_invitation_id,
      :share_invitation_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute share_invitation
    #   <p>The updated workload share invitation.</p>
    #
    #   @return [ShareInvitation]
    #
    UpdateShareInvitationOutput = ::Struct.new(
      :share_invitation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input to update a workload.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #           <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute environment
    #   <p>The environment for the workload.</p>
    #
    #   Enum, one of: ["PRODUCTION", "PREPRODUCTION"]
    #
    #   @return [String]
    #
    # @!attribute account_ids
    #   <p>The list of Amazon Web Services account IDs associated with the workload.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute aws_regions
    #   <p>The list of Amazon Web Services Regions associated with the workload, for example,
    #                   <code>us-east-2</code>, or <code>ca-central-1</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute non_aws_regions
    #   <p> The list of non-Amazon Web Services Regions associated with the workload.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute pillar_priorities
    #   <p>The priorities of the pillars, which are used to order items in the improvement plan.
    #               Each pillar is represented by its <a>PillarReviewSummary$PillarId</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute architectural_design
    #   <p>The URL of the architectural design for the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute review_owner
    #   <p>The review owner of the workload. The name, email address, or identifier for the
    #               primary group or individual that owns the workload review process.</p>
    #
    #   @return [String]
    #
    # @!attribute is_review_owner_update_acknowledged
    #   <p>Flag indicating whether the workload owner has acknowledged that the <i>Review
    #                   owner</i> field is required.</p>
    #           <p>If a <b>Review owner</b> is not added to the workload within
    #               60 days of acknowledgement, access to the workload is restricted until an owner is
    #               added.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute industry_type
    #   <p>The industry type for the workload.</p>
    #           <p>If specified, must be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Agriculture</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Automobile</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Defense</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Design and Engineering</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Digital Advertising</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Education</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Environmental Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Financial Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Gaming</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>General Public Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Healthcare</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Hospitality</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>InfoTech</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Justice and Public Safety</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Life Sciences</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Manufacturing</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Media & Entertainment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Mining & Resources</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Oil & Gas</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Power & Utilities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Professional Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Real Estate & Construction</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Retail & Wholesale</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Social Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Telecommunications</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Travel, Transportation & Logistics</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Other</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute industry
    #   <p>The industry for the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute improvement_status
    #   <p>The improvement status for a workload.</p>
    #
    #   Enum, one of: ["NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"]
    #
    #   @return [String]
    #
    UpdateWorkloadInput = ::Struct.new(
      :workload_id,
      :workload_name,
      :description,
      :environment,
      :account_ids,
      :aws_regions,
      :non_aws_regions,
      :pillar_priorities,
      :architectural_design,
      :review_owner,
      :is_review_owner_update_acknowledged,
      :industry_type,
      :industry,
      :notes,
      :improvement_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_review_owner_update_acknowledged ||= false
      end
    end

    # <p>Output of an update workload call.</p>
    #
    # @!attribute workload
    #   <p>A workload return object.</p>
    #
    #   @return [Workload]
    #
    UpdateWorkloadOutput = ::Struct.new(
      :workload,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for Update Workload Share</p>
    #
    # @!attribute share_id
    #   <p>The ID associated with the workload share.</p>
    #
    #   @return [String]
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute permission_type
    #   <p>Permission granted on a workload share.</p>
    #
    #   Enum, one of: ["READONLY", "CONTRIBUTOR"]
    #
    #   @return [String]
    #
    UpdateWorkloadShareInput = ::Struct.new(
      :share_id,
      :workload_id,
      :permission_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input for Update Workload Share</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute workload_share
    #   <p>A workload share return object.</p>
    #
    #   @return [WorkloadShare]
    #
    UpdateWorkloadShareOutput = ::Struct.new(
      :workload_id,
      :workload_share,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute lens_alias
    #   <p>The alias of the lens, for example, <code>serverless</code>.</p>
    #           <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute milestone_name
    #   <p>The name of the milestone in a workload.</p>
    #           <p>Milestone names must be unique within a workload.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique case-sensitive string used to ensure that this request is idempotent
    #               (executes only once).</p>
    #           <p>You should not reuse the same token for other requests. If you retry a request with
    #               the same client request token and the same parameters after it has completed
    #               successfully, the result of the original request is returned. </p>
    #           <important>
    #               <p>This token is listed as required, however, if you do not specify it, the Amazon Web Services SDKs
    #                   automatically generate one for you. If you are not using the Amazon Web Services SDK or the CLI,
    #                   you must provide this token or the request will fail.</p>
    #           </important>
    #
    #   @return [String]
    #
    UpgradeLensReviewInput = ::Struct.new(
      :workload_id,
      :lens_alias,
      :milestone_name,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpgradeLensReviewOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The user input is not valid.</p>
    #
    # @!attribute message
    #   <p>Description of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason why the request failed validation.</p>
    #
    #   Enum, one of: ["UNKNOWN_OPERATION", "CANNOT_PARSE", "FIELD_VALIDATION_FAILED", "OTHER"]
    #
    #   @return [String]
    #
    # @!attribute fields
    #   <p>The fields that caused the error, if applicable.</p>
    #
    #   @return [Array<ValidationExceptionField>]
    #
    ValidationException = ::Struct.new(
      :message,
      :reason,
      :fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Stores information about a field passed inside a request that resulted in an exception.</p>
    #
    # @!attribute name
    #   <p>The field name for which validation failed.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Description of the error.</p>
    #
    #   @return [String]
    #
    ValidationExceptionField = ::Struct.new(
      :name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ValidationExceptionReason
    #
    module ValidationExceptionReason
      # No documentation available.
      #
      UNKNOWN_OPERATION = "UNKNOWN_OPERATION"

      # No documentation available.
      #
      CANNOT_PARSE = "CANNOT_PARSE"

      # No documentation available.
      #
      FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED"

      # No documentation available.
      #
      OTHER = "OTHER"
    end

    # <p>The differences between the base and latest versions of the lens.</p>
    #
    # @!attribute pillar_differences
    #   <p>The differences between the base and latest versions of the lens.</p>
    #
    #   @return [Array<PillarDifference>]
    #
    VersionDifferences = ::Struct.new(
      :pillar_differences,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A workload return object.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute workload_arn
    #   <p>The ARN for the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #           <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute environment
    #   <p>The environment for the workload.</p>
    #
    #   Enum, one of: ["PRODUCTION", "PREPRODUCTION"]
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time recorded.</p>
    #
    #   @return [Time]
    #
    # @!attribute account_ids
    #   <p>The list of Amazon Web Services account IDs associated with the workload.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute aws_regions
    #   <p>The list of Amazon Web Services Regions associated with the workload, for example,
    #                   <code>us-east-2</code>, or <code>ca-central-1</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute non_aws_regions
    #   <p> The list of non-Amazon Web Services Regions associated with the workload.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute architectural_design
    #   <p>The URL of the architectural design for the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute review_owner
    #   <p>The review owner of the workload. The name, email address, or identifier for the
    #               primary group or individual that owns the workload review process.</p>
    #
    #   @return [String]
    #
    # @!attribute review_restriction_date
    #   <p>The date and time recorded.</p>
    #
    #   @return [Time]
    #
    # @!attribute is_review_owner_update_acknowledged
    #   <p>Flag indicating whether the workload owner has acknowledged that the <i>Review
    #                   owner</i> field is required.</p>
    #           <p>If a <b>Review owner</b> is not added to the workload within
    #               60 days of acknowledgement, access to the workload is restricted until an owner is
    #               added.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute industry_type
    #   <p>The industry type for the workload.</p>
    #           <p>If specified, must be one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Agriculture</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Automobile</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Defense</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Design and Engineering</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Digital Advertising</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Education</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Environmental Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Financial Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Gaming</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>General Public Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Healthcare</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Hospitality</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>InfoTech</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Justice and Public Safety</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Life Sciences</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Manufacturing</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Media & Entertainment</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Mining & Resources</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Oil & Gas</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Power & Utilities</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Professional Services</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Real Estate & Construction</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Retail & Wholesale</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Social Protection</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Telecommunications</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Travel, Transportation & Logistics</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Other</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute industry
    #   <p>The industry for the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute notes
    #   <p>The notes associated with the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute improvement_status
    #   <p>The improvement status for a workload.</p>
    #
    #   Enum, one of: ["NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"]
    #
    #   @return [String]
    #
    # @!attribute risk_counts
    #   <p>A map from risk names to the count of how questions have that rating.</p>
    #
    #   @return [Hash<String, Integer>]
    #
    # @!attribute pillar_priorities
    #   <p>The priorities of the pillars, which are used to order items in the improvement plan.
    #               Each pillar is represented by its <a>PillarReviewSummary$PillarId</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute lenses
    #   <p>The list of lenses associated with the workload. Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute owner
    #   <p>An Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute share_invitation_id
    #   <p>The ID assigned to the share invitation.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the workload.</p>
    #
    #   @return [Hash<String, String>]
    #
    Workload = ::Struct.new(
      :workload_id,
      :workload_arn,
      :workload_name,
      :description,
      :environment,
      :updated_at,
      :account_ids,
      :aws_regions,
      :non_aws_regions,
      :architectural_design,
      :review_owner,
      :review_restriction_date,
      :is_review_owner_update_acknowledged,
      :industry_type,
      :industry,
      :notes,
      :improvement_status,
      :risk_counts,
      :pillar_priorities,
      :lenses,
      :owner,
      :share_invitation_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_review_owner_update_acknowledged ||= false
      end
    end

    # Includes enum constants for WorkloadEnvironment
    #
    module WorkloadEnvironment
      # No documentation available.
      #
      PRODUCTION = "PRODUCTION"

      # No documentation available.
      #
      PREPRODUCTION = "PREPRODUCTION"
    end

    # Includes enum constants for WorkloadImprovementStatus
    #
    module WorkloadImprovementStatus
      # No documentation available.
      #
      NOT_APPLICABLE = "NOT_APPLICABLE"

      # No documentation available.
      #
      NOT_STARTED = "NOT_STARTED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMPLETE = "COMPLETE"

      # No documentation available.
      #
      RISK_ACKNOWLEDGED = "RISK_ACKNOWLEDGED"
    end

    # <p>A workload share return object.</p>
    #
    # @!attribute share_id
    #   <p>The ID associated with the workload share.</p>
    #
    #   @return [String]
    #
    # @!attribute shared_by
    #   <p>An Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute shared_with
    #   <p>The Amazon Web Services account ID or IAM role with which the workload is shared.</p>
    #
    #   @return [String]
    #
    # @!attribute permission_type
    #   <p>Permission granted on a workload share.</p>
    #
    #   Enum, one of: ["READONLY", "CONTRIBUTOR"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of a workload share.</p>
    #
    #   Enum, one of: ["ACCEPTED", "REJECTED", "PENDING", "REVOKED", "EXPIRED"]
    #
    #   @return [String]
    #
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #           <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    #
    #   @return [String]
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    WorkloadShare = ::Struct.new(
      :share_id,
      :shared_by,
      :shared_with,
      :permission_type,
      :status,
      :workload_name,
      :workload_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A workload share summary return object.</p>
    #
    # @!attribute share_id
    #   <p>The ID associated with the workload share.</p>
    #
    #   @return [String]
    #
    # @!attribute shared_with
    #   <p>The Amazon Web Services account ID or IAM role with which the workload is shared.</p>
    #
    #   @return [String]
    #
    # @!attribute permission_type
    #   <p>Permission granted on a workload share.</p>
    #
    #   Enum, one of: ["READONLY", "CONTRIBUTOR"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of a workload share.</p>
    #
    #   Enum, one of: ["ACCEPTED", "REJECTED", "PENDING", "REVOKED", "EXPIRED"]
    #
    #   @return [String]
    #
    WorkloadShareSummary = ::Struct.new(
      :share_id,
      :shared_with,
      :permission_type,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A workload summary return object.</p>
    #
    # @!attribute workload_id
    #   <p>The ID assigned to the workload. This ID is unique within an Amazon Web Services Region.</p>
    #
    #   @return [String]
    #
    # @!attribute workload_arn
    #   <p>The ARN for the workload.</p>
    #
    #   @return [String]
    #
    # @!attribute workload_name
    #   <p>The name of the workload.</p>
    #           <p>The name must be unique within an account within an Amazon Web Services Region. Spaces and capitalization
    #               are ignored when checking for uniqueness.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>An Amazon Web Services account ID.</p>
    #
    #   @return [String]
    #
    # @!attribute updated_at
    #   <p>The date and time recorded.</p>
    #
    #   @return [Time]
    #
    # @!attribute lenses
    #   <p>The list of lenses associated with the workload. Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute risk_counts
    #   <p>A map from risk names to the count of how questions have that rating.</p>
    #
    #   @return [Hash<String, Integer>]
    #
    # @!attribute improvement_status
    #   <p>The improvement status for a workload.</p>
    #
    #   Enum, one of: ["NOT_APPLICABLE", "NOT_STARTED", "IN_PROGRESS", "COMPLETE", "RISK_ACKNOWLEDGED"]
    #
    #   @return [String]
    #
    WorkloadSummary = ::Struct.new(
      :workload_id,
      :workload_arn,
      :workload_name,
      :owner,
      :updated_at,
      :lenses,
      :risk_counts,
      :improvement_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
