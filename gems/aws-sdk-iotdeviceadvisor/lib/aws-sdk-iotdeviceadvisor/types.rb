# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IotDeviceAdvisor
  module Types

    # <p>Sends a Conflict Exception.</p>
    #
    # @!attribute message
    #   <p>Sends a Conflict Exception message.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute suite_definition_configuration
    #   <p>Creates a Device Advisor test suite with suite definition configuration.</p>
    #
    #   @return [SuiteDefinitionConfiguration]
    #
    # @!attribute tags
    #   <p>The tags to be attached to the suite definition.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateSuiteDefinitionInput = ::Struct.new(
      :suite_definition_configuration,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Creates a Device Advisor test suite with suite UUID.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_definition_arn
    #   <p>Creates a Device Advisor test suite with Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute suite_definition_name
    #   <p>Creates a Device Advisor test suite with suite definition name.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>Creates a Device Advisor test suite with TimeStamp of when it was created.</p>
    #
    #   @return [Time]
    #
    CreateSuiteDefinitionOutput = ::Struct.new(
      :suite_definition_id,
      :suite_definition_arn,
      :suite_definition_name,
      :created_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the test suite to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteSuiteDefinitionInput = ::Struct.new(
      :suite_definition_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSuiteDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information of a test device. A thing ARN or a certificate ARN is required.</p>
    #
    # @!attribute thing_arn
    #   <p>Lists devices thing ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_arn
    #   <p>Lists devices certificate ARN.</p>
    #
    #   @return [String]
    #
    DeviceUnderTest = ::Struct.new(
      :thing_arn,
      :certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute thing_arn
    #   <p>The thing ARN of the device. This is an optional parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate_arn
    #   <p>The certificate ARN of the device. This is an optional parameter.</p>
    #
    #   @return [String]
    #
    GetEndpointInput = ::Struct.new(
      :thing_arn,
      :certificate_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute endpoint
    #   <p>The response of an Device Advisor endpoint.</p>
    #
    #   @return [String]
    #
    GetEndpointOutput = ::Struct.new(
      :endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the test suite to get.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_definition_version
    #   <p>Suite definition version of the test suite to get.</p>
    #
    #   @return [String]
    #
    GetSuiteDefinitionInput = ::Struct.new(
      :suite_definition_id,
      :suite_definition_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the suite definition.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_definition_arn
    #   <p>The ARN of the suite definition.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_definition_version
    #   <p>Suite definition version of the suite definition.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_version
    #   <p>Latest suite definition version of the suite definition.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_definition_configuration
    #   <p>Suite configuration of the suite definition.</p>
    #
    #   @return [SuiteDefinitionConfiguration]
    #
    # @!attribute created_at
    #   <p>Date (in Unix epoch time) when the suite definition was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_at
    #   <p>Date (in Unix epoch time) when the suite definition was last modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>Tags attached to the suite definition.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetSuiteDefinitionOutput = ::Struct.new(
      :suite_definition_id,
      :suite_definition_arn,
      :suite_definition_version,
      :latest_version,
      :suite_definition_configuration,
      :created_at,
      :last_modified_at,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Suite definition ID for the test suite run.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_run_id
    #   <p>Suite run ID for the test suite run.</p>
    #
    #   @return [String]
    #
    GetSuiteRunInput = ::Struct.new(
      :suite_definition_id,
      :suite_run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Suite definition ID for the test suite run.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_definition_version
    #   <p>Suite definition version for the test suite run.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_run_id
    #   <p>Suite run ID for the test suite run.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_run_arn
    #   <p>The ARN of the suite run.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_run_configuration
    #   <p>Suite run configuration for the test suite run.</p>
    #
    #   @return [SuiteRunConfiguration]
    #
    # @!attribute test_result
    #   <p>Test results for the test suite run.</p>
    #
    #   @return [TestResult]
    #
    # @!attribute start_time
    #   <p>Date (in Unix epoch time) when the test suite run started.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>Date (in Unix epoch time) when the test suite run ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>Status for the test suite run.</p>
    #
    #   Enum, one of: ["PASS", "FAIL", "CANCELED", "PENDING", "RUNNING", "STOPPING", "STOPPED", "PASS_WITH_WARNINGS", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute error_reason
    #   <p>Error reason for any test suite run failure.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags attached to the suite run.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetSuiteRunOutput = ::Struct.new(
      :suite_definition_id,
      :suite_definition_version,
      :suite_run_id,
      :suite_run_arn,
      :suite_run_configuration,
      :test_result,
      :start_time,
      :end_time,
      :status,
      :error_reason,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the test suite.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_run_id
    #   <p>Suite run ID of the test suite run.</p>
    #
    #   @return [String]
    #
    GetSuiteRunReportInput = ::Struct.new(
      :suite_definition_id,
      :suite_run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute qualification_report_download_url
    #   <p>Download URL of the qualification report.</p>
    #
    #   @return [String]
    #
    GetSuiteRunReportOutput = ::Struct.new(
      :qualification_report_download_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Show Group Result.</p>
    #
    # @!attribute group_id
    #   <p>Group result ID.</p>
    #
    #   @return [String]
    #
    # @!attribute group_name
    #   <p>Group Result Name.</p>
    #
    #   @return [String]
    #
    # @!attribute tests
    #   <p>Tests under Group Result.</p>
    #
    #   @return [Array<TestCaseRun>]
    #
    GroupResult = ::Struct.new(
      :group_id,
      :group_name,
      :tests,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Sends an Internal Failure exception.</p>
    #
    # @!attribute message
    #   <p>Sends an Internal Failure Exception message.</p>
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return at once.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token used to get the next set of results.</p>
    #
    #   @return [String]
    #
    ListSuiteDefinitionsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute suite_definition_information_list
    #   <p>An array of objects that provide summaries of information about the suite definitions in the list.</p>
    #
    #   @return [Array<SuiteDefinitionInformation>]
    #
    # @!attribute next_token
    #   <p>A token used to get the next set of results.</p>
    #
    #   @return [String]
    #
    ListSuiteDefinitionsOutput = ::Struct.new(
      :suite_definition_information_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Lists the test suite runs of the specified test suite based on suite definition
    #               ID.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_definition_version
    #   <p>Must be passed along with <code>suiteDefinitionId</code>. Lists the test suite runs of
    #               the specified test suite based on suite definition version.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return at once.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListSuiteRunsInput = ::Struct.new(
      :suite_definition_id,
      :suite_definition_version,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.max_results ||= 0
      end

    end

    # @!attribute suite_runs_list
    #   <p>An array of objects that provide summaries of information about the suite runs in the list.</p>
    #
    #   @return [Array<SuiteRunInformation>]
    #
    # @!attribute next_token
    #   <p>A token to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    ListSuiteRunsOutput = ::Struct.new(
      :suite_runs_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the IoT Device Advisor resource.</p>
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
    #   <p>The tags attached to the IoT Device Advisor resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Sends a Resource Not Found exception.</p>
    #
    # @!attribute message
    #   <p>Sends a Resource Not Found Exception message.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the test suite.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_definition_version
    #   <p>Suite definition version of the test suite.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_run_configuration
    #   <p>Suite run configuration.</p>
    #
    #   @return [SuiteRunConfiguration]
    #
    # @!attribute tags
    #   <p>The tags to be attached to the suite run.</p>
    #
    #   @return [Hash<String, String>]
    #
    StartSuiteRunInput = ::Struct.new(
      :suite_definition_id,
      :suite_definition_version,
      :suite_run_configuration,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute suite_run_id
    #   <p>Suite Run ID of the started suite run.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_run_arn
    #   <p>Amazon Resource Name (ARN) of the started suite run.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>Starts a Device Advisor test suite run based on suite create time.</p>
    #
    #   @return [Time]
    #
    StartSuiteRunOutput = ::Struct.new(
      :suite_run_id,
      :suite_run_arn,
      :created_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Status
    #
    module Status
      # No documentation available.
      #
      PASS = "PASS"

      # No documentation available.
      #
      FAIL = "FAIL"

      # No documentation available.
      #
      CANCELED = "CANCELED"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      STOPPED = "STOPPED"

      # No documentation available.
      #
      PASS_WITH_WARNINGS = "PASS_WITH_WARNINGS"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the test suite run to be stopped.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_run_id
    #   <p>Suite run ID of the test suite run to be stopped.</p>
    #
    #   @return [String]
    #
    StopSuiteRunInput = ::Struct.new(
      :suite_definition_id,
      :suite_run_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopSuiteRunOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Gets Suite Definition Configuration.</p>
    #
    # @!attribute suite_definition_name
    #   <p>Gets Suite Definition Configuration name.</p>
    #
    #   @return [String]
    #
    # @!attribute devices
    #   <p>Gets the devices configured.</p>
    #
    #   @return [Array<DeviceUnderTest>]
    #
    # @!attribute intended_for_qualification
    #   <p>Gets the tests intended for qualification in a suite.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute root_group
    #   <p>Gets test suite root group.</p>
    #
    #   @return [String]
    #
    # @!attribute device_permission_role_arn
    #   <p>Gets the device permission ARN.</p>
    #
    #   @return [String]
    #
    SuiteDefinitionConfiguration = ::Struct.new(
      :suite_definition_name,
      :devices,
      :intended_for_qualification,
      :root_group,
      :device_permission_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.intended_for_qualification ||= false
      end

    end

    # <p>Information about the suite definition.</p>
    #
    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the test suite.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_definition_name
    #   <p>Suite name of the test suite.</p>
    #
    #   @return [String]
    #
    # @!attribute default_devices
    #   <p>Specifies the devices that are under test for the test suite.</p>
    #
    #   @return [Array<DeviceUnderTest>]
    #
    # @!attribute intended_for_qualification
    #   <p>Specifies if the test suite is intended for qualification.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute created_at
    #   <p>Date (in Unix epoch time) when the test suite was created.</p>
    #
    #   @return [Time]
    #
    SuiteDefinitionInformation = ::Struct.new(
      :suite_definition_id,
      :suite_definition_name,
      :default_devices,
      :intended_for_qualification,
      :created_at,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.intended_for_qualification ||= false
      end

    end

    # <p>Gets suite run configuration.</p>
    #
    # @!attribute primary_device
    #   <p>Gets the primary device for suite run.</p>
    #
    #   @return [DeviceUnderTest]
    #
    # @!attribute selected_test_list
    #   <p>Gets test case list.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute parallel_run
    #   <p>TRUE if multiple test suites run in parallel.</p>
    #
    #   @return [Boolean]
    #
    SuiteRunConfiguration = ::Struct.new(
      :primary_device,
      :selected_test_list,
      :parallel_run,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.parallel_run ||= false
      end

    end

    # <p>Information about the suite run.</p>
    #         <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">SuiteRunInformation</a> action.</p>
    #
    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the suite run.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_definition_version
    #   <p>Suite definition version of the suite run.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_definition_name
    #   <p>Suite definition name of the suite run.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_run_id
    #   <p>Suite run ID of the suite run.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>Date (in Unix epoch time) when the suite run was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute started_at
    #   <p>Date (in Unix epoch time) when the suite run was started.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_at
    #   <p>Date (in Unix epoch time) when the suite run ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>Status of the suite run.</p>
    #
    #   Enum, one of: ["PASS", "FAIL", "CANCELED", "PENDING", "RUNNING", "STOPPING", "STOPPED", "PASS_WITH_WARNINGS", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute passed
    #   <p>Number of test cases that passed in the suite run.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failed
    #   <p>Number of test cases that failed in the suite run.</p>
    #
    #   @return [Integer]
    #
    SuiteRunInformation = ::Struct.new(
      :suite_definition_id,
      :suite_definition_version,
      :suite_definition_name,
      :suite_run_id,
      :created_at,
      :started_at,
      :end_at,
      :status,
      :passed,
      :failed,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.passed ||= 0
        self.failed ||= 0
      end

    end

    # Includes enum constants for SuiteRunStatus
    #
    module SuiteRunStatus
      # No documentation available.
      #
      PASS = "PASS"

      # No documentation available.
      #
      FAIL = "FAIL"

      # No documentation available.
      #
      CANCELED = "CANCELED"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      STOPPED = "STOPPED"

      # No documentation available.
      #
      PASS_WITH_WARNINGS = "PASS_WITH_WARNINGS"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # @!attribute resource_arn
    #   <p>The resource ARN of an IoT Device Advisor resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to be attached to the IoT Device Advisor resource.</p>
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

    # <p>Provides the test case run.</p>
    #
    # @!attribute test_case_run_id
    #   <p>Provides the test case run ID.</p>
    #
    #   @return [String]
    #
    # @!attribute test_case_definition_id
    #   <p>Provides the test case run definition ID.</p>
    #
    #   @return [String]
    #
    # @!attribute test_case_definition_name
    #   <p>Provides the test case run definition name.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Provides the test case run status. Status is one of the following:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>PASS</code>: Test passed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAIL</code>: Test failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code>: Test has not started running but is scheduled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code>: Test is running.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPING</code>: Test is performing cleanup steps. You will see this status only if you stop a suite run.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPED</code> Test is stopped. You will see this status only if you stop a suite run.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASS_WITH_WARNINGS</code>: Test passed with warnings.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERORR</code>: Test faced an error when running due to an internal issue.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PASS", "FAIL", "CANCELED", "PENDING", "RUNNING", "STOPPING", "STOPPED", "PASS_WITH_WARNINGS", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>Provides test case run start time.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>Provides test case run end time.</p>
    #
    #   @return [Time]
    #
    # @!attribute log_url
    #   <p>Provides test case run log URL.</p>
    #
    #   @return [String]
    #
    # @!attribute warnings
    #   <p>Provides test case run warnings.</p>
    #
    #   @return [String]
    #
    # @!attribute failure
    #   <p>Provides test case run failure result.</p>
    #
    #   @return [String]
    #
    TestCaseRun = ::Struct.new(
      :test_case_run_id,
      :test_case_definition_id,
      :test_case_definition_name,
      :status,
      :start_time,
      :end_time,
      :log_url,
      :warnings,
      :failure,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Show each group result.</p>
    #
    # @!attribute groups
    #   <p>Show each group of test results.</p>
    #
    #   @return [Array<GroupResult>]
    #
    TestResult = ::Struct.new(
      :groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN of an IoT Device Advisor resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>List of tag keys to remove from the IoT Device Advisor resource.</p>
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

    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the test suite to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_definition_configuration
    #   <p>Updates a Device Advisor test suite with suite definition configuration.</p>
    #
    #   @return [SuiteDefinitionConfiguration]
    #
    UpdateSuiteDefinitionInput = ::Struct.new(
      :suite_definition_id,
      :suite_definition_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the updated test suite.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_definition_arn
    #   <p>Amazon Resource Name (ARN) of the updated test suite.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_definition_name
    #   <p>Suite definition name of the updated test suite.</p>
    #
    #   @return [String]
    #
    # @!attribute suite_definition_version
    #   <p>Suite definition version of the updated test suite.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>Timestamp of when the test suite was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>Timestamp of when the test suite was updated.</p>
    #
    #   @return [Time]
    #
    UpdateSuiteDefinitionOutput = ::Struct.new(
      :suite_definition_id,
      :suite_definition_arn,
      :suite_definition_name,
      :suite_definition_version,
      :created_at,
      :last_updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Sends a validation exception.</p>
    #
    # @!attribute message
    #   <p>Sends a Validation Exception message.</p>
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
