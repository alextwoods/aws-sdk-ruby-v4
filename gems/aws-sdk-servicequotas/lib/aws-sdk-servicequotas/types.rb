# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServiceQuotas
  module Types

    # <p>The action you attempted is not allowed unless Service Access with Service Quotas is
    #       enabled in your organization.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AWSServiceAccessNotEnabledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You do not have sufficient permission to perform this action.</p>
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

    AssociateServiceQuotaTemplateInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateServiceQuotaTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_code
    #   <p>The service identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The quota identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The AWS Region.</p>
    #
    #   @return [String]
    #
    DeleteServiceQuotaIncreaseRequestFromTemplateInput = ::Struct.new(
      :service_code,
      :quota_code,
      :aws_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteServiceQuotaIncreaseRequestFromTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can't perform this action because a dependency does not have access.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DependencyAccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateServiceQuotaTemplateInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateServiceQuotaTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ErrorCode
    #
    module ErrorCode
      # No documentation available.
      #
      DEPENDENCY_ACCESS_DENIED_ERROR = "DEPENDENCY_ACCESS_DENIED_ERROR"

      # No documentation available.
      #
      DEPENDENCY_THROTTLING_ERROR = "DEPENDENCY_THROTTLING_ERROR"

      # No documentation available.
      #
      DEPENDENCY_SERVICE_ERROR = "DEPENDENCY_SERVICE_ERROR"

      # No documentation available.
      #
      SERVICE_QUOTA_NOT_AVAILABLE_ERROR = "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"
    end

    # <p>An error that explains why an action did not succeed.</p>
    #
    # @!attribute error_code
    #   <p>Service Quotas returns the following error values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DEPENDENCY_ACCESS_DENIED_ERROR</code> - The caller does not have the required
    #             permissions to complete the action. To resolve the error, you must have permission to
    #             access the service or quota.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPENDENCY_THROTTLING_ERROR</code> - The service is throttling Service
    #             Quotas.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPENDENCY_SERVICE_ERROR</code> - The service is not available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SERVICE_QUOTA_NOT_AVAILABLE_ERROR</code> - There was an error in Service
    #             Quotas.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["DEPENDENCY_ACCESS_DENIED_ERROR", "DEPENDENCY_THROTTLING_ERROR", "DEPENDENCY_SERVICE_ERROR", "SERVICE_QUOTA_NOT_AVAILABLE_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    ErrorReason = ::Struct.new(
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_code
    #   <p>The service identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The quota identifier.</p>
    #
    #   @return [String]
    #
    GetAWSDefaultServiceQuotaInput = ::Struct.new(
      :service_code,
      :quota_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute quota
    #   <p>Information about the quota.</p>
    #
    #   @return [ServiceQuota]
    #
    GetAWSDefaultServiceQuotaOutput = ::Struct.new(
      :quota,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetAssociationForServiceQuotaTemplateInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_quota_template_association_status
    #   <p>The association status. If the status is <code>ASSOCIATED</code>, the quota increase
    #         requests in the template are automatically applied to new accounts in your
    #         organization.</p>
    #
    #   Enum, one of: ["ASSOCIATED", "DISASSOCIATED"]
    #
    #   @return [String]
    #
    GetAssociationForServiceQuotaTemplateOutput = ::Struct.new(
      :service_quota_template_association_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute request_id
    #   <p>The ID of the quota increase request.</p>
    #
    #   @return [String]
    #
    GetRequestedServiceQuotaChangeInput = ::Struct.new(
      :request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute requested_quota
    #   <p>Information about the quota increase request.</p>
    #
    #   @return [RequestedServiceQuotaChange]
    #
    GetRequestedServiceQuotaChangeOutput = ::Struct.new(
      :requested_quota,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_code
    #   <p>The service identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The quota identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The AWS Region.</p>
    #
    #   @return [String]
    #
    GetServiceQuotaIncreaseRequestFromTemplateInput = ::Struct.new(
      :service_code,
      :quota_code,
      :aws_region,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_quota_increase_request_in_template
    #   <p>Information about the quota increase request.</p>
    #
    #   @return [ServiceQuotaIncreaseRequestInTemplate]
    #
    GetServiceQuotaIncreaseRequestFromTemplateOutput = ::Struct.new(
      :service_quota_increase_request_in_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_code
    #   <p>The service identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The quota identifier.</p>
    #
    #   @return [String]
    #
    GetServiceQuotaInput = ::Struct.new(
      :service_code,
      :quota_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute quota
    #   <p>Information about the quota.</p>
    #
    #   @return [ServiceQuota]
    #
    GetServiceQuotaOutput = ::Struct.new(
      :quota,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Invalid input was provided.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IllegalArgumentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Invalid input was provided.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidPaginationTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource is in an invalid state.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidResourceStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_code
    #   <p>The service identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, if any, make another call with the token returned from this call.</p>
    #
    #   @return [Integer]
    #
    ListAWSDefaultServiceQuotasInput = ::Struct.new(
      :service_code,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #         no more results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute quotas
    #   <p>Information about the quotas.</p>
    #
    #   @return [Array<ServiceQuota>]
    #
    ListAWSDefaultServiceQuotasOutput = ::Struct.new(
      :next_token,
      :quotas,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_code
    #   <p>The service identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The quota identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status value of the quota increase request.</p>
    #
    #   Enum, one of: ["PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, if any, make another call with the token returned from this call.</p>
    #
    #   @return [Integer]
    #
    ListRequestedServiceQuotaChangeHistoryByQuotaInput = ::Struct.new(
      :service_code,
      :quota_code,
      :status,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #         no more results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute requested_quotas
    #   <p>Information about the quota increase requests.</p>
    #
    #   @return [Array<RequestedServiceQuotaChange>]
    #
    ListRequestedServiceQuotaChangeHistoryByQuotaOutput = ::Struct.new(
      :next_token,
      :requested_quotas,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_code
    #   <p>The service identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the quota increase request.</p>
    #
    #   Enum, one of: ["PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, if any, make another call with the token returned from this call.</p>
    #
    #   @return [Integer]
    #
    ListRequestedServiceQuotaChangeHistoryInput = ::Struct.new(
      :service_code,
      :status,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #         no more results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute requested_quotas
    #   <p>Information about the quota increase requests.</p>
    #
    #   @return [Array<RequestedServiceQuotaChange>]
    #
    ListRequestedServiceQuotaChangeHistoryOutput = ::Struct.new(
      :next_token,
      :requested_quotas,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_code
    #   <p>The service identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The AWS Region.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, if any, make another call with the token returned from this call.</p>
    #
    #   @return [Integer]
    #
    ListServiceQuotaIncreaseRequestsInTemplateInput = ::Struct.new(
      :service_code,
      :aws_region,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_quota_increase_request_in_template_list
    #   <p>Information about the quota increase requests.</p>
    #
    #   @return [Array<ServiceQuotaIncreaseRequestInTemplate>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #         no more results to return.</p>
    #
    #   @return [String]
    #
    ListServiceQuotaIncreaseRequestsInTemplateOutput = ::Struct.new(
      :service_quota_increase_request_in_template_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_code
    #   <p>The service identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, if any, make another call with the token returned from this call.</p>
    #
    #   @return [Integer]
    #
    ListServiceQuotasInput = ::Struct.new(
      :service_code,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #         no more results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute quotas
    #   <p>Information about the quotas.</p>
    #
    #   @return [Array<ServiceQuota>]
    #
    ListServiceQuotasOutput = ::Struct.new(
      :next_token,
      :quotas,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining
    #         results, if any, make another call with the token returned from this call.</p>
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
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #         no more results to return.</p>
    #
    #   @return [String]
    #
    # @!attribute services
    #   <p>Information about the services.</p>
    #
    #   @return [Array<ServiceInfo>]
    #
    ListServicesOutput = ::Struct.new(
      :next_token,
      :services,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the applied quota for which you want to list tags. You
    #         can get this information by using the Service Quotas console, or by listing the quotas using the
    #           <a href="https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html">list-service-quotas</a> AWS CLI command or the <a href="https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html">ListServiceQuotas</a> AWS API operation.</p>
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
    #   <p>A complex data type that contains zero or more tag elements.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the CloudWatch metric that reflects quota usage.</p>
    #
    # @!attribute metric_namespace
    #   <p>The namespace of the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_name
    #   <p>The name of the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute metric_dimensions
    #   <p>The metric dimension. This is a name/value pair that is part of the identity of a
    #         metric.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute metric_statistic_recommendation
    #   <p>The metric statistic that we recommend you use when determining quota usage.</p>
    #
    #   @return [String]
    #
    MetricInfo = ::Struct.new(
      :metric_namespace,
      :metric_name,
      :metric_dimensions,
      :metric_statistic_recommendation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The account making this call is not a member of an organization.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoAvailableOrganizationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NoSuchResourceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The organization that your account belongs to is not in All Features mode.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OrganizationNotInAllFeaturesModeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PeriodUnit
    #
    module PeriodUnit
      # No documentation available.
      #
      MICROSECOND = "MICROSECOND"

      # No documentation available.
      #
      MILLISECOND = "MILLISECOND"

      # No documentation available.
      #
      SECOND = "SECOND"

      # No documentation available.
      #
      MINUTE = "MINUTE"

      # No documentation available.
      #
      HOUR = "HOUR"

      # No documentation available.
      #
      DAY = "DAY"

      # No documentation available.
      #
      WEEK = "WEEK"
    end

    # @!attribute quota_code
    #   <p>The quota identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The service identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute aws_region
    #   <p>The AWS Region.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_value
    #   <p>The new, increased value for the quota.</p>
    #
    #   @return [Float]
    #
    PutServiceQuotaIncreaseRequestIntoTemplateInput = ::Struct.new(
      :quota_code,
      :service_code,
      :aws_region,
      :desired_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_quota_increase_request_in_template
    #   <p>Information about the quota increase request.</p>
    #
    #   @return [ServiceQuotaIncreaseRequestInTemplate]
    #
    PutServiceQuotaIncreaseRequestIntoTemplateOutput = ::Struct.new(
      :service_quota_increase_request_in_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You have exceeded your service quota. To perform the requested action, remove some of the
    #       relevant resources, or use Service Quotas to request a service quota increase.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    QuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the quota period.</p>
    #
    # @!attribute period_value
    #   <p>The value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute period_unit
    #   <p>The time unit.</p>
    #
    #   Enum, one of: ["MICROSECOND", "MILLISECOND", "SECOND", "MINUTE", "HOUR", "DAY", "WEEK"]
    #
    #   @return [String]
    #
    QuotaPeriod = ::Struct.new(
      :period_value,
      :period_unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_code
    #   <p>The service identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The quota identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_value
    #   <p>The new, increased value for the quota.</p>
    #
    #   @return [Float]
    #
    RequestServiceQuotaIncreaseInput = ::Struct.new(
      :service_code,
      :quota_code,
      :desired_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute requested_quota
    #   <p>Information about the quota increase request.</p>
    #
    #   @return [RequestedServiceQuotaChange]
    #
    RequestServiceQuotaIncreaseOutput = ::Struct.new(
      :requested_quota,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RequestStatus
    #
    module RequestStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      CASE_OPENED = "CASE_OPENED"

      # No documentation available.
      #
      APPROVED = "APPROVED"

      # No documentation available.
      #
      DENIED = "DENIED"

      # No documentation available.
      #
      CASE_CLOSED = "CASE_CLOSED"
    end

    # <p>Information about a quota increase request.</p>
    #
    # @!attribute id
    #   <p>The unique identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute case_id
    #   <p>The case ID.</p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The service identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The service name.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The quota identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_name
    #   <p>The quota name.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_value
    #   <p>The new, increased value for the quota.</p>
    #
    #   @return [Float]
    #
    # @!attribute status
    #   <p>The state of the quota increase request.</p>
    #
    #   Enum, one of: ["PENDING", "CASE_OPENED", "APPROVED", "DENIED", "CASE_CLOSED"]
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>The date and time when the quota increase request was received and the case ID was
    #         created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated
    #   <p>The date and time of the most recent change.</p>
    #
    #   @return [Time]
    #
    # @!attribute requester
    #   <p>The IAM identity of the requester.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_arn
    #   <p>The Amazon Resource Name (ARN) of the quota.</p>
    #
    #   @return [String]
    #
    # @!attribute global_quota
    #   <p>Indicates whether the quota is global.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute unit
    #   <p>The unit of measurement.</p>
    #
    #   @return [String]
    #
    RequestedServiceQuotaChange = ::Struct.new(
      :id,
      :case_id,
      :service_code,
      :service_name,
      :quota_code,
      :quota_name,
      :desired_value,
      :status,
      :created,
      :last_updated,
      :requester,
      :quota_arn,
      :global_quota,
      :unit,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.global_quota ||= false
      end

    end

    # <p>The specified resource already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Something went wrong.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a service.</p>
    #
    # @!attribute service_code
    #   <p>The service identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The service name.</p>
    #
    #   @return [String]
    #
    ServiceInfo = ::Struct.new(
      :service_code,
      :service_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a quota.</p>
    #
    # @!attribute service_code
    #   <p>The service identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The service name.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_arn
    #   <p>The Amazon Resource Name (ARN) of the quota.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The quota identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_name
    #   <p>The quota name.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The quota value.</p>
    #
    #   @return [Float]
    #
    # @!attribute unit
    #   <p>The unit of measurement.</p>
    #
    #   @return [String]
    #
    # @!attribute adjustable
    #   <p>Indicates whether the quota value can be increased.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute global_quota
    #   <p>Indicates whether the quota is global.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute usage_metric
    #   <p>Information about the measurement.</p>
    #
    #   @return [MetricInfo]
    #
    # @!attribute period
    #   <p>The period of time.</p>
    #
    #   @return [QuotaPeriod]
    #
    # @!attribute error_reason
    #   <p>The error code and error reason.</p>
    #
    #   @return [ErrorReason]
    #
    ServiceQuota = ::Struct.new(
      :service_code,
      :service_name,
      :quota_arn,
      :quota_code,
      :quota_name,
      :value,
      :unit,
      :adjustable,
      :global_quota,
      :usage_metric,
      :period,
      :error_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.adjustable ||= false
        self.global_quota ||= false
      end

    end

    # <p>Information about a quota increase request.</p>
    #
    # @!attribute service_code
    #   <p>The service identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The service name.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The quota identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_name
    #   <p>The quota name.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_value
    #   <p>The new, increased value of the quota.</p>
    #
    #   @return [Float]
    #
    # @!attribute aws_region
    #   <p>The AWS Region.</p>
    #
    #   @return [String]
    #
    # @!attribute unit
    #   <p>The unit of measurement.</p>
    #
    #   @return [String]
    #
    # @!attribute global_quota
    #   <p>Indicates whether the quota is global.</p>
    #
    #   @return [Boolean]
    #
    ServiceQuotaIncreaseRequestInTemplate = ::Struct.new(
      :service_code,
      :service_name,
      :quota_code,
      :quota_name,
      :desired_value,
      :aws_region,
      :unit,
      :global_quota,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.global_quota ||= false
      end

    end

    # Includes enum constants for ServiceQuotaTemplateAssociationStatus
    #
    module ServiceQuotaTemplateAssociationStatus
      # No documentation available.
      #
      ASSOCIATED = "ASSOCIATED"

      # No documentation available.
      #
      DISASSOCIATED = "DISASSOCIATED"
    end

    # <p>The quota request template is not associated with your organization.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaTemplateNotInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A complex data type that contains a tag key and tag value.</p>
    #
    # @!attribute key
    #   <p>A string that contains a tag key. The string length should be between 1 and 128
    #         characters. Valid characters include a-z, A-Z, 0-9, space, and the special characters _ - . :
    #         / = + @.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>A string that contains an optional tag value. The string length should be between 0 and
    #         256 characters. Valid characters include a-z, A-Z, 0-9, space, and the special characters _ -
    #         . : / = + @.</p>
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

    # <p>The specified tag is a reserved word and cannot be used.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TagPolicyViolationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the applied quota. You can get this information by
    #         using the Service Quotas console, or by listing the quotas using the <a href="https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html">list-service-quotas</a> AWS CLI command or the <a href="https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html">ListServiceQuotas</a> AWS API operation.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags that you want to add to the resource.</p>
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

    # <p>The Service Quotas template is not available in this AWS Region.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TemplatesNotAvailableInRegionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Due to throttling, the request was denied. Slow down the rate of request calls, or request
    #       an increase for this quota.</p>
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

    # <p>You've exceeded the number of tags allowed for a resource. For more information, see
    #         <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/sq-tagging.html#sq-tagging-restrictions">Tag
    #         restrictions</a> in the <i>Service Quotas User Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyTagsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the applied quota that you want to untag. You can get
    #         this information by using the Service Quotas console, or by listing the quotas using the <a href="https://docs.aws.amazon.com/cli/latest/reference/service-quotas/list-service-quotas.html">list-service-quotas</a> AWS CLI command or the <a href="https://docs.aws.amazon.com/servicequotas/2019-06-24/apireference/API_ListServiceQuotas.html">ListServiceQuotas</a> AWS API operation.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The keys of the tags that you want to remove from the resource.</p>
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

  end
end
