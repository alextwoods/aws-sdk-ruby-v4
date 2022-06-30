# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AmplifyUIBuilder
  module Validators

    class ActionParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActionParameters, context: context)
        Validators::ComponentProperty.validate!(input[:type], context: "#{context}[:type]") unless input[:type].nil?
        Validators::ComponentProperty.validate!(input[:url], context: "#{context}[:url]") unless input[:url].nil?
        Validators::ComponentProperty.validate!(input[:anchor], context: "#{context}[:anchor]") unless input[:anchor].nil?
        Validators::ComponentProperty.validate!(input[:target], context: "#{context}[:target]") unless input[:target].nil?
        Validators::ComponentProperty.validate!(input[:global], context: "#{context}[:global]") unless input[:global].nil?
        Hearth::Validator.validate!(input[:model], ::String, context: "#{context}[:model]")
        Validators::ComponentProperty.validate!(input[:id], context: "#{context}[:id]") unless input[:id].nil?
        Validators::ComponentProperties.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
        Validators::MutationActionSetStateParameter.validate!(input[:state], context: "#{context}[:state]") unless input[:state].nil?
      end
    end

    class Component
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Component, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:component_type], ::String, context: "#{context}[:component_type]")
        Validators::ComponentProperties.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        Validators::ComponentChildList.validate!(input[:children], context: "#{context}[:children]") unless input[:children].nil?
        Validators::ComponentVariants.validate!(input[:variants], context: "#{context}[:variants]") unless input[:variants].nil?
        Validators::ComponentOverrides.validate!(input[:overrides], context: "#{context}[:overrides]") unless input[:overrides].nil?
        Validators::ComponentBindingProperties.validate!(input[:binding_properties], context: "#{context}[:binding_properties]") unless input[:binding_properties].nil?
        Validators::ComponentCollectionProperties.validate!(input[:collection_properties], context: "#{context}[:collection_properties]") unless input[:collection_properties].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:modified_at], ::Time, context: "#{context}[:modified_at]")
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::ComponentEvents.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
      end
    end

    class ComponentBindingProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ComponentBindingPropertiesValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ComponentBindingPropertiesValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentBindingPropertiesValue, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::ComponentBindingPropertiesValueProperties.validate!(input[:binding_properties], context: "#{context}[:binding_properties]") unless input[:binding_properties].nil?
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
      end
    end

    class ComponentBindingPropertiesValueProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentBindingPropertiesValueProperties, context: context)
        Hearth::Validator.validate!(input[:model], ::String, context: "#{context}[:model]")
        Hearth::Validator.validate!(input[:field], ::String, context: "#{context}[:field]")
        Validators::PredicateList.validate!(input[:predicates], context: "#{context}[:predicates]") unless input[:predicates].nil?
        Hearth::Validator.validate!(input[:user_attribute], ::String, context: "#{context}[:user_attribute]")
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
      end
    end

    class ComponentChild
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentChild, context: context)
        Hearth::Validator.validate!(input[:component_type], ::String, context: "#{context}[:component_type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ComponentProperties.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        Validators::ComponentChildList.validate!(input[:children], context: "#{context}[:children]") unless input[:children].nil?
        Validators::ComponentEvents.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
      end
    end

    class ComponentChildList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ComponentChild.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComponentCollectionProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ComponentDataConfiguration.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ComponentConditionProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentConditionProperty, context: context)
        Hearth::Validator.validate!(input[:property], ::String, context: "#{context}[:property]")
        Hearth::Validator.validate!(input[:field], ::String, context: "#{context}[:field]")
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
        Hearth::Validator.validate!(input[:operand], ::String, context: "#{context}[:operand]")
        Validators::ComponentProperty.validate!(input[:member_then], context: "#{context}[:member_then]") unless input[:member_then].nil?
        Validators::ComponentProperty.validate!(input[:else], context: "#{context}[:else]") unless input[:else].nil?
        Hearth::Validator.validate!(input[:operand_type], ::String, context: "#{context}[:operand_type]")
      end
    end

    class ComponentDataConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentDataConfiguration, context: context)
        Hearth::Validator.validate!(input[:model], ::String, context: "#{context}[:model]")
        Validators::SortPropertyList.validate!(input[:sort], context: "#{context}[:sort]") unless input[:sort].nil?
        Validators::Predicate.validate!(input[:predicate], context: "#{context}[:predicate]") unless input[:predicate].nil?
        Validators::IdentifierList.validate!(input[:identifiers], context: "#{context}[:identifiers]") unless input[:identifiers].nil?
      end
    end

    class ComponentEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentEvent, context: context)
        Hearth::Validator.validate!(input[:action], ::String, context: "#{context}[:action]")
        Validators::ActionParameters.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:binding_event], ::String, context: "#{context}[:binding_event]")
      end
    end

    class ComponentEvents
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ComponentEvent.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ComponentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Component.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComponentOverrides
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ComponentOverridesValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ComponentOverridesValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ComponentProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ComponentProperty.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ComponentProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentProperty, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Validators::ComponentPropertyBindingProperties.validate!(input[:binding_properties], context: "#{context}[:binding_properties]") unless input[:binding_properties].nil?
        Validators::ComponentPropertyBindingProperties.validate!(input[:collection_binding_properties], context: "#{context}[:collection_binding_properties]") unless input[:collection_binding_properties].nil?
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:model], ::String, context: "#{context}[:model]")
        Validators::FormBindings.validate!(input[:bindings], context: "#{context}[:bindings]") unless input[:bindings].nil?
        Hearth::Validator.validate!(input[:event], ::String, context: "#{context}[:event]")
        Hearth::Validator.validate!(input[:user_attribute], ::String, context: "#{context}[:user_attribute]")
        Validators::ComponentPropertyList.validate!(input[:concat], context: "#{context}[:concat]") unless input[:concat].nil?
        Validators::ComponentConditionProperty.validate!(input[:condition], context: "#{context}[:condition]") unless input[:condition].nil?
        Hearth::Validator.validate!(input[:configured], ::TrueClass, ::FalseClass, context: "#{context}[:configured]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:imported_value], ::String, context: "#{context}[:imported_value]")
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:property], ::String, context: "#{context}[:property]")
      end
    end

    class ComponentPropertyBindingProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentPropertyBindingProperties, context: context)
        Hearth::Validator.validate!(input[:property], ::String, context: "#{context}[:property]")
        Hearth::Validator.validate!(input[:field], ::String, context: "#{context}[:field]")
      end
    end

    class ComponentPropertyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ComponentProperty.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComponentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentSummary, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:component_type], ::String, context: "#{context}[:component_type]")
      end
    end

    class ComponentSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ComponentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ComponentVariant
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ComponentVariant, context: context)
        Validators::ComponentVariantValues.validate!(input[:variant_values], context: "#{context}[:variant_values]") unless input[:variant_values].nil?
        Validators::ComponentOverrides.validate!(input[:overrides], context: "#{context}[:overrides]") unless input[:overrides].nil?
      end
    end

    class ComponentVariantValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ComponentVariants
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ComponentVariant.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateComponentData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateComponentData, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
        Hearth::Validator.validate!(input[:component_type], ::String, context: "#{context}[:component_type]")
        Validators::ComponentProperties.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        Validators::ComponentChildList.validate!(input[:children], context: "#{context}[:children]") unless input[:children].nil?
        Validators::ComponentVariants.validate!(input[:variants], context: "#{context}[:variants]") unless input[:variants].nil?
        Validators::ComponentOverrides.validate!(input[:overrides], context: "#{context}[:overrides]") unless input[:overrides].nil?
        Validators::ComponentBindingProperties.validate!(input[:binding_properties], context: "#{context}[:binding_properties]") unless input[:binding_properties].nil?
        Validators::ComponentCollectionProperties.validate!(input[:collection_properties], context: "#{context}[:collection_properties]") unless input[:collection_properties].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::ComponentEvents.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
      end
    end

    class CreateComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateComponentInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::CreateComponentData.validate!(input[:component_to_create], context: "#{context}[:component_to_create]") unless input[:component_to_create].nil?
      end
    end

    class CreateComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateComponentOutput, context: context)
        Validators::Component.validate!(input[:entity], context: "#{context}[:entity]") unless input[:entity].nil?
      end
    end

    class CreateThemeData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateThemeData, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ThemeValuesList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Validators::ThemeValuesList.validate!(input[:overrides], context: "#{context}[:overrides]") unless input[:overrides].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateThemeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateThemeInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::CreateThemeData.validate!(input[:theme_to_create], context: "#{context}[:theme_to_create]") unless input[:theme_to_create].nil?
      end
    end

    class CreateThemeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateThemeOutput, context: context)
        Validators::Theme.validate!(input[:entity], context: "#{context}[:entity]") unless input[:entity].nil?
      end
    end

    class DeleteComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteComponentInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteComponentOutput, context: context)
      end
    end

    class DeleteThemeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteThemeInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteThemeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteThemeOutput, context: context)
      end
    end

    class ExchangeCodeForTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExchangeCodeForTokenInput, context: context)
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Validators::ExchangeCodeForTokenRequestBody.validate!(input[:request], context: "#{context}[:request]") unless input[:request].nil?
      end
    end

    class ExchangeCodeForTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExchangeCodeForTokenOutput, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate!(input[:expires_in], ::Integer, context: "#{context}[:expires_in]")
        Hearth::Validator.validate!(input[:refresh_token], ::String, context: "#{context}[:refresh_token]")
      end
    end

    class ExchangeCodeForTokenRequestBody
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExchangeCodeForTokenRequestBody, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:redirect_uri], ::String, context: "#{context}[:redirect_uri]")
      end
    end

    class ExportComponentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportComponentsInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ExportComponentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportComponentsOutput, context: context)
        Validators::ComponentList.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ExportThemesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportThemesInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ExportThemesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportThemesOutput, context: context)
        Validators::ThemeList.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class FormBindingElement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FormBindingElement, context: context)
        Hearth::Validator.validate!(input[:element], ::String, context: "#{context}[:element]")
        Hearth::Validator.validate!(input[:property], ::String, context: "#{context}[:property]")
      end
    end

    class FormBindings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::FormBindingElement.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class GetComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComponentInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetComponentOutput, context: context)
        Validators::Component.validate!(input[:component], context: "#{context}[:component]") unless input[:component].nil?
      end
    end

    class GetThemeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetThemeInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetThemeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetThemeOutput, context: context)
        Validators::Theme.validate!(input[:theme], context: "#{context}[:theme]") unless input[:theme].nil?
      end
    end

    class IdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListComponentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentsInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListComponentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListComponentsOutput, context: context)
        Validators::ComponentSummaryList.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListThemesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThemesInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListThemesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThemesOutput, context: context)
        Validators::ThemeSummaryList.validate!(input[:entities], context: "#{context}[:entities]") unless input[:entities].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MutationActionSetStateParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MutationActionSetStateParameter, context: context)
        Hearth::Validator.validate!(input[:component_name], ::String, context: "#{context}[:component_name]")
        Hearth::Validator.validate!(input[:property], ::String, context: "#{context}[:property]")
        Validators::ComponentProperty.validate!(input[:set], context: "#{context}[:set]") unless input[:set].nil?
      end
    end

    class Predicate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Predicate, context: context)
        Validators::PredicateList.validate!(input[:or], context: "#{context}[:or]") unless input[:or].nil?
        Validators::PredicateList.validate!(input[:and], context: "#{context}[:and]") unless input[:and].nil?
        Hearth::Validator.validate!(input[:field], ::String, context: "#{context}[:field]")
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
        Hearth::Validator.validate!(input[:operand], ::String, context: "#{context}[:operand]")
      end
    end

    class PredicateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Predicate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RefreshTokenInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RefreshTokenInput, context: context)
        Hearth::Validator.validate!(input[:provider], ::String, context: "#{context}[:provider]")
        Validators::RefreshTokenRequestBody.validate!(input[:refresh_token_body], context: "#{context}[:refresh_token_body]") unless input[:refresh_token_body].nil?
      end
    end

    class RefreshTokenOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RefreshTokenOutput, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate!(input[:expires_in], ::Integer, context: "#{context}[:expires_in]")
      end
    end

    class RefreshTokenRequestBody
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RefreshTokenRequestBody, context: context)
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
      end
    end

    class ResourceConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SortProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SortProperty, context: context)
        Hearth::Validator.validate!(input[:field], ::String, context: "#{context}[:field]")
        Hearth::Validator.validate!(input[:direction], ::String, context: "#{context}[:direction]")
      end
    end

    class SortPropertyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SortProperty.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Theme
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Theme, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:modified_at], ::Time, context: "#{context}[:modified_at]")
        Validators::ThemeValuesList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Validators::ThemeValuesList.validate!(input[:overrides], context: "#{context}[:overrides]") unless input[:overrides].nil?
        Validators::Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ThemeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Theme.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThemeSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThemeSummary, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class ThemeSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ThemeSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThemeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThemeValue, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Validators::ThemeValuesList.validate!(input[:children], context: "#{context}[:children]") unless input[:children].nil?
      end
    end

    class ThemeValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThemeValues, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Validators::ThemeValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class ThemeValuesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ThemeValues.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UpdateComponentData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateComponentData, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:source_id], ::String, context: "#{context}[:source_id]")
        Hearth::Validator.validate!(input[:component_type], ::String, context: "#{context}[:component_type]")
        Validators::ComponentProperties.validate!(input[:properties], context: "#{context}[:properties]") unless input[:properties].nil?
        Validators::ComponentChildList.validate!(input[:children], context: "#{context}[:children]") unless input[:children].nil?
        Validators::ComponentVariants.validate!(input[:variants], context: "#{context}[:variants]") unless input[:variants].nil?
        Validators::ComponentOverrides.validate!(input[:overrides], context: "#{context}[:overrides]") unless input[:overrides].nil?
        Validators::ComponentBindingProperties.validate!(input[:binding_properties], context: "#{context}[:binding_properties]") unless input[:binding_properties].nil?
        Validators::ComponentCollectionProperties.validate!(input[:collection_properties], context: "#{context}[:collection_properties]") unless input[:collection_properties].nil?
        Validators::ComponentEvents.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Hearth::Validator.validate!(input[:schema_version], ::String, context: "#{context}[:schema_version]")
      end
    end

    class UpdateComponentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateComponentInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::UpdateComponentData.validate!(input[:updated_component], context: "#{context}[:updated_component]") unless input[:updated_component].nil?
      end
    end

    class UpdateComponentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateComponentOutput, context: context)
        Validators::Component.validate!(input[:entity], context: "#{context}[:entity]") unless input[:entity].nil?
      end
    end

    class UpdateThemeData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThemeData, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ThemeValuesList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Validators::ThemeValuesList.validate!(input[:overrides], context: "#{context}[:overrides]") unless input[:overrides].nil?
      end
    end

    class UpdateThemeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThemeInput, context: context)
        Hearth::Validator.validate!(input[:app_id], ::String, context: "#{context}[:app_id]")
        Hearth::Validator.validate!(input[:environment_name], ::String, context: "#{context}[:environment_name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::UpdateThemeData.validate!(input[:updated_theme], context: "#{context}[:updated_theme]") unless input[:updated_theme].nil?
      end
    end

    class UpdateThemeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThemeOutput, context: context)
        Validators::Theme.validate!(input[:entity], context: "#{context}[:entity]") unless input[:entity].nil?
      end
    end

  end
end
