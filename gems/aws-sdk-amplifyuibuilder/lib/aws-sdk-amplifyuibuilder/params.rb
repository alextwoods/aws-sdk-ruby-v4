# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::AmplifyUIBuilder
  module Params

    module ActionParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActionParameters, context: context)
        type = Types::ActionParameters.new
        type.type = ComponentProperty.build(params[:type], context: "#{context}[:type]") unless params[:type].nil?
        type.url = ComponentProperty.build(params[:url], context: "#{context}[:url]") unless params[:url].nil?
        type.anchor = ComponentProperty.build(params[:anchor], context: "#{context}[:anchor]") unless params[:anchor].nil?
        type.target = ComponentProperty.build(params[:target], context: "#{context}[:target]") unless params[:target].nil?
        type.global = ComponentProperty.build(params[:global], context: "#{context}[:global]") unless params[:global].nil?
        type.model = params[:model]
        type.id = ComponentProperty.build(params[:id], context: "#{context}[:id]") unless params[:id].nil?
        type.fields = ComponentProperties.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type.state = MutationActionSetStateParameter.build(params[:state], context: "#{context}[:state]") unless params[:state].nil?
        type
      end
    end

    module Component
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Component, context: context)
        type = Types::Component.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type.source_id = params[:source_id]
        type.id = params[:id]
        type.name = params[:name]
        type.component_type = params[:component_type]
        type.properties = ComponentProperties.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.children = ComponentChildList.build(params[:children], context: "#{context}[:children]") unless params[:children].nil?
        type.variants = ComponentVariants.build(params[:variants], context: "#{context}[:variants]") unless params[:variants].nil?
        type.overrides = ComponentOverrides.build(params[:overrides], context: "#{context}[:overrides]") unless params[:overrides].nil?
        type.binding_properties = ComponentBindingProperties.build(params[:binding_properties], context: "#{context}[:binding_properties]") unless params[:binding_properties].nil?
        type.collection_properties = ComponentCollectionProperties.build(params[:collection_properties], context: "#{context}[:collection_properties]") unless params[:collection_properties].nil?
        type.created_at = params[:created_at]
        type.modified_at = params[:modified_at]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.events = ComponentEvents.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.schema_version = params[:schema_version]
        type
      end
    end

    module ComponentBindingProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ComponentBindingPropertiesValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ComponentBindingPropertiesValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentBindingPropertiesValue, context: context)
        type = Types::ComponentBindingPropertiesValue.new
        type.type = params[:type]
        type.binding_properties = ComponentBindingPropertiesValueProperties.build(params[:binding_properties], context: "#{context}[:binding_properties]") unless params[:binding_properties].nil?
        type.default_value = params[:default_value]
        type
      end
    end

    module ComponentBindingPropertiesValueProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentBindingPropertiesValueProperties, context: context)
        type = Types::ComponentBindingPropertiesValueProperties.new
        type.model = params[:model]
        type.field = params[:field]
        type.predicates = PredicateList.build(params[:predicates], context: "#{context}[:predicates]") unless params[:predicates].nil?
        type.user_attribute = params[:user_attribute]
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.default_value = params[:default_value]
        type
      end
    end

    module ComponentChild
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentChild, context: context)
        type = Types::ComponentChild.new
        type.component_type = params[:component_type]
        type.name = params[:name]
        type.properties = ComponentProperties.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.children = ComponentChildList.build(params[:children], context: "#{context}[:children]") unless params[:children].nil?
        type.events = ComponentEvents.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.source_id = params[:source_id]
        type
      end
    end

    module ComponentChildList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComponentChild.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComponentCollectionProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ComponentDataConfiguration.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ComponentConditionProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentConditionProperty, context: context)
        type = Types::ComponentConditionProperty.new
        type.property = params[:property]
        type.field = params[:field]
        type.operator = params[:operator]
        type.operand = params[:operand]
        type.member_then = ComponentProperty.build(params[:member_then], context: "#{context}[:member_then]") unless params[:member_then].nil?
        type.else = ComponentProperty.build(params[:else], context: "#{context}[:else]") unless params[:else].nil?
        type.operand_type = params[:operand_type]
        type
      end
    end

    module ComponentDataConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentDataConfiguration, context: context)
        type = Types::ComponentDataConfiguration.new
        type.model = params[:model]
        type.sort = SortPropertyList.build(params[:sort], context: "#{context}[:sort]") unless params[:sort].nil?
        type.predicate = Predicate.build(params[:predicate], context: "#{context}[:predicate]") unless params[:predicate].nil?
        type.identifiers = IdentifierList.build(params[:identifiers], context: "#{context}[:identifiers]") unless params[:identifiers].nil?
        type
      end
    end

    module ComponentEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentEvent, context: context)
        type = Types::ComponentEvent.new
        type.action = params[:action]
        type.parameters = ActionParameters.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.binding_event = params[:binding_event]
        type
      end
    end

    module ComponentEvents
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ComponentEvent.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ComponentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Component.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComponentOverrides
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ComponentOverridesValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ComponentOverridesValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ComponentProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ComponentProperty.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ComponentProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentProperty, context: context)
        type = Types::ComponentProperty.new
        type.value = params[:value]
        type.binding_properties = ComponentPropertyBindingProperties.build(params[:binding_properties], context: "#{context}[:binding_properties]") unless params[:binding_properties].nil?
        type.collection_binding_properties = ComponentPropertyBindingProperties.build(params[:collection_binding_properties], context: "#{context}[:collection_binding_properties]") unless params[:collection_binding_properties].nil?
        type.default_value = params[:default_value]
        type.model = params[:model]
        type.bindings = FormBindings.build(params[:bindings], context: "#{context}[:bindings]") unless params[:bindings].nil?
        type.event = params[:event]
        type.user_attribute = params[:user_attribute]
        type.concat = ComponentPropertyList.build(params[:concat], context: "#{context}[:concat]") unless params[:concat].nil?
        type.condition = ComponentConditionProperty.build(params[:condition], context: "#{context}[:condition]") unless params[:condition].nil?
        type.configured = params[:configured]
        type.type = params[:type]
        type.imported_value = params[:imported_value]
        type.component_name = params[:component_name]
        type.property = params[:property]
        type
      end
    end

    module ComponentPropertyBindingProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentPropertyBindingProperties, context: context)
        type = Types::ComponentPropertyBindingProperties.new
        type.property = params[:property]
        type.field = params[:field]
        type
      end
    end

    module ComponentPropertyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComponentProperty.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComponentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentSummary, context: context)
        type = Types::ComponentSummary.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type.id = params[:id]
        type.name = params[:name]
        type.component_type = params[:component_type]
        type
      end
    end

    module ComponentSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComponentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ComponentVariant
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ComponentVariant, context: context)
        type = Types::ComponentVariant.new
        type.variant_values = ComponentVariantValues.build(params[:variant_values], context: "#{context}[:variant_values]") unless params[:variant_values].nil?
        type.overrides = ComponentOverrides.build(params[:overrides], context: "#{context}[:overrides]") unless params[:overrides].nil?
        type
      end
    end

    module ComponentVariantValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ComponentVariants
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ComponentVariant.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateComponentData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateComponentData, context: context)
        type = Types::CreateComponentData.new
        type.name = params[:name]
        type.source_id = params[:source_id]
        type.component_type = params[:component_type]
        type.properties = ComponentProperties.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.children = ComponentChildList.build(params[:children], context: "#{context}[:children]") unless params[:children].nil?
        type.variants = ComponentVariants.build(params[:variants], context: "#{context}[:variants]") unless params[:variants].nil?
        type.overrides = ComponentOverrides.build(params[:overrides], context: "#{context}[:overrides]") unless params[:overrides].nil?
        type.binding_properties = ComponentBindingProperties.build(params[:binding_properties], context: "#{context}[:binding_properties]") unless params[:binding_properties].nil?
        type.collection_properties = ComponentCollectionProperties.build(params[:collection_properties], context: "#{context}[:collection_properties]") unless params[:collection_properties].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.events = ComponentEvents.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.schema_version = params[:schema_version]
        type
      end
    end

    module CreateComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateComponentInput, context: context)
        type = Types::CreateComponentInput.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.component_to_create = CreateComponentData.build(params[:component_to_create], context: "#{context}[:component_to_create]") unless params[:component_to_create].nil?
        type
      end
    end

    module CreateComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateComponentOutput, context: context)
        type = Types::CreateComponentOutput.new
        type.entity = Component.build(params[:entity], context: "#{context}[:entity]") unless params[:entity].nil?
        type
      end
    end

    module CreateThemeData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateThemeData, context: context)
        type = Types::CreateThemeData.new
        type.name = params[:name]
        type.values = ThemeValuesList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.overrides = ThemeValuesList.build(params[:overrides], context: "#{context}[:overrides]") unless params[:overrides].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateThemeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateThemeInput, context: context)
        type = Types::CreateThemeInput.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.theme_to_create = CreateThemeData.build(params[:theme_to_create], context: "#{context}[:theme_to_create]") unless params[:theme_to_create].nil?
        type
      end
    end

    module CreateThemeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateThemeOutput, context: context)
        type = Types::CreateThemeOutput.new
        type.entity = Theme.build(params[:entity], context: "#{context}[:entity]") unless params[:entity].nil?
        type
      end
    end

    module DeleteComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteComponentInput, context: context)
        type = Types::DeleteComponentInput.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type.id = params[:id]
        type
      end
    end

    module DeleteComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteComponentOutput, context: context)
        type = Types::DeleteComponentOutput.new
        type
      end
    end

    module DeleteThemeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteThemeInput, context: context)
        type = Types::DeleteThemeInput.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type.id = params[:id]
        type
      end
    end

    module DeleteThemeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteThemeOutput, context: context)
        type = Types::DeleteThemeOutput.new
        type
      end
    end

    module ExchangeCodeForTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExchangeCodeForTokenInput, context: context)
        type = Types::ExchangeCodeForTokenInput.new
        type.provider = params[:provider]
        type.request = ExchangeCodeForTokenRequestBody.build(params[:request], context: "#{context}[:request]") unless params[:request].nil?
        type
      end
    end

    module ExchangeCodeForTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExchangeCodeForTokenOutput, context: context)
        type = Types::ExchangeCodeForTokenOutput.new
        type.access_token = params[:access_token]
        type.expires_in = params[:expires_in]
        type.refresh_token = params[:refresh_token]
        type
      end
    end

    module ExchangeCodeForTokenRequestBody
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExchangeCodeForTokenRequestBody, context: context)
        type = Types::ExchangeCodeForTokenRequestBody.new
        type.code = params[:code]
        type.redirect_uri = params[:redirect_uri]
        type
      end
    end

    module ExportComponentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportComponentsInput, context: context)
        type = Types::ExportComponentsInput.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module ExportComponentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportComponentsOutput, context: context)
        type = Types::ExportComponentsOutput.new
        type.entities = ComponentList.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ExportThemesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportThemesInput, context: context)
        type = Types::ExportThemesInput.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module ExportThemesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportThemesOutput, context: context)
        type = Types::ExportThemesOutput.new
        type.entities = ThemeList.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module FormBindingElement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FormBindingElement, context: context)
        type = Types::FormBindingElement.new
        type.element = params[:element]
        type.property = params[:property]
        type
      end
    end

    module FormBindings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = FormBindingElement.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module GetComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComponentInput, context: context)
        type = Types::GetComponentInput.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type.id = params[:id]
        type
      end
    end

    module GetComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetComponentOutput, context: context)
        type = Types::GetComponentOutput.new
        type.component = Component.build(params[:component], context: "#{context}[:component]") unless params[:component].nil?
        type
      end
    end

    module GetThemeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetThemeInput, context: context)
        type = Types::GetThemeInput.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type.id = params[:id]
        type
      end
    end

    module GetThemeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetThemeOutput, context: context)
        type = Types::GetThemeOutput.new
        type.theme = Theme.build(params[:theme], context: "#{context}[:theme]") unless params[:theme].nil?
        type
      end
    end

    module IdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParameterException, context: context)
        type = Types::InvalidParameterException.new
        type.message = params[:message]
        type
      end
    end

    module ListComponentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentsInput, context: context)
        type = Types::ListComponentsInput.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListComponentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListComponentsOutput, context: context)
        type = Types::ListComponentsOutput.new
        type.entities = ComponentSummaryList.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListThemesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThemesInput, context: context)
        type = Types::ListThemesInput.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListThemesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThemesOutput, context: context)
        type = Types::ListThemesOutput.new
        type.entities = ThemeSummaryList.build(params[:entities], context: "#{context}[:entities]") unless params[:entities].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MutationActionSetStateParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MutationActionSetStateParameter, context: context)
        type = Types::MutationActionSetStateParameter.new
        type.component_name = params[:component_name]
        type.property = params[:property]
        type.set = ComponentProperty.build(params[:set], context: "#{context}[:set]") unless params[:set].nil?
        type
      end
    end

    module Predicate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Predicate, context: context)
        type = Types::Predicate.new
        type.or = PredicateList.build(params[:or], context: "#{context}[:or]") unless params[:or].nil?
        type.and = PredicateList.build(params[:and], context: "#{context}[:and]") unless params[:and].nil?
        type.field = params[:field]
        type.operator = params[:operator]
        type.operand = params[:operand]
        type
      end
    end

    module PredicateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Predicate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RefreshTokenInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RefreshTokenInput, context: context)
        type = Types::RefreshTokenInput.new
        type.provider = params[:provider]
        type.refresh_token_body = RefreshTokenRequestBody.build(params[:refresh_token_body], context: "#{context}[:refresh_token_body]") unless params[:refresh_token_body].nil?
        type
      end
    end

    module RefreshTokenOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RefreshTokenOutput, context: context)
        type = Types::RefreshTokenOutput.new
        type.access_token = params[:access_token]
        type.expires_in = params[:expires_in]
        type
      end
    end

    module RefreshTokenRequestBody
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RefreshTokenRequestBody, context: context)
        type = Types::RefreshTokenRequestBody.new
        type.token = params[:token]
        type
      end
    end

    module ResourceConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceConflictException, context: context)
        type = Types::ResourceConflictException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module SortProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SortProperty, context: context)
        type = Types::SortProperty.new
        type.field = params[:field]
        type.direction = params[:direction]
        type
      end
    end

    module SortPropertyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SortProperty.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Theme
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Theme, context: context)
        type = Types::Theme.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type.id = params[:id]
        type.name = params[:name]
        type.created_at = params[:created_at]
        type.modified_at = params[:modified_at]
        type.values = ThemeValuesList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.overrides = ThemeValuesList.build(params[:overrides], context: "#{context}[:overrides]") unless params[:overrides].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ThemeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Theme.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThemeSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThemeSummary, context: context)
        type = Types::ThemeSummary.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type.id = params[:id]
        type.name = params[:name]
        type
      end
    end

    module ThemeSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ThemeSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThemeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThemeValue, context: context)
        type = Types::ThemeValue.new
        type.value = params[:value]
        type.children = ThemeValuesList.build(params[:children], context: "#{context}[:children]") unless params[:children].nil?
        type
      end
    end

    module ThemeValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThemeValues, context: context)
        type = Types::ThemeValues.new
        type.key = params[:key]
        type.value = ThemeValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module ThemeValuesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ThemeValues.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UpdateComponentData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateComponentData, context: context)
        type = Types::UpdateComponentData.new
        type.id = params[:id]
        type.name = params[:name]
        type.source_id = params[:source_id]
        type.component_type = params[:component_type]
        type.properties = ComponentProperties.build(params[:properties], context: "#{context}[:properties]") unless params[:properties].nil?
        type.children = ComponentChildList.build(params[:children], context: "#{context}[:children]") unless params[:children].nil?
        type.variants = ComponentVariants.build(params[:variants], context: "#{context}[:variants]") unless params[:variants].nil?
        type.overrides = ComponentOverrides.build(params[:overrides], context: "#{context}[:overrides]") unless params[:overrides].nil?
        type.binding_properties = ComponentBindingProperties.build(params[:binding_properties], context: "#{context}[:binding_properties]") unless params[:binding_properties].nil?
        type.collection_properties = ComponentCollectionProperties.build(params[:collection_properties], context: "#{context}[:collection_properties]") unless params[:collection_properties].nil?
        type.events = ComponentEvents.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.schema_version = params[:schema_version]
        type
      end
    end

    module UpdateComponentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateComponentInput, context: context)
        type = Types::UpdateComponentInput.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type.id = params[:id]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.updated_component = UpdateComponentData.build(params[:updated_component], context: "#{context}[:updated_component]") unless params[:updated_component].nil?
        type
      end
    end

    module UpdateComponentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateComponentOutput, context: context)
        type = Types::UpdateComponentOutput.new
        type.entity = Component.build(params[:entity], context: "#{context}[:entity]") unless params[:entity].nil?
        type
      end
    end

    module UpdateThemeData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThemeData, context: context)
        type = Types::UpdateThemeData.new
        type.id = params[:id]
        type.name = params[:name]
        type.values = ThemeValuesList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.overrides = ThemeValuesList.build(params[:overrides], context: "#{context}[:overrides]") unless params[:overrides].nil?
        type
      end
    end

    module UpdateThemeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThemeInput, context: context)
        type = Types::UpdateThemeInput.new
        type.app_id = params[:app_id]
        type.environment_name = params[:environment_name]
        type.id = params[:id]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.updated_theme = UpdateThemeData.build(params[:updated_theme], context: "#{context}[:updated_theme]") unless params[:updated_theme].nil?
        type
      end
    end

    module UpdateThemeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThemeOutput, context: context)
        type = Types::UpdateThemeOutput.new
        type.entity = Theme.build(params[:entity], context: "#{context}[:entity]") unless params[:entity].nil?
        type
      end
    end

  end
end
