# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AmplifyUIBuilder
  module Parsers

    # Operation Parser for CreateComponent
    class CreateComponent
      def self.parse(http_resp)
        data = Types::CreateComponentOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.entity = Component.parse(json)
        data
      end
    end

    class Component
      def self.parse(map)
        data = Types::Component.new
        data.app_id = map['appId']
        data.environment_name = map['environmentName']
        data.source_id = map['sourceId']
        data.id = map['id']
        data.name = map['name']
        data.component_type = map['componentType']
        data.properties = (ComponentProperties.parse(map['properties']) unless map['properties'].nil?)
        data.children = (ComponentChildList.parse(map['children']) unless map['children'].nil?)
        data.variants = (ComponentVariants.parse(map['variants']) unless map['variants'].nil?)
        data.overrides = (ComponentOverrides.parse(map['overrides']) unless map['overrides'].nil?)
        data.binding_properties = (ComponentBindingProperties.parse(map['bindingProperties']) unless map['bindingProperties'].nil?)
        data.collection_properties = (ComponentCollectionProperties.parse(map['collectionProperties']) unless map['collectionProperties'].nil?)
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.modified_at = Time.parse(map['modifiedAt']) if map['modifiedAt']
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        data.events = (ComponentEvents.parse(map['events']) unless map['events'].nil?)
        data.schema_version = map['schemaVersion']
        return data
      end
    end

    class ComponentEvents
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = ComponentEvent.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComponentEvent
      def self.parse(map)
        data = Types::ComponentEvent.new
        data.action = map['action']
        data.parameters = (ActionParameters.parse(map['parameters']) unless map['parameters'].nil?)
        data.binding_event = map['bindingEvent']
        return data
      end
    end

    class ActionParameters
      def self.parse(map)
        data = Types::ActionParameters.new
        data.type = (ComponentProperty.parse(map['type']) unless map['type'].nil?)
        data.url = (ComponentProperty.parse(map['url']) unless map['url'].nil?)
        data.anchor = (ComponentProperty.parse(map['anchor']) unless map['anchor'].nil?)
        data.target = (ComponentProperty.parse(map['target']) unless map['target'].nil?)
        data.global = (ComponentProperty.parse(map['global']) unless map['global'].nil?)
        data.model = map['model']
        data.id = (ComponentProperty.parse(map['id']) unless map['id'].nil?)
        data.fields = (ComponentProperties.parse(map['fields']) unless map['fields'].nil?)
        data.state = (MutationActionSetStateParameter.parse(map['state']) unless map['state'].nil?)
        return data
      end
    end

    class MutationActionSetStateParameter
      def self.parse(map)
        data = Types::MutationActionSetStateParameter.new
        data.component_name = map['componentName']
        data.property = map['property']
        data.set = (ComponentProperty.parse(map['set']) unless map['set'].nil?)
        return data
      end
    end

    class ComponentProperty
      def self.parse(map)
        data = Types::ComponentProperty.new
        data.value = map['value']
        data.binding_properties = (ComponentPropertyBindingProperties.parse(map['bindingProperties']) unless map['bindingProperties'].nil?)
        data.collection_binding_properties = (ComponentPropertyBindingProperties.parse(map['collectionBindingProperties']) unless map['collectionBindingProperties'].nil?)
        data.default_value = map['defaultValue']
        data.model = map['model']
        data.bindings = (FormBindings.parse(map['bindings']) unless map['bindings'].nil?)
        data.event = map['event']
        data.user_attribute = map['userAttribute']
        data.concat = (ComponentPropertyList.parse(map['concat']) unless map['concat'].nil?)
        data.condition = (ComponentConditionProperty.parse(map['condition']) unless map['condition'].nil?)
        data.configured = map['configured']
        data.type = map['type']
        data.imported_value = map['importedValue']
        data.component_name = map['componentName']
        data.property = map['property']
        return data
      end
    end

    class ComponentConditionProperty
      def self.parse(map)
        data = Types::ComponentConditionProperty.new
        data.property = map['property']
        data.field = map['field']
        data.operator = map['operator']
        data.operand = map['operand']
        data.member_then = (ComponentProperty.parse(map['then']) unless map['then'].nil?)
        data.else = (ComponentProperty.parse(map['else']) unless map['else'].nil?)
        data.operand_type = map['operandType']
        return data
      end
    end

    class ComponentPropertyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ComponentProperty.parse(value) unless value.nil?
        end
        data
      end
    end

    class FormBindings
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = FormBindingElement.parse(value) unless value.nil?
        end
        data
      end
    end

    class FormBindingElement
      def self.parse(map)
        data = Types::FormBindingElement.new
        data.element = map['element']
        data.property = map['property']
        return data
      end
    end

    class ComponentPropertyBindingProperties
      def self.parse(map)
        data = Types::ComponentPropertyBindingProperties.new
        data.property = map['property']
        data.field = map['field']
        return data
      end
    end

    class ComponentProperties
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = ComponentProperty.parse(value) unless value.nil?
        end
        data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ComponentCollectionProperties
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = ComponentDataConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComponentDataConfiguration
      def self.parse(map)
        data = Types::ComponentDataConfiguration.new
        data.model = map['model']
        data.sort = (SortPropertyList.parse(map['sort']) unless map['sort'].nil?)
        data.predicate = (Predicate.parse(map['predicate']) unless map['predicate'].nil?)
        data.identifiers = (IdentifierList.parse(map['identifiers']) unless map['identifiers'].nil?)
        return data
      end
    end

    class IdentifierList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Predicate
      def self.parse(map)
        data = Types::Predicate.new
        data.or = (PredicateList.parse(map['or']) unless map['or'].nil?)
        data.and = (PredicateList.parse(map['and']) unless map['and'].nil?)
        data.field = map['field']
        data.operator = map['operator']
        data.operand = map['operand']
        return data
      end
    end

    class PredicateList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Predicate.parse(value) unless value.nil?
        end
        data
      end
    end

    class SortPropertyList
      def self.parse(list)
        data = []
        list.map do |value|
          data << SortProperty.parse(value) unless value.nil?
        end
        data
      end
    end

    class SortProperty
      def self.parse(map)
        data = Types::SortProperty.new
        data.field = map['field']
        data.direction = map['direction']
        return data
      end
    end

    class ComponentBindingProperties
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = ComponentBindingPropertiesValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComponentBindingPropertiesValue
      def self.parse(map)
        data = Types::ComponentBindingPropertiesValue.new
        data.type = map['type']
        data.binding_properties = (ComponentBindingPropertiesValueProperties.parse(map['bindingProperties']) unless map['bindingProperties'].nil?)
        data.default_value = map['defaultValue']
        return data
      end
    end

    class ComponentBindingPropertiesValueProperties
      def self.parse(map)
        data = Types::ComponentBindingPropertiesValueProperties.new
        data.model = map['model']
        data.field = map['field']
        data.predicates = (PredicateList.parse(map['predicates']) unless map['predicates'].nil?)
        data.user_attribute = map['userAttribute']
        data.bucket = map['bucket']
        data.key = map['key']
        data.default_value = map['defaultValue']
        return data
      end
    end

    class ComponentOverrides
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = ComponentOverridesValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComponentOverridesValue
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ComponentVariants
      def self.parse(list)
        data = []
        list.map do |value|
          data << ComponentVariant.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComponentVariant
      def self.parse(map)
        data = Types::ComponentVariant.new
        data.variant_values = (ComponentVariantValues.parse(map['variantValues']) unless map['variantValues'].nil?)
        data.overrides = (ComponentOverrides.parse(map['overrides']) unless map['overrides'].nil?)
        return data
      end
    end

    class ComponentVariantValues
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ComponentChildList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ComponentChild.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComponentChild
      def self.parse(map)
        data = Types::ComponentChild.new
        data.component_type = map['componentType']
        data.name = map['name']
        data.properties = (ComponentProperties.parse(map['properties']) unless map['properties'].nil?)
        data.children = (ComponentChildList.parse(map['children']) unless map['children'].nil?)
        data.events = (ComponentEvents.parse(map['events']) unless map['events'].nil?)
        data.source_id = map['sourceId']
        return data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceConflictException
    class ResourceConflictException
      def self.parse(http_resp)
        data = Types::ResourceConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidParameterException
    class InvalidParameterException
      def self.parse(http_resp)
        data = Types::InvalidParameterException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateTheme
    class CreateTheme
      def self.parse(http_resp)
        data = Types::CreateThemeOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.entity = Theme.parse(json)
        data
      end
    end

    class Theme
      def self.parse(map)
        data = Types::Theme.new
        data.app_id = map['appId']
        data.environment_name = map['environmentName']
        data.id = map['id']
        data.name = map['name']
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.modified_at = Time.parse(map['modifiedAt']) if map['modifiedAt']
        data.values = (ThemeValuesList.parse(map['values']) unless map['values'].nil?)
        data.overrides = (ThemeValuesList.parse(map['overrides']) unless map['overrides'].nil?)
        data.tags = (Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class ThemeValuesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ThemeValues.parse(value) unless value.nil?
        end
        data
      end
    end

    class ThemeValues
      def self.parse(map)
        data = Types::ThemeValues.new
        data.key = map['key']
        data.value = (ThemeValue.parse(map['value']) unless map['value'].nil?)
        return data
      end
    end

    class ThemeValue
      def self.parse(map)
        data = Types::ThemeValue.new
        data.value = map['value']
        data.children = (ThemeValuesList.parse(map['children']) unless map['children'].nil?)
        return data
      end
    end

    # Operation Parser for DeleteComponent
    class DeleteComponent
      def self.parse(http_resp)
        data = Types::DeleteComponentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DeleteTheme
    class DeleteTheme
      def self.parse(http_resp)
        data = Types::DeleteThemeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ExchangeCodeForToken
    class ExchangeCodeForToken
      def self.parse(http_resp)
        data = Types::ExchangeCodeForTokenOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.access_token = map['accessToken']
        data.expires_in = map['expiresIn']
        data.refresh_token = map['refreshToken']
        data
      end
    end

    # Operation Parser for ExportComponents
    class ExportComponents
      def self.parse(http_resp)
        data = Types::ExportComponentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entities = (ComponentList.parse(map['entities']) unless map['entities'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ComponentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Component.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ExportThemes
    class ExportThemes
      def self.parse(http_resp)
        data = Types::ExportThemesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entities = (ThemeList.parse(map['entities']) unless map['entities'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ThemeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Theme.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetComponent
    class GetComponent
      def self.parse(http_resp)
        data = Types::GetComponentOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.component = Component.parse(json)
        data
      end
    end

    # Operation Parser for GetTheme
    class GetTheme
      def self.parse(http_resp)
        data = Types::GetThemeOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.theme = Theme.parse(json)
        data
      end
    end

    # Operation Parser for ListComponents
    class ListComponents
      def self.parse(http_resp)
        data = Types::ListComponentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entities = (ComponentSummaryList.parse(map['entities']) unless map['entities'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ComponentSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ComponentSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ComponentSummary
      def self.parse(map)
        data = Types::ComponentSummary.new
        data.app_id = map['appId']
        data.environment_name = map['environmentName']
        data.id = map['id']
        data.name = map['name']
        data.component_type = map['componentType']
        return data
      end
    end

    # Operation Parser for ListThemes
    class ListThemes
      def self.parse(http_resp)
        data = Types::ListThemesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.entities = (ThemeSummaryList.parse(map['entities']) unless map['entities'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ThemeSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ThemeSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ThemeSummary
      def self.parse(map)
        data = Types::ThemeSummary.new
        data.app_id = map['appId']
        data.environment_name = map['environmentName']
        data.id = map['id']
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for RefreshToken
    class RefreshToken
      def self.parse(http_resp)
        data = Types::RefreshTokenOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.access_token = map['accessToken']
        data.expires_in = map['expiresIn']
        data
      end
    end

    # Operation Parser for UpdateComponent
    class UpdateComponent
      def self.parse(http_resp)
        data = Types::UpdateComponentOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.entity = Component.parse(json)
        data
      end
    end

    # Operation Parser for UpdateTheme
    class UpdateTheme
      def self.parse(http_resp)
        data = Types::UpdateThemeOutput.new
        json = Hearth::JSON.load(http_resp.body)
        data.entity = Theme.parse(json)
        data
      end
    end
  end
end
