# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::AmplifyUIBuilder
  module Stubs

    # Operation Stubber for CreateComponent
    class CreateComponent
      def self.default(visited=[])
        {
          entity: Component.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Component.stub(stub[:entity]) unless stub[:entity].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Component
    class Component
      def self.default(visited=[])
        return nil if visited.include?('Component')
        visited = visited + ['Component']
        {
          app_id: 'app_id',
          environment_name: 'environment_name',
          source_id: 'source_id',
          id: 'id',
          name: 'name',
          component_type: 'component_type',
          properties: ComponentProperties.default(visited),
          children: ComponentChildList.default(visited),
          variants: ComponentVariants.default(visited),
          overrides: ComponentOverrides.default(visited),
          binding_properties: ComponentBindingProperties.default(visited),
          collection_properties: ComponentCollectionProperties.default(visited),
          created_at: Time.now,
          modified_at: Time.now,
          tags: Tags.default(visited),
          events: ComponentEvents.default(visited),
          schema_version: 'schema_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::Component.new
        data = {}
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['environmentName'] = stub[:environment_name] unless stub[:environment_name].nil?
        data['sourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['componentType'] = stub[:component_type] unless stub[:component_type].nil?
        data['properties'] = ComponentProperties.stub(stub[:properties]) unless stub[:properties].nil?
        data['children'] = ComponentChildList.stub(stub[:children]) unless stub[:children].nil?
        data['variants'] = ComponentVariants.stub(stub[:variants]) unless stub[:variants].nil?
        data['overrides'] = ComponentOverrides.stub(stub[:overrides]) unless stub[:overrides].nil?
        data['bindingProperties'] = ComponentBindingProperties.stub(stub[:binding_properties]) unless stub[:binding_properties].nil?
        data['collectionProperties'] = ComponentCollectionProperties.stub(stub[:collection_properties]) unless stub[:collection_properties].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['modifiedAt'] = Hearth::TimeHelper.to_date_time(stub[:modified_at]) unless stub[:modified_at].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['events'] = ComponentEvents.stub(stub[:events]) unless stub[:events].nil?
        data['schemaVersion'] = stub[:schema_version] unless stub[:schema_version].nil?
        data
      end
    end

    # Map Stubber for ComponentEvents
    class ComponentEvents
      def self.default(visited=[])
        return nil if visited.include?('ComponentEvents')
        visited = visited + ['ComponentEvents']
        {
          test_key: ComponentEvent.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ComponentEvent.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ComponentEvent
    class ComponentEvent
      def self.default(visited=[])
        return nil if visited.include?('ComponentEvent')
        visited = visited + ['ComponentEvent']
        {
          action: 'action',
          parameters: ActionParameters.default(visited),
          binding_event: 'binding_event',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentEvent.new
        data = {}
        data['action'] = stub[:action] unless stub[:action].nil?
        data['parameters'] = ActionParameters.stub(stub[:parameters]) unless stub[:parameters].nil?
        data['bindingEvent'] = stub[:binding_event] unless stub[:binding_event].nil?
        data
      end
    end

    # Structure Stubber for ActionParameters
    class ActionParameters
      def self.default(visited=[])
        return nil if visited.include?('ActionParameters')
        visited = visited + ['ActionParameters']
        {
          type: ComponentProperty.default(visited),
          url: ComponentProperty.default(visited),
          anchor: ComponentProperty.default(visited),
          target: ComponentProperty.default(visited),
          global: ComponentProperty.default(visited),
          model: 'model',
          id: ComponentProperty.default(visited),
          fields: ComponentProperties.default(visited),
          state: MutationActionSetStateParameter.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionParameters.new
        data = {}
        data['type'] = ComponentProperty.stub(stub[:type]) unless stub[:type].nil?
        data['url'] = ComponentProperty.stub(stub[:url]) unless stub[:url].nil?
        data['anchor'] = ComponentProperty.stub(stub[:anchor]) unless stub[:anchor].nil?
        data['target'] = ComponentProperty.stub(stub[:target]) unless stub[:target].nil?
        data['global'] = ComponentProperty.stub(stub[:global]) unless stub[:global].nil?
        data['model'] = stub[:model] unless stub[:model].nil?
        data['id'] = ComponentProperty.stub(stub[:id]) unless stub[:id].nil?
        data['fields'] = ComponentProperties.stub(stub[:fields]) unless stub[:fields].nil?
        data['state'] = MutationActionSetStateParameter.stub(stub[:state]) unless stub[:state].nil?
        data
      end
    end

    # Structure Stubber for MutationActionSetStateParameter
    class MutationActionSetStateParameter
      def self.default(visited=[])
        return nil if visited.include?('MutationActionSetStateParameter')
        visited = visited + ['MutationActionSetStateParameter']
        {
          component_name: 'component_name',
          property: 'property',
          set: ComponentProperty.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MutationActionSetStateParameter.new
        data = {}
        data['componentName'] = stub[:component_name] unless stub[:component_name].nil?
        data['property'] = stub[:property] unless stub[:property].nil?
        data['set'] = ComponentProperty.stub(stub[:set]) unless stub[:set].nil?
        data
      end
    end

    # Structure Stubber for ComponentProperty
    class ComponentProperty
      def self.default(visited=[])
        return nil if visited.include?('ComponentProperty')
        visited = visited + ['ComponentProperty']
        {
          value: 'value',
          binding_properties: ComponentPropertyBindingProperties.default(visited),
          collection_binding_properties: ComponentPropertyBindingProperties.default(visited),
          default_value: 'default_value',
          model: 'model',
          bindings: FormBindings.default(visited),
          event: 'event',
          user_attribute: 'user_attribute',
          concat: ComponentPropertyList.default(visited),
          condition: ComponentConditionProperty.default(visited),
          configured: false,
          type: 'type',
          imported_value: 'imported_value',
          component_name: 'component_name',
          property: 'property',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentProperty.new
        data = {}
        data['value'] = stub[:value] unless stub[:value].nil?
        data['bindingProperties'] = ComponentPropertyBindingProperties.stub(stub[:binding_properties]) unless stub[:binding_properties].nil?
        data['collectionBindingProperties'] = ComponentPropertyBindingProperties.stub(stub[:collection_binding_properties]) unless stub[:collection_binding_properties].nil?
        data['defaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data['model'] = stub[:model] unless stub[:model].nil?
        data['bindings'] = FormBindings.stub(stub[:bindings]) unless stub[:bindings].nil?
        data['event'] = stub[:event] unless stub[:event].nil?
        data['userAttribute'] = stub[:user_attribute] unless stub[:user_attribute].nil?
        data['concat'] = ComponentPropertyList.stub(stub[:concat]) unless stub[:concat].nil?
        data['condition'] = ComponentConditionProperty.stub(stub[:condition]) unless stub[:condition].nil?
        data['configured'] = stub[:configured] unless stub[:configured].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['importedValue'] = stub[:imported_value] unless stub[:imported_value].nil?
        data['componentName'] = stub[:component_name] unless stub[:component_name].nil?
        data['property'] = stub[:property] unless stub[:property].nil?
        data
      end
    end

    # Structure Stubber for ComponentConditionProperty
    class ComponentConditionProperty
      def self.default(visited=[])
        return nil if visited.include?('ComponentConditionProperty')
        visited = visited + ['ComponentConditionProperty']
        {
          property: 'property',
          field: 'field',
          operator: 'operator',
          operand: 'operand',
          member_then: ComponentProperty.default(visited),
          else: ComponentProperty.default(visited),
          operand_type: 'operand_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentConditionProperty.new
        data = {}
        data['property'] = stub[:property] unless stub[:property].nil?
        data['field'] = stub[:field] unless stub[:field].nil?
        data['operator'] = stub[:operator] unless stub[:operator].nil?
        data['operand'] = stub[:operand] unless stub[:operand].nil?
        data['then'] = ComponentProperty.stub(stub[:member_then]) unless stub[:member_then].nil?
        data['else'] = ComponentProperty.stub(stub[:else]) unless stub[:else].nil?
        data['operandType'] = stub[:operand_type] unless stub[:operand_type].nil?
        data
      end
    end

    # List Stubber for ComponentPropertyList
    class ComponentPropertyList
      def self.default(visited=[])
        return nil if visited.include?('ComponentPropertyList')
        visited = visited + ['ComponentPropertyList']
        [
          ComponentProperty.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ComponentProperty.stub(element) unless element.nil?
        end
        data
      end
    end

    # Map Stubber for FormBindings
    class FormBindings
      def self.default(visited=[])
        return nil if visited.include?('FormBindings')
        visited = visited + ['FormBindings']
        {
          test_key: FormBindingElement.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = FormBindingElement.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for FormBindingElement
    class FormBindingElement
      def self.default(visited=[])
        return nil if visited.include?('FormBindingElement')
        visited = visited + ['FormBindingElement']
        {
          element: 'element',
          property: 'property',
        }
      end

      def self.stub(stub)
        stub ||= Types::FormBindingElement.new
        data = {}
        data['element'] = stub[:element] unless stub[:element].nil?
        data['property'] = stub[:property] unless stub[:property].nil?
        data
      end
    end

    # Structure Stubber for ComponentPropertyBindingProperties
    class ComponentPropertyBindingProperties
      def self.default(visited=[])
        return nil if visited.include?('ComponentPropertyBindingProperties')
        visited = visited + ['ComponentPropertyBindingProperties']
        {
          property: 'property',
          field: 'field',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentPropertyBindingProperties.new
        data = {}
        data['property'] = stub[:property] unless stub[:property].nil?
        data['field'] = stub[:field] unless stub[:field].nil?
        data
      end
    end

    # Map Stubber for ComponentProperties
    class ComponentProperties
      def self.default(visited=[])
        return nil if visited.include?('ComponentProperties')
        visited = visited + ['ComponentProperties']
        {
          test_key: ComponentProperty.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ComponentProperty.stub(value) unless value.nil?
        end
        data
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Stubber for ComponentCollectionProperties
    class ComponentCollectionProperties
      def self.default(visited=[])
        return nil if visited.include?('ComponentCollectionProperties')
        visited = visited + ['ComponentCollectionProperties']
        {
          test_key: ComponentDataConfiguration.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ComponentDataConfiguration.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ComponentDataConfiguration
    class ComponentDataConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ComponentDataConfiguration')
        visited = visited + ['ComponentDataConfiguration']
        {
          model: 'model',
          sort: SortPropertyList.default(visited),
          predicate: Predicate.default(visited),
          identifiers: IdentifierList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentDataConfiguration.new
        data = {}
        data['model'] = stub[:model] unless stub[:model].nil?
        data['sort'] = SortPropertyList.stub(stub[:sort]) unless stub[:sort].nil?
        data['predicate'] = Predicate.stub(stub[:predicate]) unless stub[:predicate].nil?
        data['identifiers'] = IdentifierList.stub(stub[:identifiers]) unless stub[:identifiers].nil?
        data
      end
    end

    # List Stubber for IdentifierList
    class IdentifierList
      def self.default(visited=[])
        return nil if visited.include?('IdentifierList')
        visited = visited + ['IdentifierList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Predicate
    class Predicate
      def self.default(visited=[])
        return nil if visited.include?('Predicate')
        visited = visited + ['Predicate']
        {
          or: PredicateList.default(visited),
          and: PredicateList.default(visited),
          field: 'field',
          operator: 'operator',
          operand: 'operand',
        }
      end

      def self.stub(stub)
        stub ||= Types::Predicate.new
        data = {}
        data['or'] = PredicateList.stub(stub[:or]) unless stub[:or].nil?
        data['and'] = PredicateList.stub(stub[:and]) unless stub[:and].nil?
        data['field'] = stub[:field] unless stub[:field].nil?
        data['operator'] = stub[:operator] unless stub[:operator].nil?
        data['operand'] = stub[:operand] unless stub[:operand].nil?
        data
      end
    end

    # List Stubber for PredicateList
    class PredicateList
      def self.default(visited=[])
        return nil if visited.include?('PredicateList')
        visited = visited + ['PredicateList']
        [
          Predicate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Predicate.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for SortPropertyList
    class SortPropertyList
      def self.default(visited=[])
        return nil if visited.include?('SortPropertyList')
        visited = visited + ['SortPropertyList']
        [
          SortProperty.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SortProperty.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SortProperty
    class SortProperty
      def self.default(visited=[])
        return nil if visited.include?('SortProperty')
        visited = visited + ['SortProperty']
        {
          field: 'field',
          direction: 'direction',
        }
      end

      def self.stub(stub)
        stub ||= Types::SortProperty.new
        data = {}
        data['field'] = stub[:field] unless stub[:field].nil?
        data['direction'] = stub[:direction] unless stub[:direction].nil?
        data
      end
    end

    # Map Stubber for ComponentBindingProperties
    class ComponentBindingProperties
      def self.default(visited=[])
        return nil if visited.include?('ComponentBindingProperties')
        visited = visited + ['ComponentBindingProperties']
        {
          test_key: ComponentBindingPropertiesValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ComponentBindingPropertiesValue.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ComponentBindingPropertiesValue
    class ComponentBindingPropertiesValue
      def self.default(visited=[])
        return nil if visited.include?('ComponentBindingPropertiesValue')
        visited = visited + ['ComponentBindingPropertiesValue']
        {
          type: 'type',
          binding_properties: ComponentBindingPropertiesValueProperties.default(visited),
          default_value: 'default_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentBindingPropertiesValue.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['bindingProperties'] = ComponentBindingPropertiesValueProperties.stub(stub[:binding_properties]) unless stub[:binding_properties].nil?
        data['defaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data
      end
    end

    # Structure Stubber for ComponentBindingPropertiesValueProperties
    class ComponentBindingPropertiesValueProperties
      def self.default(visited=[])
        return nil if visited.include?('ComponentBindingPropertiesValueProperties')
        visited = visited + ['ComponentBindingPropertiesValueProperties']
        {
          model: 'model',
          field: 'field',
          predicates: PredicateList.default(visited),
          user_attribute: 'user_attribute',
          bucket: 'bucket',
          key: 'key',
          default_value: 'default_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentBindingPropertiesValueProperties.new
        data = {}
        data['model'] = stub[:model] unless stub[:model].nil?
        data['field'] = stub[:field] unless stub[:field].nil?
        data['predicates'] = PredicateList.stub(stub[:predicates]) unless stub[:predicates].nil?
        data['userAttribute'] = stub[:user_attribute] unless stub[:user_attribute].nil?
        data['bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['key'] = stub[:key] unless stub[:key].nil?
        data['defaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data
      end
    end

    # Map Stubber for ComponentOverrides
    class ComponentOverrides
      def self.default(visited=[])
        return nil if visited.include?('ComponentOverrides')
        visited = visited + ['ComponentOverrides']
        {
          test_key: ComponentOverridesValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ComponentOverridesValue.stub(value) unless value.nil?
        end
        data
      end
    end

    # Map Stubber for ComponentOverridesValue
    class ComponentOverridesValue
      def self.default(visited=[])
        return nil if visited.include?('ComponentOverridesValue')
        visited = visited + ['ComponentOverridesValue']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for ComponentVariants
    class ComponentVariants
      def self.default(visited=[])
        return nil if visited.include?('ComponentVariants')
        visited = visited + ['ComponentVariants']
        [
          ComponentVariant.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ComponentVariant.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComponentVariant
    class ComponentVariant
      def self.default(visited=[])
        return nil if visited.include?('ComponentVariant')
        visited = visited + ['ComponentVariant']
        {
          variant_values: ComponentVariantValues.default(visited),
          overrides: ComponentOverrides.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentVariant.new
        data = {}
        data['variantValues'] = ComponentVariantValues.stub(stub[:variant_values]) unless stub[:variant_values].nil?
        data['overrides'] = ComponentOverrides.stub(stub[:overrides]) unless stub[:overrides].nil?
        data
      end
    end

    # Map Stubber for ComponentVariantValues
    class ComponentVariantValues
      def self.default(visited=[])
        return nil if visited.include?('ComponentVariantValues')
        visited = visited + ['ComponentVariantValues']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for ComponentChildList
    class ComponentChildList
      def self.default(visited=[])
        return nil if visited.include?('ComponentChildList')
        visited = visited + ['ComponentChildList']
        [
          ComponentChild.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ComponentChild.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComponentChild
    class ComponentChild
      def self.default(visited=[])
        return nil if visited.include?('ComponentChild')
        visited = visited + ['ComponentChild']
        {
          component_type: 'component_type',
          name: 'name',
          properties: ComponentProperties.default(visited),
          children: ComponentChildList.default(visited),
          events: ComponentEvents.default(visited),
          source_id: 'source_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentChild.new
        data = {}
        data['componentType'] = stub[:component_type] unless stub[:component_type].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['properties'] = ComponentProperties.stub(stub[:properties]) unless stub[:properties].nil?
        data['children'] = ComponentChildList.stub(stub[:children]) unless stub[:children].nil?
        data['events'] = ComponentEvents.stub(stub[:events]) unless stub[:events].nil?
        data['sourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data
      end
    end

    # Operation Stubber for CreateTheme
    class CreateTheme
      def self.default(visited=[])
        {
          entity: Theme.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Theme.stub(stub[:entity]) unless stub[:entity].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Theme
    class Theme
      def self.default(visited=[])
        return nil if visited.include?('Theme')
        visited = visited + ['Theme']
        {
          app_id: 'app_id',
          environment_name: 'environment_name',
          id: 'id',
          name: 'name',
          created_at: Time.now,
          modified_at: Time.now,
          values: ThemeValuesList.default(visited),
          overrides: ThemeValuesList.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Theme.new
        data = {}
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['environmentName'] = stub[:environment_name] unless stub[:environment_name].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['modifiedAt'] = Hearth::TimeHelper.to_date_time(stub[:modified_at]) unless stub[:modified_at].nil?
        data['values'] = ThemeValuesList.stub(stub[:values]) unless stub[:values].nil?
        data['overrides'] = ThemeValuesList.stub(stub[:overrides]) unless stub[:overrides].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for ThemeValuesList
    class ThemeValuesList
      def self.default(visited=[])
        return nil if visited.include?('ThemeValuesList')
        visited = visited + ['ThemeValuesList']
        [
          ThemeValues.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ThemeValues.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ThemeValues
    class ThemeValues
      def self.default(visited=[])
        return nil if visited.include?('ThemeValues')
        visited = visited + ['ThemeValues']
        {
          key: 'key',
          value: ThemeValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ThemeValues.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = ThemeValue.stub(stub[:value]) unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for ThemeValue
    class ThemeValue
      def self.default(visited=[])
        return nil if visited.include?('ThemeValue')
        visited = visited + ['ThemeValue']
        {
          value: 'value',
          children: ThemeValuesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ThemeValue.new
        data = {}
        data['value'] = stub[:value] unless stub[:value].nil?
        data['children'] = ThemeValuesList.stub(stub[:children]) unless stub[:children].nil?
        data
      end
    end

    # Operation Stubber for DeleteComponent
    class DeleteComponent
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTheme
    class DeleteTheme
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for ExchangeCodeForToken
    class ExchangeCodeForToken
      def self.default(visited=[])
        {
          access_token: 'access_token',
          expires_in: 1,
          refresh_token: 'refresh_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['accessToken'] = stub[:access_token] unless stub[:access_token].nil?
        data['expiresIn'] = stub[:expires_in] unless stub[:expires_in].nil?
        data['refreshToken'] = stub[:refresh_token] unless stub[:refresh_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ExportComponents
    class ExportComponents
      def self.default(visited=[])
        {
          entities: ComponentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['entities'] = ComponentList.stub(stub[:entities]) unless stub[:entities].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ComponentList
    class ComponentList
      def self.default(visited=[])
        return nil if visited.include?('ComponentList')
        visited = visited + ['ComponentList']
        [
          Component.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Component.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ExportThemes
    class ExportThemes
      def self.default(visited=[])
        {
          entities: ThemeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['entities'] = ThemeList.stub(stub[:entities]) unless stub[:entities].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ThemeList
    class ThemeList
      def self.default(visited=[])
        return nil if visited.include?('ThemeList')
        visited = visited + ['ThemeList']
        [
          Theme.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Theme.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetComponent
    class GetComponent
      def self.default(visited=[])
        {
          component: Component.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Component.stub(stub[:component]) unless stub[:component].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetTheme
    class GetTheme
      def self.default(visited=[])
        {
          theme: Theme.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Theme.stub(stub[:theme]) unless stub[:theme].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListComponents
    class ListComponents
      def self.default(visited=[])
        {
          entities: ComponentSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['entities'] = ComponentSummaryList.stub(stub[:entities]) unless stub[:entities].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ComponentSummaryList
    class ComponentSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ComponentSummaryList')
        visited = visited + ['ComponentSummaryList']
        [
          ComponentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ComponentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ComponentSummary
    class ComponentSummary
      def self.default(visited=[])
        return nil if visited.include?('ComponentSummary')
        visited = visited + ['ComponentSummary']
        {
          app_id: 'app_id',
          environment_name: 'environment_name',
          id: 'id',
          name: 'name',
          component_type: 'component_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentSummary.new
        data = {}
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['environmentName'] = stub[:environment_name] unless stub[:environment_name].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['componentType'] = stub[:component_type] unless stub[:component_type].nil?
        data
      end
    end

    # Operation Stubber for ListThemes
    class ListThemes
      def self.default(visited=[])
        {
          entities: ThemeSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['entities'] = ThemeSummaryList.stub(stub[:entities]) unless stub[:entities].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ThemeSummaryList
    class ThemeSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ThemeSummaryList')
        visited = visited + ['ThemeSummaryList']
        [
          ThemeSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ThemeSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ThemeSummary
    class ThemeSummary
      def self.default(visited=[])
        return nil if visited.include?('ThemeSummary')
        visited = visited + ['ThemeSummary']
        {
          app_id: 'app_id',
          environment_name: 'environment_name',
          id: 'id',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ThemeSummary.new
        data = {}
        data['appId'] = stub[:app_id] unless stub[:app_id].nil?
        data['environmentName'] = stub[:environment_name] unless stub[:environment_name].nil?
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for RefreshToken
    class RefreshToken
      def self.default(visited=[])
        {
          access_token: 'access_token',
          expires_in: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['accessToken'] = stub[:access_token] unless stub[:access_token].nil?
        data['expiresIn'] = stub[:expires_in] unless stub[:expires_in].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateComponent
    class UpdateComponent
      def self.default(visited=[])
        {
          entity: Component.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Component.stub(stub[:entity]) unless stub[:entity].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateTheme
    class UpdateTheme
      def self.default(visited=[])
        {
          entity: Theme.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Theme.stub(stub[:entity]) unless stub[:entity].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
