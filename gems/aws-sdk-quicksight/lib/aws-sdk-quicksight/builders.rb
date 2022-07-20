# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::QuickSight
  module Builders

    # Operation Builder for CancelIngestion
    class CancelIngestion
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        if input[:ingestion_id].to_s.empty?
          raise ArgumentError, "HTTP label :ingestion_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/data-sets/%<DataSetId>s/ingestions/%<IngestionId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s),
            IngestionId: Hearth::HTTP.uri_escape(input[:ingestion_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateAccountCustomization
    class CreateAccountCustomization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/customizations',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AccountCustomization'] = Builders::AccountCustomization.build(input[:account_customization]) unless input[:account_customization].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for AccountCustomization
    class AccountCustomization
      def self.build(input)
        data = {}
        data['DefaultTheme'] = input[:default_theme] unless input[:default_theme].nil?
        data['DefaultEmailCustomizationTemplate'] = input[:default_email_customization_template] unless input[:default_email_customization_template].nil?
        data
      end
    end

    # Operation Builder for CreateAnalysis
    class CreateAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:analysis_id].to_s.empty?
          raise ArgumentError, "HTTP label :analysis_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/analyses/%<AnalysisId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            AnalysisId: Hearth::HTTP.uri_escape(input[:analysis_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Parameters'] = Builders::Parameters.build(input[:parameters]) unless input[:parameters].nil?
        data['Permissions'] = Builders::ResourcePermissionList.build(input[:permissions]) unless input[:permissions].nil?
        data['SourceEntity'] = Builders::AnalysisSourceEntity.build(input[:source_entity]) unless input[:source_entity].nil?
        data['ThemeArn'] = input[:theme_arn] unless input[:theme_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AnalysisSourceEntity
    class AnalysisSourceEntity
      def self.build(input)
        data = {}
        data['SourceTemplate'] = Builders::AnalysisSourceTemplate.build(input[:source_template]) unless input[:source_template].nil?
        data
      end
    end

    # Structure Builder for AnalysisSourceTemplate
    class AnalysisSourceTemplate
      def self.build(input)
        data = {}
        data['DataSetReferences'] = Builders::DataSetReferenceList.build(input[:data_set_references]) unless input[:data_set_references].nil?
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data
      end
    end

    # List Builder for DataSetReferenceList
    class DataSetReferenceList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DataSetReference.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DataSetReference
    class DataSetReference
      def self.build(input)
        data = {}
        data['DataSetPlaceholder'] = input[:data_set_placeholder] unless input[:data_set_placeholder].nil?
        data['DataSetArn'] = input[:data_set_arn] unless input[:data_set_arn].nil?
        data
      end
    end

    # List Builder for ResourcePermissionList
    class ResourcePermissionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ResourcePermission.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResourcePermission
    class ResourcePermission
      def self.build(input)
        data = {}
        data['Principal'] = input[:principal] unless input[:principal].nil?
        data['Actions'] = Builders::ActionList.build(input[:actions]) unless input[:actions].nil?
        data
      end
    end

    # List Builder for ActionList
    class ActionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Parameters
    class Parameters
      def self.build(input)
        data = {}
        data['StringParameters'] = Builders::StringParameterList.build(input[:string_parameters]) unless input[:string_parameters].nil?
        data['IntegerParameters'] = Builders::IntegerParameterList.build(input[:integer_parameters]) unless input[:integer_parameters].nil?
        data['DecimalParameters'] = Builders::DecimalParameterList.build(input[:decimal_parameters]) unless input[:decimal_parameters].nil?
        data['DateTimeParameters'] = Builders::DateTimeParameterList.build(input[:date_time_parameters]) unless input[:date_time_parameters].nil?
        data
      end
    end

    # List Builder for DateTimeParameterList
    class DateTimeParameterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DateTimeParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DateTimeParameter
    class DateTimeParameter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::TimestampList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for TimestampList
    class TimestampList
      def self.build(input)
        data = []
        input.each do |element|
          data << Hearth::TimeHelper.to_epoch_seconds(element).to_i unless element.nil?
        end
        data
      end
    end

    # List Builder for DecimalParameterList
    class DecimalParameterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DecimalParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DecimalParameter
    class DecimalParameter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::DoubleList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for DoubleList
    class DoubleList
      def self.build(input)
        data = []
        input.each do |element|
          data << Hearth::NumberHelper.serialize(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for IntegerParameterList
    class IntegerParameterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::IntegerParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for IntegerParameter
    class IntegerParameter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::LongList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for LongList
    class LongList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for StringParameterList
    class StringParameterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::StringParameter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StringParameter
    class StringParameter
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Values'] = Builders::StringList.build(input[:values]) unless input[:values].nil?
        data
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDashboard
    class CreateDashboard
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:dashboard_id].to_s.empty?
          raise ArgumentError, "HTTP label :dashboard_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/dashboards/%<DashboardId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DashboardId: Hearth::HTTP.uri_escape(input[:dashboard_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Parameters'] = Builders::Parameters.build(input[:parameters]) unless input[:parameters].nil?
        data['Permissions'] = Builders::ResourcePermissionList.build(input[:permissions]) unless input[:permissions].nil?
        data['SourceEntity'] = Builders::DashboardSourceEntity.build(input[:source_entity]) unless input[:source_entity].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['VersionDescription'] = input[:version_description] unless input[:version_description].nil?
        data['DashboardPublishOptions'] = Builders::DashboardPublishOptions.build(input[:dashboard_publish_options]) unless input[:dashboard_publish_options].nil?
        data['ThemeArn'] = input[:theme_arn] unless input[:theme_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DashboardPublishOptions
    class DashboardPublishOptions
      def self.build(input)
        data = {}
        data['AdHocFilteringOption'] = Builders::AdHocFilteringOption.build(input[:ad_hoc_filtering_option]) unless input[:ad_hoc_filtering_option].nil?
        data['ExportToCSVOption'] = Builders::ExportToCSVOption.build(input[:export_to_csv_option]) unless input[:export_to_csv_option].nil?
        data['SheetControlsOption'] = Builders::SheetControlsOption.build(input[:sheet_controls_option]) unless input[:sheet_controls_option].nil?
        data
      end
    end

    # Structure Builder for SheetControlsOption
    class SheetControlsOption
      def self.build(input)
        data = {}
        data['VisibilityState'] = input[:visibility_state] unless input[:visibility_state].nil?
        data
      end
    end

    # Structure Builder for ExportToCSVOption
    class ExportToCSVOption
      def self.build(input)
        data = {}
        data['AvailabilityStatus'] = input[:availability_status] unless input[:availability_status].nil?
        data
      end
    end

    # Structure Builder for AdHocFilteringOption
    class AdHocFilteringOption
      def self.build(input)
        data = {}
        data['AvailabilityStatus'] = input[:availability_status] unless input[:availability_status].nil?
        data
      end
    end

    # Structure Builder for DashboardSourceEntity
    class DashboardSourceEntity
      def self.build(input)
        data = {}
        data['SourceTemplate'] = Builders::DashboardSourceTemplate.build(input[:source_template]) unless input[:source_template].nil?
        data
      end
    end

    # Structure Builder for DashboardSourceTemplate
    class DashboardSourceTemplate
      def self.build(input)
        data = {}
        data['DataSetReferences'] = Builders::DataSetReferenceList.build(input[:data_set_references]) unless input[:data_set_references].nil?
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data
      end
    end

    # Operation Builder for CreateDataSet
    class CreateDataSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/data-sets',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DataSetId'] = input[:data_set_id] unless input[:data_set_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['PhysicalTableMap'] = Builders::PhysicalTableMap.build(input[:physical_table_map]) unless input[:physical_table_map].nil?
        data['LogicalTableMap'] = Builders::LogicalTableMap.build(input[:logical_table_map]) unless input[:logical_table_map].nil?
        data['ImportMode'] = input[:import_mode] unless input[:import_mode].nil?
        data['ColumnGroups'] = Builders::ColumnGroupList.build(input[:column_groups]) unless input[:column_groups].nil?
        data['FieldFolders'] = Builders::FieldFolderMap.build(input[:field_folders]) unless input[:field_folders].nil?
        data['Permissions'] = Builders::ResourcePermissionList.build(input[:permissions]) unless input[:permissions].nil?
        data['RowLevelPermissionDataSet'] = Builders::RowLevelPermissionDataSet.build(input[:row_level_permission_data_set]) unless input[:row_level_permission_data_set].nil?
        data['RowLevelPermissionTagConfiguration'] = Builders::RowLevelPermissionTagConfiguration.build(input[:row_level_permission_tag_configuration]) unless input[:row_level_permission_tag_configuration].nil?
        data['ColumnLevelPermissionRules'] = Builders::ColumnLevelPermissionRuleList.build(input[:column_level_permission_rules]) unless input[:column_level_permission_rules].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['DataSetUsageConfiguration'] = Builders::DataSetUsageConfiguration.build(input[:data_set_usage_configuration]) unless input[:data_set_usage_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DataSetUsageConfiguration
    class DataSetUsageConfiguration
      def self.build(input)
        data = {}
        data['DisableUseAsDirectQuerySource'] = input[:disable_use_as_direct_query_source] unless input[:disable_use_as_direct_query_source].nil?
        data['DisableUseAsImportedSource'] = input[:disable_use_as_imported_source] unless input[:disable_use_as_imported_source].nil?
        data
      end
    end

    # List Builder for ColumnLevelPermissionRuleList
    class ColumnLevelPermissionRuleList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ColumnLevelPermissionRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ColumnLevelPermissionRule
    class ColumnLevelPermissionRule
      def self.build(input)
        data = {}
        data['Principals'] = Builders::PrincipalList.build(input[:principals]) unless input[:principals].nil?
        data['ColumnNames'] = Builders::ColumnNameList.build(input[:column_names]) unless input[:column_names].nil?
        data
      end
    end

    # List Builder for ColumnNameList
    class ColumnNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for PrincipalList
    class PrincipalList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RowLevelPermissionTagConfiguration
    class RowLevelPermissionTagConfiguration
      def self.build(input)
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data['TagRules'] = Builders::RowLevelPermissionTagRuleList.build(input[:tag_rules]) unless input[:tag_rules].nil?
        data
      end
    end

    # List Builder for RowLevelPermissionTagRuleList
    class RowLevelPermissionTagRuleList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RowLevelPermissionTagRule.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RowLevelPermissionTagRule
    class RowLevelPermissionTagRule
      def self.build(input)
        data = {}
        data['TagKey'] = input[:tag_key] unless input[:tag_key].nil?
        data['ColumnName'] = input[:column_name] unless input[:column_name].nil?
        data['TagMultiValueDelimiter'] = input[:tag_multi_value_delimiter] unless input[:tag_multi_value_delimiter].nil?
        data['MatchAllValue'] = input[:match_all_value] unless input[:match_all_value].nil?
        data
      end
    end

    # Structure Builder for RowLevelPermissionDataSet
    class RowLevelPermissionDataSet
      def self.build(input)
        data = {}
        data['Namespace'] = input[:namespace] unless input[:namespace].nil?
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['PermissionPolicy'] = input[:permission_policy] unless input[:permission_policy].nil?
        data['FormatVersion'] = input[:format_version] unless input[:format_version].nil?
        data['Status'] = input[:status] unless input[:status].nil?
        data
      end
    end

    # Map Builder for FieldFolderMap
    class FieldFolderMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::FieldFolder.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for FieldFolder
    class FieldFolder
      def self.build(input)
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['columns'] = Builders::FolderColumnList.build(input[:columns]) unless input[:columns].nil?
        data
      end
    end

    # List Builder for FolderColumnList
    class FolderColumnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ColumnGroupList
    class ColumnGroupList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ColumnGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ColumnGroup
    class ColumnGroup
      def self.build(input)
        data = {}
        data['GeoSpatialColumnGroup'] = Builders::GeoSpatialColumnGroup.build(input[:geo_spatial_column_group]) unless input[:geo_spatial_column_group].nil?
        data
      end
    end

    # Structure Builder for GeoSpatialColumnGroup
    class GeoSpatialColumnGroup
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['CountryCode'] = input[:country_code] unless input[:country_code].nil?
        data['Columns'] = Builders::ColumnList.build(input[:columns]) unless input[:columns].nil?
        data
      end
    end

    # List Builder for ColumnList
    class ColumnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for LogicalTableMap
    class LogicalTableMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::LogicalTable.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for LogicalTable
    class LogicalTable
      def self.build(input)
        data = {}
        data['Alias'] = input[:alias] unless input[:alias].nil?
        data['DataTransforms'] = Builders::TransformOperationList.build(input[:data_transforms]) unless input[:data_transforms].nil?
        data['Source'] = Builders::LogicalTableSource.build(input[:source]) unless input[:source].nil?
        data
      end
    end

    # Structure Builder for LogicalTableSource
    class LogicalTableSource
      def self.build(input)
        data = {}
        data['JoinInstruction'] = Builders::JoinInstruction.build(input[:join_instruction]) unless input[:join_instruction].nil?
        data['PhysicalTableId'] = input[:physical_table_id] unless input[:physical_table_id].nil?
        data['DataSetArn'] = input[:data_set_arn] unless input[:data_set_arn].nil?
        data
      end
    end

    # Structure Builder for JoinInstruction
    class JoinInstruction
      def self.build(input)
        data = {}
        data['LeftOperand'] = input[:left_operand] unless input[:left_operand].nil?
        data['RightOperand'] = input[:right_operand] unless input[:right_operand].nil?
        data['LeftJoinKeyProperties'] = Builders::JoinKeyProperties.build(input[:left_join_key_properties]) unless input[:left_join_key_properties].nil?
        data['RightJoinKeyProperties'] = Builders::JoinKeyProperties.build(input[:right_join_key_properties]) unless input[:right_join_key_properties].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['OnClause'] = input[:on_clause] unless input[:on_clause].nil?
        data
      end
    end

    # Structure Builder for JoinKeyProperties
    class JoinKeyProperties
      def self.build(input)
        data = {}
        data['UniqueKey'] = input[:unique_key] unless input[:unique_key].nil?
        data
      end
    end

    # List Builder for TransformOperationList
    class TransformOperationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::TransformOperation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TransformOperation
    class TransformOperation
      def self.build(input)
        data = {}
        case input
        when Types::TransformOperation::ProjectOperation
          data['ProjectOperation'] = (Builders::ProjectOperation.build(input) unless input.nil?)
        when Types::TransformOperation::FilterOperation
          data['FilterOperation'] = (Builders::FilterOperation.build(input) unless input.nil?)
        when Types::TransformOperation::CreateColumnsOperation
          data['CreateColumnsOperation'] = (Builders::CreateColumnsOperation.build(input) unless input.nil?)
        when Types::TransformOperation::RenameColumnOperation
          data['RenameColumnOperation'] = (Builders::RenameColumnOperation.build(input) unless input.nil?)
        when Types::TransformOperation::CastColumnTypeOperation
          data['CastColumnTypeOperation'] = (Builders::CastColumnTypeOperation.build(input) unless input.nil?)
        when Types::TransformOperation::TagColumnOperation
          data['TagColumnOperation'] = (Builders::TagColumnOperation.build(input) unless input.nil?)
        when Types::TransformOperation::UntagColumnOperation
          data['UntagColumnOperation'] = (Builders::UntagColumnOperation.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::TransformOperation"
        end

        data
      end
    end

    # Structure Builder for UntagColumnOperation
    class UntagColumnOperation
      def self.build(input)
        data = {}
        data['ColumnName'] = input[:column_name] unless input[:column_name].nil?
        data['TagNames'] = Builders::ColumnTagNames.build(input[:tag_names]) unless input[:tag_names].nil?
        data
      end
    end

    # List Builder for ColumnTagNames
    class ColumnTagNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for TagColumnOperation
    class TagColumnOperation
      def self.build(input)
        data = {}
        data['ColumnName'] = input[:column_name] unless input[:column_name].nil?
        data['Tags'] = Builders::ColumnTagList.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # List Builder for ColumnTagList
    class ColumnTagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ColumnTag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ColumnTag
    class ColumnTag
      def self.build(input)
        data = {}
        data['ColumnGeographicRole'] = input[:column_geographic_role] unless input[:column_geographic_role].nil?
        data['ColumnDescription'] = Builders::ColumnDescription.build(input[:column_description]) unless input[:column_description].nil?
        data
      end
    end

    # Structure Builder for ColumnDescription
    class ColumnDescription
      def self.build(input)
        data = {}
        data['Text'] = input[:text] unless input[:text].nil?
        data
      end
    end

    # Structure Builder for CastColumnTypeOperation
    class CastColumnTypeOperation
      def self.build(input)
        data = {}
        data['ColumnName'] = input[:column_name] unless input[:column_name].nil?
        data['NewColumnType'] = input[:new_column_type] unless input[:new_column_type].nil?
        data['Format'] = input[:format] unless input[:format].nil?
        data
      end
    end

    # Structure Builder for RenameColumnOperation
    class RenameColumnOperation
      def self.build(input)
        data = {}
        data['ColumnName'] = input[:column_name] unless input[:column_name].nil?
        data['NewColumnName'] = input[:new_column_name] unless input[:new_column_name].nil?
        data
      end
    end

    # Structure Builder for CreateColumnsOperation
    class CreateColumnsOperation
      def self.build(input)
        data = {}
        data['Columns'] = Builders::CalculatedColumnList.build(input[:columns]) unless input[:columns].nil?
        data
      end
    end

    # List Builder for CalculatedColumnList
    class CalculatedColumnList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::CalculatedColumn.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for CalculatedColumn
    class CalculatedColumn
      def self.build(input)
        data = {}
        data['ColumnName'] = input[:column_name] unless input[:column_name].nil?
        data['ColumnId'] = input[:column_id] unless input[:column_id].nil?
        data['Expression'] = input[:expression] unless input[:expression].nil?
        data
      end
    end

    # Structure Builder for FilterOperation
    class FilterOperation
      def self.build(input)
        data = {}
        data['ConditionExpression'] = input[:condition_expression] unless input[:condition_expression].nil?
        data
      end
    end

    # Structure Builder for ProjectOperation
    class ProjectOperation
      def self.build(input)
        data = {}
        data['ProjectedColumns'] = Builders::ProjectedColumnList.build(input[:projected_columns]) unless input[:projected_columns].nil?
        data
      end
    end

    # List Builder for ProjectedColumnList
    class ProjectedColumnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Builder for PhysicalTableMap
    class PhysicalTableMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::PhysicalTable.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for PhysicalTable
    class PhysicalTable
      def self.build(input)
        data = {}
        case input
        when Types::PhysicalTable::RelationalTable
          data['RelationalTable'] = (Builders::RelationalTable.build(input) unless input.nil?)
        when Types::PhysicalTable::CustomSql
          data['CustomSql'] = (Builders::CustomSql.build(input) unless input.nil?)
        when Types::PhysicalTable::S3Source
          data['S3Source'] = (Builders::S3Source.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::PhysicalTable"
        end

        data
      end
    end

    # Structure Builder for S3Source
    class S3Source
      def self.build(input)
        data = {}
        data['DataSourceArn'] = input[:data_source_arn] unless input[:data_source_arn].nil?
        data['UploadSettings'] = Builders::UploadSettings.build(input[:upload_settings]) unless input[:upload_settings].nil?
        data['InputColumns'] = Builders::InputColumnList.build(input[:input_columns]) unless input[:input_columns].nil?
        data
      end
    end

    # List Builder for InputColumnList
    class InputColumnList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InputColumn.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InputColumn
    class InputColumn
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data
      end
    end

    # Structure Builder for UploadSettings
    class UploadSettings
      def self.build(input)
        data = {}
        data['Format'] = input[:format] unless input[:format].nil?
        data['StartFromRow'] = input[:start_from_row] unless input[:start_from_row].nil?
        data['ContainsHeader'] = input[:contains_header] unless input[:contains_header].nil?
        data['TextQualifier'] = input[:text_qualifier] unless input[:text_qualifier].nil?
        data['Delimiter'] = input[:delimiter] unless input[:delimiter].nil?
        data
      end
    end

    # Structure Builder for CustomSql
    class CustomSql
      def self.build(input)
        data = {}
        data['DataSourceArn'] = input[:data_source_arn] unless input[:data_source_arn].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['SqlQuery'] = input[:sql_query] unless input[:sql_query].nil?
        data['Columns'] = Builders::InputColumnList.build(input[:columns]) unless input[:columns].nil?
        data
      end
    end

    # Structure Builder for RelationalTable
    class RelationalTable
      def self.build(input)
        data = {}
        data['DataSourceArn'] = input[:data_source_arn] unless input[:data_source_arn].nil?
        data['Catalog'] = input[:catalog] unless input[:catalog].nil?
        data['Schema'] = input[:schema] unless input[:schema].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['InputColumns'] = Builders::InputColumnList.build(input[:input_columns]) unless input[:input_columns].nil?
        data
      end
    end

    # Operation Builder for CreateDataSource
    class CreateDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/data-sources',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DataSourceId'] = input[:data_source_id] unless input[:data_source_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['DataSourceParameters'] = Builders::DataSourceParameters.build(input[:data_source_parameters]) unless input[:data_source_parameters].nil?
        data['Credentials'] = Builders::DataSourceCredentials.build(input[:credentials]) unless input[:credentials].nil?
        data['Permissions'] = Builders::ResourcePermissionList.build(input[:permissions]) unless input[:permissions].nil?
        data['VpcConnectionProperties'] = Builders::VpcConnectionProperties.build(input[:vpc_connection_properties]) unless input[:vpc_connection_properties].nil?
        data['SslProperties'] = Builders::SslProperties.build(input[:ssl_properties]) unless input[:ssl_properties].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SslProperties
    class SslProperties
      def self.build(input)
        data = {}
        data['DisableSsl'] = input[:disable_ssl] unless input[:disable_ssl].nil?
        data
      end
    end

    # Structure Builder for VpcConnectionProperties
    class VpcConnectionProperties
      def self.build(input)
        data = {}
        data['VpcConnectionArn'] = input[:vpc_connection_arn] unless input[:vpc_connection_arn].nil?
        data
      end
    end

    # Structure Builder for DataSourceCredentials
    class DataSourceCredentials
      def self.build(input)
        data = {}
        data['CredentialPair'] = Builders::CredentialPair.build(input[:credential_pair]) unless input[:credential_pair].nil?
        data['CopySourceArn'] = input[:copy_source_arn] unless input[:copy_source_arn].nil?
        data
      end
    end

    # Structure Builder for CredentialPair
    class CredentialPair
      def self.build(input)
        data = {}
        data['Username'] = input[:username] unless input[:username].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        data['AlternateDataSourceParameters'] = Builders::DataSourceParametersList.build(input[:alternate_data_source_parameters]) unless input[:alternate_data_source_parameters].nil?
        data
      end
    end

    # List Builder for DataSourceParametersList
    class DataSourceParametersList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DataSourceParameters.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DataSourceParameters
    class DataSourceParameters
      def self.build(input)
        data = {}
        case input
        when Types::DataSourceParameters::AmazonElasticsearchParameters
          data['AmazonElasticsearchParameters'] = (Builders::AmazonElasticsearchParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::AthenaParameters
          data['AthenaParameters'] = (Builders::AthenaParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::AuroraParameters
          data['AuroraParameters'] = (Builders::AuroraParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::AuroraPostgreSqlParameters
          data['AuroraPostgreSqlParameters'] = (Builders::AuroraPostgreSqlParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::AwsIotAnalyticsParameters
          data['AwsIotAnalyticsParameters'] = (Builders::AwsIotAnalyticsParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::JiraParameters
          data['JiraParameters'] = (Builders::JiraParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::MariaDbParameters
          data['MariaDbParameters'] = (Builders::MariaDbParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::MySqlParameters
          data['MySqlParameters'] = (Builders::MySqlParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::OracleParameters
          data['OracleParameters'] = (Builders::OracleParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::PostgreSqlParameters
          data['PostgreSqlParameters'] = (Builders::PostgreSqlParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::PrestoParameters
          data['PrestoParameters'] = (Builders::PrestoParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::RdsParameters
          data['RdsParameters'] = (Builders::RdsParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::RedshiftParameters
          data['RedshiftParameters'] = (Builders::RedshiftParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::S3Parameters
          data['S3Parameters'] = (Builders::S3Parameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::ServiceNowParameters
          data['ServiceNowParameters'] = (Builders::ServiceNowParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::SnowflakeParameters
          data['SnowflakeParameters'] = (Builders::SnowflakeParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::SparkParameters
          data['SparkParameters'] = (Builders::SparkParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::SqlServerParameters
          data['SqlServerParameters'] = (Builders::SqlServerParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::TeradataParameters
          data['TeradataParameters'] = (Builders::TeradataParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::TwitterParameters
          data['TwitterParameters'] = (Builders::TwitterParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::AmazonOpenSearchParameters
          data['AmazonOpenSearchParameters'] = (Builders::AmazonOpenSearchParameters.build(input) unless input.nil?)
        when Types::DataSourceParameters::ExasolParameters
          data['ExasolParameters'] = (Builders::ExasolParameters.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::DataSourceParameters"
        end

        data
      end
    end

    # Structure Builder for ExasolParameters
    class ExasolParameters
      def self.build(input)
        data = {}
        data['Host'] = input[:host] unless input[:host].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data
      end
    end

    # Structure Builder for AmazonOpenSearchParameters
    class AmazonOpenSearchParameters
      def self.build(input)
        data = {}
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data
      end
    end

    # Structure Builder for TwitterParameters
    class TwitterParameters
      def self.build(input)
        data = {}
        data['Query'] = input[:query] unless input[:query].nil?
        data['MaxRows'] = input[:max_rows] unless input[:max_rows].nil?
        data
      end
    end

    # Structure Builder for TeradataParameters
    class TeradataParameters
      def self.build(input)
        data = {}
        data['Host'] = input[:host] unless input[:host].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data
      end
    end

    # Structure Builder for SqlServerParameters
    class SqlServerParameters
      def self.build(input)
        data = {}
        data['Host'] = input[:host] unless input[:host].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data
      end
    end

    # Structure Builder for SparkParameters
    class SparkParameters
      def self.build(input)
        data = {}
        data['Host'] = input[:host] unless input[:host].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data
      end
    end

    # Structure Builder for SnowflakeParameters
    class SnowflakeParameters
      def self.build(input)
        data = {}
        data['Host'] = input[:host] unless input[:host].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['Warehouse'] = input[:warehouse] unless input[:warehouse].nil?
        data
      end
    end

    # Structure Builder for ServiceNowParameters
    class ServiceNowParameters
      def self.build(input)
        data = {}
        data['SiteBaseUrl'] = input[:site_base_url] unless input[:site_base_url].nil?
        data
      end
    end

    # Structure Builder for S3Parameters
    class S3Parameters
      def self.build(input)
        data = {}
        data['ManifestFileLocation'] = Builders::ManifestFileLocation.build(input[:manifest_file_location]) unless input[:manifest_file_location].nil?
        data
      end
    end

    # Structure Builder for ManifestFileLocation
    class ManifestFileLocation
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['Key'] = input[:key] unless input[:key].nil?
        data
      end
    end

    # Structure Builder for RedshiftParameters
    class RedshiftParameters
      def self.build(input)
        data = {}
        data['Host'] = input[:host] unless input[:host].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data['ClusterId'] = input[:cluster_id] unless input[:cluster_id].nil?
        data
      end
    end

    # Structure Builder for RdsParameters
    class RdsParameters
      def self.build(input)
        data = {}
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data
      end
    end

    # Structure Builder for PrestoParameters
    class PrestoParameters
      def self.build(input)
        data = {}
        data['Host'] = input[:host] unless input[:host].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['Catalog'] = input[:catalog] unless input[:catalog].nil?
        data
      end
    end

    # Structure Builder for PostgreSqlParameters
    class PostgreSqlParameters
      def self.build(input)
        data = {}
        data['Host'] = input[:host] unless input[:host].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data
      end
    end

    # Structure Builder for OracleParameters
    class OracleParameters
      def self.build(input)
        data = {}
        data['Host'] = input[:host] unless input[:host].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data
      end
    end

    # Structure Builder for MySqlParameters
    class MySqlParameters
      def self.build(input)
        data = {}
        data['Host'] = input[:host] unless input[:host].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data
      end
    end

    # Structure Builder for MariaDbParameters
    class MariaDbParameters
      def self.build(input)
        data = {}
        data['Host'] = input[:host] unless input[:host].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data
      end
    end

    # Structure Builder for JiraParameters
    class JiraParameters
      def self.build(input)
        data = {}
        data['SiteBaseUrl'] = input[:site_base_url] unless input[:site_base_url].nil?
        data
      end
    end

    # Structure Builder for AwsIotAnalyticsParameters
    class AwsIotAnalyticsParameters
      def self.build(input)
        data = {}
        data['DataSetName'] = input[:data_set_name] unless input[:data_set_name].nil?
        data
      end
    end

    # Structure Builder for AuroraPostgreSqlParameters
    class AuroraPostgreSqlParameters
      def self.build(input)
        data = {}
        data['Host'] = input[:host] unless input[:host].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data
      end
    end

    # Structure Builder for AuroraParameters
    class AuroraParameters
      def self.build(input)
        data = {}
        data['Host'] = input[:host] unless input[:host].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['Database'] = input[:database] unless input[:database].nil?
        data
      end
    end

    # Structure Builder for AthenaParameters
    class AthenaParameters
      def self.build(input)
        data = {}
        data['WorkGroup'] = input[:work_group] unless input[:work_group].nil?
        data
      end
    end

    # Structure Builder for AmazonElasticsearchParameters
    class AmazonElasticsearchParameters
      def self.build(input)
        data = {}
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data
      end
    end

    # Operation Builder for CreateFolder
    class CreateFolder
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:folder_id].to_s.empty?
          raise ArgumentError, "HTTP label :folder_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/folders/%<FolderId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            FolderId: Hearth::HTTP.uri_escape(input[:folder_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['FolderType'] = input[:folder_type] unless input[:folder_type].nil?
        data['ParentFolderArn'] = input[:parent_folder_arn] unless input[:parent_folder_arn].nil?
        data['Permissions'] = Builders::ResourcePermissionList.build(input[:permissions]) unless input[:permissions].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateFolderMembership
    class CreateFolderMembership
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:folder_id].to_s.empty?
          raise ArgumentError, "HTTP label :folder_id cannot be nil or empty."
        end
        if input[:member_id].to_s.empty?
          raise ArgumentError, "HTTP label :member_id cannot be nil or empty."
        end
        if input[:member_type].to_s.empty?
          raise ArgumentError, "HTTP label :member_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/folders/%<FolderId>s/members/%<MemberType>s/%<MemberId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            FolderId: Hearth::HTTP.uri_escape(input[:folder_id].to_s),
            MemberId: Hearth::HTTP.uri_escape(input[:member_id].to_s),
            MemberType: Hearth::HTTP.uri_escape(input[:member_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateGroup
    class CreateGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/groups',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GroupName'] = input[:group_name] unless input[:group_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateGroupMembership
    class CreateGroupMembership
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:member_name].to_s.empty?
          raise ArgumentError, "HTTP label :member_name cannot be nil or empty."
        end
        if input[:group_name].to_s.empty?
          raise ArgumentError, "HTTP label :group_name cannot be nil or empty."
        end
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/groups/%<GroupName>s/members/%<MemberName>s',
            MemberName: Hearth::HTTP.uri_escape(input[:member_name].to_s),
            GroupName: Hearth::HTTP.uri_escape(input[:group_name].to_s),
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateIAMPolicyAssignment
    class CreateIAMPolicyAssignment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/iam-policy-assignments',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AssignmentName'] = input[:assignment_name] unless input[:assignment_name].nil?
        data['AssignmentStatus'] = input[:assignment_status] unless input[:assignment_status].nil?
        data['PolicyArn'] = input[:policy_arn] unless input[:policy_arn].nil?
        data['Identities'] = Builders::IdentityMap.build(input[:identities]) unless input[:identities].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for IdentityMap
    class IdentityMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::IdentityNameList.build(value) unless value.nil?
        end
        data
      end
    end

    # List Builder for IdentityNameList
    class IdentityNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateIngestion
    class CreateIngestion
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        if input[:ingestion_id].to_s.empty?
          raise ArgumentError, "HTTP label :ingestion_id cannot be nil or empty."
        end
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/data-sets/%<DataSetId>s/ingestions/%<IngestionId>s',
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s),
            IngestionId: Hearth::HTTP.uri_escape(input[:ingestion_id].to_s),
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['IngestionType'] = input[:ingestion_type] unless input[:ingestion_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateNamespace
    class CreateNamespace
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Namespace'] = input[:namespace] unless input[:namespace].nil?
        data['IdentityStore'] = input[:identity_store] unless input[:identity_store].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateTemplate
    class CreateTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:template_id].to_s.empty?
          raise ArgumentError, "HTTP label :template_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/templates/%<TemplateId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            TemplateId: Hearth::HTTP.uri_escape(input[:template_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Permissions'] = Builders::ResourcePermissionList.build(input[:permissions]) unless input[:permissions].nil?
        data['SourceEntity'] = Builders::TemplateSourceEntity.build(input[:source_entity]) unless input[:source_entity].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['VersionDescription'] = input[:version_description] unless input[:version_description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TemplateSourceEntity
    class TemplateSourceEntity
      def self.build(input)
        data = {}
        data['SourceAnalysis'] = Builders::TemplateSourceAnalysis.build(input[:source_analysis]) unless input[:source_analysis].nil?
        data['SourceTemplate'] = Builders::TemplateSourceTemplate.build(input[:source_template]) unless input[:source_template].nil?
        data
      end
    end

    # Structure Builder for TemplateSourceTemplate
    class TemplateSourceTemplate
      def self.build(input)
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data
      end
    end

    # Structure Builder for TemplateSourceAnalysis
    class TemplateSourceAnalysis
      def self.build(input)
        data = {}
        data['Arn'] = input[:arn] unless input[:arn].nil?
        data['DataSetReferences'] = Builders::DataSetReferenceList.build(input[:data_set_references]) unless input[:data_set_references].nil?
        data
      end
    end

    # Operation Builder for CreateTemplateAlias
    class CreateTemplateAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:template_id].to_s.empty?
          raise ArgumentError, "HTTP label :template_id cannot be nil or empty."
        end
        if input[:alias_name].to_s.empty?
          raise ArgumentError, "HTTP label :alias_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/templates/%<TemplateId>s/aliases/%<AliasName>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            TemplateId: Hearth::HTTP.uri_escape(input[:template_id].to_s),
            AliasName: Hearth::HTTP.uri_escape(input[:alias_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TemplateVersionNumber'] = input[:template_version_number] unless input[:template_version_number].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateTheme
    class CreateTheme
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:theme_id].to_s.empty?
          raise ArgumentError, "HTTP label :theme_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/themes/%<ThemeId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            ThemeId: Hearth::HTTP.uri_escape(input[:theme_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['BaseThemeId'] = input[:base_theme_id] unless input[:base_theme_id].nil?
        data['VersionDescription'] = input[:version_description] unless input[:version_description].nil?
        data['Configuration'] = Builders::ThemeConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        data['Permissions'] = Builders::ResourcePermissionList.build(input[:permissions]) unless input[:permissions].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ThemeConfiguration
    class ThemeConfiguration
      def self.build(input)
        data = {}
        data['DataColorPalette'] = Builders::DataColorPalette.build(input[:data_color_palette]) unless input[:data_color_palette].nil?
        data['UIColorPalette'] = Builders::UIColorPalette.build(input[:ui_color_palette]) unless input[:ui_color_palette].nil?
        data['Sheet'] = Builders::SheetStyle.build(input[:sheet]) unless input[:sheet].nil?
        data
      end
    end

    # Structure Builder for SheetStyle
    class SheetStyle
      def self.build(input)
        data = {}
        data['Tile'] = Builders::TileStyle.build(input[:tile]) unless input[:tile].nil?
        data['TileLayout'] = Builders::TileLayoutStyle.build(input[:tile_layout]) unless input[:tile_layout].nil?
        data
      end
    end

    # Structure Builder for TileLayoutStyle
    class TileLayoutStyle
      def self.build(input)
        data = {}
        data['Gutter'] = Builders::GutterStyle.build(input[:gutter]) unless input[:gutter].nil?
        data['Margin'] = Builders::MarginStyle.build(input[:margin]) unless input[:margin].nil?
        data
      end
    end

    # Structure Builder for MarginStyle
    class MarginStyle
      def self.build(input)
        data = {}
        data['Show'] = input[:show] unless input[:show].nil?
        data
      end
    end

    # Structure Builder for GutterStyle
    class GutterStyle
      def self.build(input)
        data = {}
        data['Show'] = input[:show] unless input[:show].nil?
        data
      end
    end

    # Structure Builder for TileStyle
    class TileStyle
      def self.build(input)
        data = {}
        data['Border'] = Builders::BorderStyle.build(input[:border]) unless input[:border].nil?
        data
      end
    end

    # Structure Builder for BorderStyle
    class BorderStyle
      def self.build(input)
        data = {}
        data['Show'] = input[:show] unless input[:show].nil?
        data
      end
    end

    # Structure Builder for UIColorPalette
    class UIColorPalette
      def self.build(input)
        data = {}
        data['PrimaryForeground'] = input[:primary_foreground] unless input[:primary_foreground].nil?
        data['PrimaryBackground'] = input[:primary_background] unless input[:primary_background].nil?
        data['SecondaryForeground'] = input[:secondary_foreground] unless input[:secondary_foreground].nil?
        data['SecondaryBackground'] = input[:secondary_background] unless input[:secondary_background].nil?
        data['Accent'] = input[:accent] unless input[:accent].nil?
        data['AccentForeground'] = input[:accent_foreground] unless input[:accent_foreground].nil?
        data['Danger'] = input[:danger] unless input[:danger].nil?
        data['DangerForeground'] = input[:danger_foreground] unless input[:danger_foreground].nil?
        data['Warning'] = input[:warning] unless input[:warning].nil?
        data['WarningForeground'] = input[:warning_foreground] unless input[:warning_foreground].nil?
        data['Success'] = input[:success] unless input[:success].nil?
        data['SuccessForeground'] = input[:success_foreground] unless input[:success_foreground].nil?
        data['Dimension'] = input[:dimension] unless input[:dimension].nil?
        data['DimensionForeground'] = input[:dimension_foreground] unless input[:dimension_foreground].nil?
        data['Measure'] = input[:measure] unless input[:measure].nil?
        data['MeasureForeground'] = input[:measure_foreground] unless input[:measure_foreground].nil?
        data
      end
    end

    # Structure Builder for DataColorPalette
    class DataColorPalette
      def self.build(input)
        data = {}
        data['Colors'] = Builders::ColorList.build(input[:colors]) unless input[:colors].nil?
        data['MinMaxGradient'] = Builders::ColorList.build(input[:min_max_gradient]) unless input[:min_max_gradient].nil?
        data['EmptyFillColor'] = input[:empty_fill_color] unless input[:empty_fill_color].nil?
        data
      end
    end

    # List Builder for ColorList
    class ColorList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateThemeAlias
    class CreateThemeAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:theme_id].to_s.empty?
          raise ArgumentError, "HTTP label :theme_id cannot be nil or empty."
        end
        if input[:alias_name].to_s.empty?
          raise ArgumentError, "HTTP label :alias_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/themes/%<ThemeId>s/aliases/%<AliasName>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            ThemeId: Hearth::HTTP.uri_escape(input[:theme_id].to_s),
            AliasName: Hearth::HTTP.uri_escape(input[:alias_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ThemeVersionNumber'] = input[:theme_version_number] unless input[:theme_version_number].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAccountCustomization
    class DeleteAccountCustomization
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/customizations',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteAnalysis
    class DeleteAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:analysis_id].to_s.empty?
          raise ArgumentError, "HTTP label :analysis_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/analyses/%<AnalysisId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            AnalysisId: Hearth::HTTP.uri_escape(input[:analysis_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['recovery-window-in-days'] = input[:recovery_window_in_days].to_s unless input[:recovery_window_in_days].nil?
        params['force-delete-without-recovery'] = input[:force_delete_without_recovery].to_s unless input[:force_delete_without_recovery].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDashboard
    class DeleteDashboard
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:dashboard_id].to_s.empty?
          raise ArgumentError, "HTTP label :dashboard_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/dashboards/%<DashboardId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DashboardId: Hearth::HTTP.uri_escape(input[:dashboard_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['version-number'] = input[:version_number].to_s unless input[:version_number].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDataSet
    class DeleteDataSet
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/data-sets/%<DataSetId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDataSource
    class DeleteDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:data_source_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_source_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/data-sources/%<DataSourceId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DataSourceId: Hearth::HTTP.uri_escape(input[:data_source_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteFolder
    class DeleteFolder
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:folder_id].to_s.empty?
          raise ArgumentError, "HTTP label :folder_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/folders/%<FolderId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            FolderId: Hearth::HTTP.uri_escape(input[:folder_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteFolderMembership
    class DeleteFolderMembership
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:folder_id].to_s.empty?
          raise ArgumentError, "HTTP label :folder_id cannot be nil or empty."
        end
        if input[:member_id].to_s.empty?
          raise ArgumentError, "HTTP label :member_id cannot be nil or empty."
        end
        if input[:member_type].to_s.empty?
          raise ArgumentError, "HTTP label :member_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/folders/%<FolderId>s/members/%<MemberType>s/%<MemberId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            FolderId: Hearth::HTTP.uri_escape(input[:folder_id].to_s),
            MemberId: Hearth::HTTP.uri_escape(input[:member_id].to_s),
            MemberType: Hearth::HTTP.uri_escape(input[:member_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteGroup
    class DeleteGroup
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:group_name].to_s.empty?
          raise ArgumentError, "HTTP label :group_name cannot be nil or empty."
        end
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/groups/%<GroupName>s',
            GroupName: Hearth::HTTP.uri_escape(input[:group_name].to_s),
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteGroupMembership
    class DeleteGroupMembership
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:member_name].to_s.empty?
          raise ArgumentError, "HTTP label :member_name cannot be nil or empty."
        end
        if input[:group_name].to_s.empty?
          raise ArgumentError, "HTTP label :group_name cannot be nil or empty."
        end
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/groups/%<GroupName>s/members/%<MemberName>s',
            MemberName: Hearth::HTTP.uri_escape(input[:member_name].to_s),
            GroupName: Hearth::HTTP.uri_escape(input[:group_name].to_s),
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteIAMPolicyAssignment
    class DeleteIAMPolicyAssignment
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:assignment_name].to_s.empty?
          raise ArgumentError, "HTTP label :assignment_name cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespace/%<Namespace>s/iam-policy-assignments/%<AssignmentName>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            AssignmentName: Hearth::HTTP.uri_escape(input[:assignment_name].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteNamespace
    class DeleteNamespace
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteTemplate
    class DeleteTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:template_id].to_s.empty?
          raise ArgumentError, "HTTP label :template_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/templates/%<TemplateId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            TemplateId: Hearth::HTTP.uri_escape(input[:template_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['version-number'] = input[:version_number].to_s unless input[:version_number].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteTemplateAlias
    class DeleteTemplateAlias
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:template_id].to_s.empty?
          raise ArgumentError, "HTTP label :template_id cannot be nil or empty."
        end
        if input[:alias_name].to_s.empty?
          raise ArgumentError, "HTTP label :alias_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/templates/%<TemplateId>s/aliases/%<AliasName>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            TemplateId: Hearth::HTTP.uri_escape(input[:template_id].to_s),
            AliasName: Hearth::HTTP.uri_escape(input[:alias_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteTheme
    class DeleteTheme
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:theme_id].to_s.empty?
          raise ArgumentError, "HTTP label :theme_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/themes/%<ThemeId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            ThemeId: Hearth::HTTP.uri_escape(input[:theme_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['version-number'] = input[:version_number].to_s unless input[:version_number].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteThemeAlias
    class DeleteThemeAlias
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:theme_id].to_s.empty?
          raise ArgumentError, "HTTP label :theme_id cannot be nil or empty."
        end
        if input[:alias_name].to_s.empty?
          raise ArgumentError, "HTTP label :alias_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/themes/%<ThemeId>s/aliases/%<AliasName>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            ThemeId: Hearth::HTTP.uri_escape(input[:theme_id].to_s),
            AliasName: Hearth::HTTP.uri_escape(input[:alias_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteUser
    class DeleteUser
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:user_name].to_s.empty?
          raise ArgumentError, "HTTP label :user_name cannot be nil or empty."
        end
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/users/%<UserName>s',
            UserName: Hearth::HTTP.uri_escape(input[:user_name].to_s),
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteUserByPrincipalId
    class DeleteUserByPrincipalId
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:principal_id].to_s.empty?
          raise ArgumentError, "HTTP label :principal_id cannot be nil or empty."
        end
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/user-principals/%<PrincipalId>s',
            PrincipalId: Hearth::HTTP.uri_escape(input[:principal_id].to_s),
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAccountCustomization
    class DescribeAccountCustomization
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/customizations',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        params['resolved'] = input[:resolved].to_s unless input[:resolved].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAccountSettings
    class DescribeAccountSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/settings',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAnalysis
    class DescribeAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:analysis_id].to_s.empty?
          raise ArgumentError, "HTTP label :analysis_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/analyses/%<AnalysisId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            AnalysisId: Hearth::HTTP.uri_escape(input[:analysis_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeAnalysisPermissions
    class DescribeAnalysisPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:analysis_id].to_s.empty?
          raise ArgumentError, "HTTP label :analysis_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/analyses/%<AnalysisId>s/permissions',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            AnalysisId: Hearth::HTTP.uri_escape(input[:analysis_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDashboard
    class DescribeDashboard
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:dashboard_id].to_s.empty?
          raise ArgumentError, "HTTP label :dashboard_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/dashboards/%<DashboardId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DashboardId: Hearth::HTTP.uri_escape(input[:dashboard_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['version-number'] = input[:version_number].to_s unless input[:version_number].nil?
        params['alias-name'] = input[:alias_name].to_s unless input[:alias_name].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDashboardPermissions
    class DescribeDashboardPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:dashboard_id].to_s.empty?
          raise ArgumentError, "HTTP label :dashboard_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/dashboards/%<DashboardId>s/permissions',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DashboardId: Hearth::HTTP.uri_escape(input[:dashboard_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDataSet
    class DescribeDataSet
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/data-sets/%<DataSetId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDataSetPermissions
    class DescribeDataSetPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/data-sets/%<DataSetId>s/permissions',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDataSource
    class DescribeDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:data_source_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_source_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/data-sources/%<DataSourceId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DataSourceId: Hearth::HTTP.uri_escape(input[:data_source_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeDataSourcePermissions
    class DescribeDataSourcePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:data_source_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_source_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/data-sources/%<DataSourceId>s/permissions',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DataSourceId: Hearth::HTTP.uri_escape(input[:data_source_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeFolder
    class DescribeFolder
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:folder_id].to_s.empty?
          raise ArgumentError, "HTTP label :folder_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/folders/%<FolderId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            FolderId: Hearth::HTTP.uri_escape(input[:folder_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeFolderPermissions
    class DescribeFolderPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:folder_id].to_s.empty?
          raise ArgumentError, "HTTP label :folder_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/folders/%<FolderId>s/permissions',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            FolderId: Hearth::HTTP.uri_escape(input[:folder_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeFolderResolvedPermissions
    class DescribeFolderResolvedPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:folder_id].to_s.empty?
          raise ArgumentError, "HTTP label :folder_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/folders/%<FolderId>s/resolved-permissions',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            FolderId: Hearth::HTTP.uri_escape(input[:folder_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeGroup
    class DescribeGroup
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:group_name].to_s.empty?
          raise ArgumentError, "HTTP label :group_name cannot be nil or empty."
        end
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/groups/%<GroupName>s',
            GroupName: Hearth::HTTP.uri_escape(input[:group_name].to_s),
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeGroupMembership
    class DescribeGroupMembership
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:member_name].to_s.empty?
          raise ArgumentError, "HTTP label :member_name cannot be nil or empty."
        end
        if input[:group_name].to_s.empty?
          raise ArgumentError, "HTTP label :group_name cannot be nil or empty."
        end
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/groups/%<GroupName>s/members/%<MemberName>s',
            MemberName: Hearth::HTTP.uri_escape(input[:member_name].to_s),
            GroupName: Hearth::HTTP.uri_escape(input[:group_name].to_s),
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeIAMPolicyAssignment
    class DescribeIAMPolicyAssignment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:assignment_name].to_s.empty?
          raise ArgumentError, "HTTP label :assignment_name cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/iam-policy-assignments/%<AssignmentName>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            AssignmentName: Hearth::HTTP.uri_escape(input[:assignment_name].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeIngestion
    class DescribeIngestion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        if input[:ingestion_id].to_s.empty?
          raise ArgumentError, "HTTP label :ingestion_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/data-sets/%<DataSetId>s/ingestions/%<IngestionId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s),
            IngestionId: Hearth::HTTP.uri_escape(input[:ingestion_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeIpRestriction
    class DescribeIpRestriction
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/ip-restriction',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeNamespace
    class DescribeNamespace
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeTemplate
    class DescribeTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:template_id].to_s.empty?
          raise ArgumentError, "HTTP label :template_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/templates/%<TemplateId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            TemplateId: Hearth::HTTP.uri_escape(input[:template_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['version-number'] = input[:version_number].to_s unless input[:version_number].nil?
        params['alias-name'] = input[:alias_name].to_s unless input[:alias_name].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeTemplateAlias
    class DescribeTemplateAlias
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:template_id].to_s.empty?
          raise ArgumentError, "HTTP label :template_id cannot be nil or empty."
        end
        if input[:alias_name].to_s.empty?
          raise ArgumentError, "HTTP label :alias_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/templates/%<TemplateId>s/aliases/%<AliasName>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            TemplateId: Hearth::HTTP.uri_escape(input[:template_id].to_s),
            AliasName: Hearth::HTTP.uri_escape(input[:alias_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeTemplatePermissions
    class DescribeTemplatePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:template_id].to_s.empty?
          raise ArgumentError, "HTTP label :template_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/templates/%<TemplateId>s/permissions',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            TemplateId: Hearth::HTTP.uri_escape(input[:template_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeTheme
    class DescribeTheme
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:theme_id].to_s.empty?
          raise ArgumentError, "HTTP label :theme_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/themes/%<ThemeId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            ThemeId: Hearth::HTTP.uri_escape(input[:theme_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['version-number'] = input[:version_number].to_s unless input[:version_number].nil?
        params['alias-name'] = input[:alias_name].to_s unless input[:alias_name].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeThemeAlias
    class DescribeThemeAlias
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:theme_id].to_s.empty?
          raise ArgumentError, "HTTP label :theme_id cannot be nil or empty."
        end
        if input[:alias_name].to_s.empty?
          raise ArgumentError, "HTTP label :alias_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/themes/%<ThemeId>s/aliases/%<AliasName>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            ThemeId: Hearth::HTTP.uri_escape(input[:theme_id].to_s),
            AliasName: Hearth::HTTP.uri_escape(input[:alias_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeThemePermissions
    class DescribeThemePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:theme_id].to_s.empty?
          raise ArgumentError, "HTTP label :theme_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/themes/%<ThemeId>s/permissions',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            ThemeId: Hearth::HTTP.uri_escape(input[:theme_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeUser
    class DescribeUser
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:user_name].to_s.empty?
          raise ArgumentError, "HTTP label :user_name cannot be nil or empty."
        end
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/users/%<UserName>s',
            UserName: Hearth::HTTP.uri_escape(input[:user_name].to_s),
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GenerateEmbedUrlForAnonymousUser
    class GenerateEmbedUrlForAnonymousUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/embed-url/anonymous-user',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SessionLifetimeInMinutes'] = input[:session_lifetime_in_minutes] unless input[:session_lifetime_in_minutes].nil?
        data['Namespace'] = input[:namespace] unless input[:namespace].nil?
        data['SessionTags'] = Builders::SessionTagList.build(input[:session_tags]) unless input[:session_tags].nil?
        data['AuthorizedResourceArns'] = Builders::ArnList.build(input[:authorized_resource_arns]) unless input[:authorized_resource_arns].nil?
        data['ExperienceConfiguration'] = Builders::AnonymousUserEmbeddingExperienceConfiguration.build(input[:experience_configuration]) unless input[:experience_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AnonymousUserEmbeddingExperienceConfiguration
    class AnonymousUserEmbeddingExperienceConfiguration
      def self.build(input)
        data = {}
        data['Dashboard'] = Builders::AnonymousUserDashboardEmbeddingConfiguration.build(input[:dashboard]) unless input[:dashboard].nil?
        data
      end
    end

    # Structure Builder for AnonymousUserDashboardEmbeddingConfiguration
    class AnonymousUserDashboardEmbeddingConfiguration
      def self.build(input)
        data = {}
        data['InitialDashboardId'] = input[:initial_dashboard_id] unless input[:initial_dashboard_id].nil?
        data
      end
    end

    # List Builder for ArnList
    class ArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SessionTagList
    class SessionTagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SessionTag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SessionTag
    class SessionTag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for GenerateEmbedUrlForRegisteredUser
    class GenerateEmbedUrlForRegisteredUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/embed-url/registered-user',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SessionLifetimeInMinutes'] = input[:session_lifetime_in_minutes] unless input[:session_lifetime_in_minutes].nil?
        data['UserArn'] = input[:user_arn] unless input[:user_arn].nil?
        data['ExperienceConfiguration'] = Builders::RegisteredUserEmbeddingExperienceConfiguration.build(input[:experience_configuration]) unless input[:experience_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RegisteredUserEmbeddingExperienceConfiguration
    class RegisteredUserEmbeddingExperienceConfiguration
      def self.build(input)
        data = {}
        data['Dashboard'] = Builders::RegisteredUserDashboardEmbeddingConfiguration.build(input[:dashboard]) unless input[:dashboard].nil?
        data['QuickSightConsole'] = Builders::RegisteredUserQuickSightConsoleEmbeddingConfiguration.build(input[:quick_sight_console]) unless input[:quick_sight_console].nil?
        data['QSearchBar'] = Builders::RegisteredUserQSearchBarEmbeddingConfiguration.build(input[:q_search_bar]) unless input[:q_search_bar].nil?
        data
      end
    end

    # Structure Builder for RegisteredUserQSearchBarEmbeddingConfiguration
    class RegisteredUserQSearchBarEmbeddingConfiguration
      def self.build(input)
        data = {}
        data['InitialTopicId'] = input[:initial_topic_id] unless input[:initial_topic_id].nil?
        data
      end
    end

    # Structure Builder for RegisteredUserQuickSightConsoleEmbeddingConfiguration
    class RegisteredUserQuickSightConsoleEmbeddingConfiguration
      def self.build(input)
        data = {}
        data['InitialPath'] = input[:initial_path] unless input[:initial_path].nil?
        data
      end
    end

    # Structure Builder for RegisteredUserDashboardEmbeddingConfiguration
    class RegisteredUserDashboardEmbeddingConfiguration
      def self.build(input)
        data = {}
        data['InitialDashboardId'] = input[:initial_dashboard_id] unless input[:initial_dashboard_id].nil?
        data
      end
    end

    # Operation Builder for GetDashboardEmbedUrl
    class GetDashboardEmbedUrl
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:dashboard_id].to_s.empty?
          raise ArgumentError, "HTTP label :dashboard_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/dashboards/%<DashboardId>s/embed-url',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DashboardId: Hearth::HTTP.uri_escape(input[:dashboard_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['creds-type'] = input[:identity_type].to_s unless input[:identity_type].nil?
        params['session-lifetime'] = input[:session_lifetime_in_minutes].to_s unless input[:session_lifetime_in_minutes].nil?
        params['undo-redo-disabled'] = input[:undo_redo_disabled].to_s unless input[:undo_redo_disabled].nil?
        params['reset-disabled'] = input[:reset_disabled].to_s unless input[:reset_disabled].nil?
        params['state-persistence-enabled'] = input[:state_persistence_enabled].to_s unless input[:state_persistence_enabled].nil?
        params['user-arn'] = input[:user_arn].to_s unless input[:user_arn].nil?
        params['namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        unless input[:additional_dashboard_ids].nil? || input[:additional_dashboard_ids].empty?
          params['additional-dashboard-ids'] = input[:additional_dashboard_ids].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for AdditionalDashboardIdList
    class AdditionalDashboardIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetSessionEmbedUrl
    class GetSessionEmbedUrl
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/session-embed-url',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['entry-point'] = input[:entry_point].to_s unless input[:entry_point].nil?
        params['session-lifetime'] = input[:session_lifetime_in_minutes].to_s unless input[:session_lifetime_in_minutes].nil?
        params['user-arn'] = input[:user_arn].to_s unless input[:user_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAnalyses
    class ListAnalyses
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/analyses',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDashboardVersions
    class ListDashboardVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:dashboard_id].to_s.empty?
          raise ArgumentError, "HTTP label :dashboard_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/dashboards/%<DashboardId>s/versions',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DashboardId: Hearth::HTTP.uri_escape(input[:dashboard_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDashboards
    class ListDashboards
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/dashboards',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDataSets
    class ListDataSets
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/data-sets',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListDataSources
    class ListDataSources
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/data-sources',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListFolderMembers
    class ListFolderMembers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:folder_id].to_s.empty?
          raise ArgumentError, "HTTP label :folder_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/folders/%<FolderId>s/members',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            FolderId: Hearth::HTTP.uri_escape(input[:folder_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListFolders
    class ListFolders
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/folders',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListGroupMemberships
    class ListGroupMemberships
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:group_name].to_s.empty?
          raise ArgumentError, "HTTP label :group_name cannot be nil or empty."
        end
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/groups/%<GroupName>s/members',
            GroupName: Hearth::HTTP.uri_escape(input[:group_name].to_s),
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListGroups
    class ListGroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/groups',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListIAMPolicyAssignments
    class ListIAMPolicyAssignments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/iam-policy-assignments',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AssignmentStatus'] = input[:assignment_status] unless input[:assignment_status].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListIAMPolicyAssignmentsForUser
    class ListIAMPolicyAssignmentsForUser
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:user_name].to_s.empty?
          raise ArgumentError, "HTTP label :user_name cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/users/%<UserName>s/iam-policy-assignments',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            UserName: Hearth::HTTP.uri_escape(input[:user_name].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListIngestions
    class ListIngestions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/data-sets/%<DataSetId>s/ingestions',
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s),
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListNamespaces
    class ListNamespaces
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/resources/%<ResourceArn>s/tags',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTemplateAliases
    class ListTemplateAliases
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:template_id].to_s.empty?
          raise ArgumentError, "HTTP label :template_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/templates/%<TemplateId>s/aliases',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            TemplateId: Hearth::HTTP.uri_escape(input[:template_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-result'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTemplateVersions
    class ListTemplateVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:template_id].to_s.empty?
          raise ArgumentError, "HTTP label :template_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/templates/%<TemplateId>s/versions',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            TemplateId: Hearth::HTTP.uri_escape(input[:template_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTemplates
    class ListTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/templates',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-result'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListThemeAliases
    class ListThemeAliases
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:theme_id].to_s.empty?
          raise ArgumentError, "HTTP label :theme_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/themes/%<ThemeId>s/aliases',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            ThemeId: Hearth::HTTP.uri_escape(input[:theme_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-result'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListThemeVersions
    class ListThemeVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:theme_id].to_s.empty?
          raise ArgumentError, "HTTP label :theme_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/themes/%<ThemeId>s/versions',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            ThemeId: Hearth::HTTP.uri_escape(input[:theme_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListThemes
    class ListThemes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/themes',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        params['type'] = input[:type].to_s unless input[:type].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListUserGroups
    class ListUserGroups
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:user_name].to_s.empty?
          raise ArgumentError, "HTTP label :user_name cannot be nil or empty."
        end
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/users/%<UserName>s/groups',
            UserName: Hearth::HTTP.uri_escape(input[:user_name].to_s),
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListUsers
    class ListUsers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/users',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RegisterUser
    class RegisterUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/users',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['IdentityType'] = input[:identity_type] unless input[:identity_type].nil?
        data['Email'] = input[:email] unless input[:email].nil?
        data['UserRole'] = input[:user_role] unless input[:user_role].nil?
        data['IamArn'] = input[:iam_arn] unless input[:iam_arn].nil?
        data['SessionName'] = input[:session_name] unless input[:session_name].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['CustomPermissionsName'] = input[:custom_permissions_name] unless input[:custom_permissions_name].nil?
        data['ExternalLoginFederationProviderType'] = input[:external_login_federation_provider_type] unless input[:external_login_federation_provider_type].nil?
        data['CustomFederationProviderUrl'] = input[:custom_federation_provider_url] unless input[:custom_federation_provider_url].nil?
        data['ExternalLoginId'] = input[:external_login_id] unless input[:external_login_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RestoreAnalysis
    class RestoreAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:analysis_id].to_s.empty?
          raise ArgumentError, "HTTP label :analysis_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/restore/analyses/%<AnalysisId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            AnalysisId: Hearth::HTTP.uri_escape(input[:analysis_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for SearchAnalyses
    class SearchAnalyses
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/search/analyses',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Filters'] = Builders::AnalysisSearchFilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AnalysisSearchFilterList
    class AnalysisSearchFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AnalysisSearchFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AnalysisSearchFilter
    class AnalysisSearchFilter
      def self.build(input)
        data = {}
        data['Operator'] = input[:operator] unless input[:operator].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for SearchDashboards
    class SearchDashboards
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/search/dashboards',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Filters'] = Builders::DashboardSearchFilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DashboardSearchFilterList
    class DashboardSearchFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DashboardSearchFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DashboardSearchFilter
    class DashboardSearchFilter
      def self.build(input)
        data = {}
        data['Operator'] = input[:operator] unless input[:operator].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for SearchFolders
    class SearchFolders
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/search/folders',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Filters'] = Builders::FolderSearchFilterList.build(input[:filters]) unless input[:filters].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FolderSearchFilterList
    class FolderSearchFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::FolderSearchFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FolderSearchFilter
    class FolderSearchFilter
      def self.build(input)
        data = {}
        data['Operator'] = input[:operator] unless input[:operator].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for SearchGroups
    class SearchGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/groups-search',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['next-token'] = input[:next_token].to_s unless input[:next_token].nil?
        params['max-results'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Filters'] = Builders::GroupSearchFilterList.build(input[:filters]) unless input[:filters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for GroupSearchFilterList
    class GroupSearchFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::GroupSearchFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GroupSearchFilter
    class GroupSearchFilter
      def self.build(input)
        data = {}
        data['Operator'] = input[:operator] unless input[:operator].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/resources/%<ResourceArn>s/tags',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/resources/%<ResourceArn>s/tags',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['keys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateAccountCustomization
    class UpdateAccountCustomization
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/customizations',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['namespace'] = input[:namespace].to_s unless input[:namespace].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AccountCustomization'] = Builders::AccountCustomization.build(input[:account_customization]) unless input[:account_customization].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAccountSettings
    class UpdateAccountSettings
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/settings',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DefaultNamespace'] = input[:default_namespace] unless input[:default_namespace].nil?
        data['NotificationEmail'] = input[:notification_email] unless input[:notification_email].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAnalysis
    class UpdateAnalysis
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:analysis_id].to_s.empty?
          raise ArgumentError, "HTTP label :analysis_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/analyses/%<AnalysisId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            AnalysisId: Hearth::HTTP.uri_escape(input[:analysis_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Parameters'] = Builders::Parameters.build(input[:parameters]) unless input[:parameters].nil?
        data['SourceEntity'] = Builders::AnalysisSourceEntity.build(input[:source_entity]) unless input[:source_entity].nil?
        data['ThemeArn'] = input[:theme_arn] unless input[:theme_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAnalysisPermissions
    class UpdateAnalysisPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:analysis_id].to_s.empty?
          raise ArgumentError, "HTTP label :analysis_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/analyses/%<AnalysisId>s/permissions',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            AnalysisId: Hearth::HTTP.uri_escape(input[:analysis_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GrantPermissions'] = Builders::UpdateResourcePermissionList.build(input[:grant_permissions]) unless input[:grant_permissions].nil?
        data['RevokePermissions'] = Builders::UpdateResourcePermissionList.build(input[:revoke_permissions]) unless input[:revoke_permissions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UpdateResourcePermissionList
    class UpdateResourcePermissionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ResourcePermission.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateDashboard
    class UpdateDashboard
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:dashboard_id].to_s.empty?
          raise ArgumentError, "HTTP label :dashboard_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/dashboards/%<DashboardId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DashboardId: Hearth::HTTP.uri_escape(input[:dashboard_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['SourceEntity'] = Builders::DashboardSourceEntity.build(input[:source_entity]) unless input[:source_entity].nil?
        data['Parameters'] = Builders::Parameters.build(input[:parameters]) unless input[:parameters].nil?
        data['VersionDescription'] = input[:version_description] unless input[:version_description].nil?
        data['DashboardPublishOptions'] = Builders::DashboardPublishOptions.build(input[:dashboard_publish_options]) unless input[:dashboard_publish_options].nil?
        data['ThemeArn'] = input[:theme_arn] unless input[:theme_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDashboardPermissions
    class UpdateDashboardPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:dashboard_id].to_s.empty?
          raise ArgumentError, "HTTP label :dashboard_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/dashboards/%<DashboardId>s/permissions',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DashboardId: Hearth::HTTP.uri_escape(input[:dashboard_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GrantPermissions'] = Builders::UpdateResourcePermissionList.build(input[:grant_permissions]) unless input[:grant_permissions].nil?
        data['RevokePermissions'] = Builders::UpdateResourcePermissionList.build(input[:revoke_permissions]) unless input[:revoke_permissions].nil?
        data['GrantLinkPermissions'] = Builders::UpdateLinkPermissionList.build(input[:grant_link_permissions]) unless input[:grant_link_permissions].nil?
        data['RevokeLinkPermissions'] = Builders::UpdateLinkPermissionList.build(input[:revoke_link_permissions]) unless input[:revoke_link_permissions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UpdateLinkPermissionList
    class UpdateLinkPermissionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ResourcePermission.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateDashboardPublishedVersion
    class UpdateDashboardPublishedVersion
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:dashboard_id].to_s.empty?
          raise ArgumentError, "HTTP label :dashboard_id cannot be nil or empty."
        end
        if input[:version_number].to_s.empty?
          raise ArgumentError, "HTTP label :version_number cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/dashboards/%<DashboardId>s/versions/%<VersionNumber>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DashboardId: Hearth::HTTP.uri_escape(input[:dashboard_id].to_s),
            VersionNumber: Hearth::HTTP.uri_escape(input[:version_number].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for UpdateDataSet
    class UpdateDataSet
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/data-sets/%<DataSetId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['PhysicalTableMap'] = Builders::PhysicalTableMap.build(input[:physical_table_map]) unless input[:physical_table_map].nil?
        data['LogicalTableMap'] = Builders::LogicalTableMap.build(input[:logical_table_map]) unless input[:logical_table_map].nil?
        data['ImportMode'] = input[:import_mode] unless input[:import_mode].nil?
        data['ColumnGroups'] = Builders::ColumnGroupList.build(input[:column_groups]) unless input[:column_groups].nil?
        data['FieldFolders'] = Builders::FieldFolderMap.build(input[:field_folders]) unless input[:field_folders].nil?
        data['RowLevelPermissionDataSet'] = Builders::RowLevelPermissionDataSet.build(input[:row_level_permission_data_set]) unless input[:row_level_permission_data_set].nil?
        data['RowLevelPermissionTagConfiguration'] = Builders::RowLevelPermissionTagConfiguration.build(input[:row_level_permission_tag_configuration]) unless input[:row_level_permission_tag_configuration].nil?
        data['ColumnLevelPermissionRules'] = Builders::ColumnLevelPermissionRuleList.build(input[:column_level_permission_rules]) unless input[:column_level_permission_rules].nil?
        data['DataSetUsageConfiguration'] = Builders::DataSetUsageConfiguration.build(input[:data_set_usage_configuration]) unless input[:data_set_usage_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDataSetPermissions
    class UpdateDataSetPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:data_set_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_set_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/data-sets/%<DataSetId>s/permissions',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DataSetId: Hearth::HTTP.uri_escape(input[:data_set_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GrantPermissions'] = Builders::ResourcePermissionList.build(input[:grant_permissions]) unless input[:grant_permissions].nil?
        data['RevokePermissions'] = Builders::ResourcePermissionList.build(input[:revoke_permissions]) unless input[:revoke_permissions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDataSource
    class UpdateDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:data_source_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_source_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/data-sources/%<DataSourceId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DataSourceId: Hearth::HTTP.uri_escape(input[:data_source_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['DataSourceParameters'] = Builders::DataSourceParameters.build(input[:data_source_parameters]) unless input[:data_source_parameters].nil?
        data['Credentials'] = Builders::DataSourceCredentials.build(input[:credentials]) unless input[:credentials].nil?
        data['VpcConnectionProperties'] = Builders::VpcConnectionProperties.build(input[:vpc_connection_properties]) unless input[:vpc_connection_properties].nil?
        data['SslProperties'] = Builders::SslProperties.build(input[:ssl_properties]) unless input[:ssl_properties].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDataSourcePermissions
    class UpdateDataSourcePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:data_source_id].to_s.empty?
          raise ArgumentError, "HTTP label :data_source_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/data-sources/%<DataSourceId>s/permissions',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            DataSourceId: Hearth::HTTP.uri_escape(input[:data_source_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GrantPermissions'] = Builders::ResourcePermissionList.build(input[:grant_permissions]) unless input[:grant_permissions].nil?
        data['RevokePermissions'] = Builders::ResourcePermissionList.build(input[:revoke_permissions]) unless input[:revoke_permissions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFolder
    class UpdateFolder
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:folder_id].to_s.empty?
          raise ArgumentError, "HTTP label :folder_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/folders/%<FolderId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            FolderId: Hearth::HTTP.uri_escape(input[:folder_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFolderPermissions
    class UpdateFolderPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:folder_id].to_s.empty?
          raise ArgumentError, "HTTP label :folder_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/folders/%<FolderId>s/permissions',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            FolderId: Hearth::HTTP.uri_escape(input[:folder_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GrantPermissions'] = Builders::ResourcePermissionList.build(input[:grant_permissions]) unless input[:grant_permissions].nil?
        data['RevokePermissions'] = Builders::ResourcePermissionList.build(input[:revoke_permissions]) unless input[:revoke_permissions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGroup
    class UpdateGroup
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:group_name].to_s.empty?
          raise ArgumentError, "HTTP label :group_name cannot be nil or empty."
        end
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/groups/%<GroupName>s',
            GroupName: Hearth::HTTP.uri_escape(input[:group_name].to_s),
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateIAMPolicyAssignment
    class UpdateIAMPolicyAssignment
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:assignment_name].to_s.empty?
          raise ArgumentError, "HTTP label :assignment_name cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/iam-policy-assignments/%<AssignmentName>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            AssignmentName: Hearth::HTTP.uri_escape(input[:assignment_name].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AssignmentStatus'] = input[:assignment_status] unless input[:assignment_status].nil?
        data['PolicyArn'] = input[:policy_arn] unless input[:policy_arn].nil?
        data['Identities'] = Builders::IdentityMap.build(input[:identities]) unless input[:identities].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateIpRestriction
    class UpdateIpRestriction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/ip-restriction',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['IpRestrictionRuleMap'] = Builders::IpRestrictionRuleMap.build(input[:ip_restriction_rule_map]) unless input[:ip_restriction_rule_map].nil?
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for IpRestrictionRuleMap
    class IpRestrictionRuleMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for UpdatePublicSharingSettings
    class UpdatePublicSharingSettings
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/public-sharing-settings',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['PublicSharingEnabled'] = input[:public_sharing_enabled] unless input[:public_sharing_enabled].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTemplate
    class UpdateTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:template_id].to_s.empty?
          raise ArgumentError, "HTTP label :template_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/templates/%<TemplateId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            TemplateId: Hearth::HTTP.uri_escape(input[:template_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['SourceEntity'] = Builders::TemplateSourceEntity.build(input[:source_entity]) unless input[:source_entity].nil?
        data['VersionDescription'] = input[:version_description] unless input[:version_description].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTemplateAlias
    class UpdateTemplateAlias
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:template_id].to_s.empty?
          raise ArgumentError, "HTTP label :template_id cannot be nil or empty."
        end
        if input[:alias_name].to_s.empty?
          raise ArgumentError, "HTTP label :alias_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/templates/%<TemplateId>s/aliases/%<AliasName>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            TemplateId: Hearth::HTTP.uri_escape(input[:template_id].to_s),
            AliasName: Hearth::HTTP.uri_escape(input[:alias_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['TemplateVersionNumber'] = input[:template_version_number] unless input[:template_version_number].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTemplatePermissions
    class UpdateTemplatePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:template_id].to_s.empty?
          raise ArgumentError, "HTTP label :template_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/templates/%<TemplateId>s/permissions',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            TemplateId: Hearth::HTTP.uri_escape(input[:template_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GrantPermissions'] = Builders::UpdateResourcePermissionList.build(input[:grant_permissions]) unless input[:grant_permissions].nil?
        data['RevokePermissions'] = Builders::UpdateResourcePermissionList.build(input[:revoke_permissions]) unless input[:revoke_permissions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTheme
    class UpdateTheme
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:theme_id].to_s.empty?
          raise ArgumentError, "HTTP label :theme_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/themes/%<ThemeId>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            ThemeId: Hearth::HTTP.uri_escape(input[:theme_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['BaseThemeId'] = input[:base_theme_id] unless input[:base_theme_id].nil?
        data['VersionDescription'] = input[:version_description] unless input[:version_description].nil?
        data['Configuration'] = Builders::ThemeConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateThemeAlias
    class UpdateThemeAlias
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:theme_id].to_s.empty?
          raise ArgumentError, "HTTP label :theme_id cannot be nil or empty."
        end
        if input[:alias_name].to_s.empty?
          raise ArgumentError, "HTTP label :alias_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/themes/%<ThemeId>s/aliases/%<AliasName>s',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            ThemeId: Hearth::HTTP.uri_escape(input[:theme_id].to_s),
            AliasName: Hearth::HTTP.uri_escape(input[:alias_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ThemeVersionNumber'] = input[:theme_version_number] unless input[:theme_version_number].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateThemePermissions
    class UpdateThemePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:theme_id].to_s.empty?
          raise ArgumentError, "HTTP label :theme_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/themes/%<ThemeId>s/permissions',
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            ThemeId: Hearth::HTTP.uri_escape(input[:theme_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['GrantPermissions'] = Builders::UpdateResourcePermissionList.build(input[:grant_permissions]) unless input[:grant_permissions].nil?
        data['RevokePermissions'] = Builders::UpdateResourcePermissionList.build(input[:revoke_permissions]) unless input[:revoke_permissions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUser
    class UpdateUser
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:user_name].to_s.empty?
          raise ArgumentError, "HTTP label :user_name cannot be nil or empty."
        end
        if input[:aws_account_id].to_s.empty?
          raise ArgumentError, "HTTP label :aws_account_id cannot be nil or empty."
        end
        if input[:namespace].to_s.empty?
          raise ArgumentError, "HTTP label :namespace cannot be nil or empty."
        end
        http_req.append_path(format(
            '/accounts/%<AwsAccountId>s/namespaces/%<Namespace>s/users/%<UserName>s',
            UserName: Hearth::HTTP.uri_escape(input[:user_name].to_s),
            AwsAccountId: Hearth::HTTP.uri_escape(input[:aws_account_id].to_s),
            Namespace: Hearth::HTTP.uri_escape(input[:namespace].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Email'] = input[:email] unless input[:email].nil?
        data['Role'] = input[:role] unless input[:role].nil?
        data['CustomPermissionsName'] = input[:custom_permissions_name] unless input[:custom_permissions_name].nil?
        data['UnapplyCustomPermissions'] = input[:unapply_custom_permissions] unless input[:unapply_custom_permissions].nil?
        data['ExternalLoginFederationProviderType'] = input[:external_login_federation_provider_type] unless input[:external_login_federation_provider_type].nil?
        data['CustomFederationProviderUrl'] = input[:custom_federation_provider_url] unless input[:custom_federation_provider_url].nil?
        data['ExternalLoginId'] = input[:external_login_id] unless input[:external_login_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
