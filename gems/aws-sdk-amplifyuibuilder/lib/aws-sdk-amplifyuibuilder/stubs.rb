# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AmplifyUIBuilder
  module Stubs

    # Operation Stubber for CreateComponent
    class CreateComponent
      def self.default(visited=[])
        {
          entity: Stubs::Component.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::Component.stub(stub[:entity]) unless stub[:entity].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          properties: Stubs::ComponentProperties.default(visited),
          children: Stubs::ComponentChildList.default(visited),
          variants: Stubs::ComponentVariants.default(visited),
          overrides: Stubs::ComponentOverrides.default(visited),
          binding_properties: Stubs::ComponentBindingProperties.default(visited),
          collection_properties: Stubs::ComponentCollectionProperties.default(visited),
          created_at: Time.now,
          modified_at: Time.now,
          tags: Stubs::Tags.default(visited),
          events: Stubs::ComponentEvents.default(visited),
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
        data['properties'] = Stubs::ComponentProperties.stub(stub[:properties]) unless stub[:properties].nil?
        data['children'] = Stubs::ComponentChildList.stub(stub[:children]) unless stub[:children].nil?
        data['variants'] = Stubs::ComponentVariants.stub(stub[:variants]) unless stub[:variants].nil?
        data['overrides'] = Stubs::ComponentOverrides.stub(stub[:overrides]) unless stub[:overrides].nil?
        data['bindingProperties'] = Stubs::ComponentBindingProperties.stub(stub[:binding_properties]) unless stub[:binding_properties].nil?
        data['collectionProperties'] = Stubs::ComponentCollectionProperties.stub(stub[:collection_properties]) unless stub[:collection_properties].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['modifiedAt'] = Hearth::TimeHelper.to_date_time(stub[:modified_at]) unless stub[:modified_at].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['events'] = Stubs::ComponentEvents.stub(stub[:events]) unless stub[:events].nil?
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
          test_key: Stubs::ComponentEvent.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ComponentEvent.stub(value) unless value.nil?
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
          parameters: Stubs::ActionParameters.default(visited),
          binding_event: 'binding_event',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentEvent.new
        data = {}
        data['action'] = stub[:action] unless stub[:action].nil?
        data['parameters'] = Stubs::ActionParameters.stub(stub[:parameters]) unless stub[:parameters].nil?
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
          type: Stubs::ComponentProperty.default(visited),
          url: Stubs::ComponentProperty.default(visited),
          anchor: Stubs::ComponentProperty.default(visited),
          target: Stubs::ComponentProperty.default(visited),
          global: Stubs::ComponentProperty.default(visited),
          model: 'model',
          id: Stubs::ComponentProperty.default(visited),
          fields: Stubs::ComponentProperties.default(visited),
          state: Stubs::MutationActionSetStateParameter.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ActionParameters.new
        data = {}
        data['type'] = Stubs::ComponentProperty.stub(stub[:type]) unless stub[:type].nil?
        data['url'] = Stubs::ComponentProperty.stub(stub[:url]) unless stub[:url].nil?
        data['anchor'] = Stubs::ComponentProperty.stub(stub[:anchor]) unless stub[:anchor].nil?
        data['target'] = Stubs::ComponentProperty.stub(stub[:target]) unless stub[:target].nil?
        data['global'] = Stubs::ComponentProperty.stub(stub[:global]) unless stub[:global].nil?
        data['model'] = stub[:model] unless stub[:model].nil?
        data['id'] = Stubs::ComponentProperty.stub(stub[:id]) unless stub[:id].nil?
        data['fields'] = Stubs::ComponentProperties.stub(stub[:fields]) unless stub[:fields].nil?
        data['state'] = Stubs::MutationActionSetStateParameter.stub(stub[:state]) unless stub[:state].nil?
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
          set: Stubs::ComponentProperty.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MutationActionSetStateParameter.new
        data = {}
        data['componentName'] = stub[:component_name] unless stub[:component_name].nil?
        data['property'] = stub[:property] unless stub[:property].nil?
        data['set'] = Stubs::ComponentProperty.stub(stub[:set]) unless stub[:set].nil?
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
          binding_properties: Stubs::ComponentPropertyBindingProperties.default(visited),
          collection_binding_properties: Stubs::ComponentPropertyBindingProperties.default(visited),
          default_value: 'default_value',
          model: 'model',
          bindings: Stubs::FormBindings.default(visited),
          event: 'event',
          user_attribute: 'user_attribute',
          concat: Stubs::ComponentPropertyList.default(visited),
          condition: Stubs::ComponentConditionProperty.default(visited),
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
        data['bindingProperties'] = Stubs::ComponentPropertyBindingProperties.stub(stub[:binding_properties]) unless stub[:binding_properties].nil?
        data['collectionBindingProperties'] = Stubs::ComponentPropertyBindingProperties.stub(stub[:collection_binding_properties]) unless stub[:collection_binding_properties].nil?
        data['defaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data['model'] = stub[:model] unless stub[:model].nil?
        data['bindings'] = Stubs::FormBindings.stub(stub[:bindings]) unless stub[:bindings].nil?
        data['event'] = stub[:event] unless stub[:event].nil?
        data['userAttribute'] = stub[:user_attribute] unless stub[:user_attribute].nil?
        data['concat'] = Stubs::ComponentPropertyList.stub(stub[:concat]) unless stub[:concat].nil?
        data['condition'] = Stubs::ComponentConditionProperty.stub(stub[:condition]) unless stub[:condition].nil?
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
          member_then: Stubs::ComponentProperty.default(visited),
          else: Stubs::ComponentProperty.default(visited),
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
        data['then'] = Stubs::ComponentProperty.stub(stub[:member_then]) unless stub[:member_then].nil?
        data['else'] = Stubs::ComponentProperty.stub(stub[:else]) unless stub[:else].nil?
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
          Stubs::ComponentProperty.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ComponentProperty.stub(element) unless element.nil?
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
          test_key: Stubs::FormBindingElement.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::FormBindingElement.stub(value) unless value.nil?
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
          test_key: Stubs::ComponentProperty.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ComponentProperty.stub(value) unless value.nil?
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
          test_key: Stubs::ComponentDataConfiguration.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ComponentDataConfiguration.stub(value) unless value.nil?
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
          sort: Stubs::SortPropertyList.default(visited),
          predicate: Stubs::Predicate.default(visited),
          identifiers: Stubs::IdentifierList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentDataConfiguration.new
        data = {}
        data['model'] = stub[:model] unless stub[:model].nil?
        data['sort'] = Stubs::SortPropertyList.stub(stub[:sort]) unless stub[:sort].nil?
        data['predicate'] = Stubs::Predicate.stub(stub[:predicate]) unless stub[:predicate].nil?
        data['identifiers'] = Stubs::IdentifierList.stub(stub[:identifiers]) unless stub[:identifiers].nil?
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
          or: Stubs::PredicateList.default(visited),
          and: Stubs::PredicateList.default(visited),
          field: 'field',
          operator: 'operator',
          operand: 'operand',
        }
      end

      def self.stub(stub)
        stub ||= Types::Predicate.new
        data = {}
        data['or'] = Stubs::PredicateList.stub(stub[:or]) unless stub[:or].nil?
        data['and'] = Stubs::PredicateList.stub(stub[:and]) unless stub[:and].nil?
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
          Stubs::Predicate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Predicate.stub(element) unless element.nil?
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
          Stubs::SortProperty.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SortProperty.stub(element) unless element.nil?
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
          test_key: Stubs::ComponentBindingPropertiesValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ComponentBindingPropertiesValue.stub(value) unless value.nil?
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
          binding_properties: Stubs::ComponentBindingPropertiesValueProperties.default(visited),
          default_value: 'default_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentBindingPropertiesValue.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['bindingProperties'] = Stubs::ComponentBindingPropertiesValueProperties.stub(stub[:binding_properties]) unless stub[:binding_properties].nil?
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
          predicates: Stubs::PredicateList.default(visited),
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
        data['predicates'] = Stubs::PredicateList.stub(stub[:predicates]) unless stub[:predicates].nil?
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
          test_key: Stubs::ComponentOverridesValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::ComponentOverridesValue.stub(value) unless value.nil?
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
          Stubs::ComponentVariant.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ComponentVariant.stub(element) unless element.nil?
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
          variant_values: Stubs::ComponentVariantValues.default(visited),
          overrides: Stubs::ComponentOverrides.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentVariant.new
        data = {}
        data['variantValues'] = Stubs::ComponentVariantValues.stub(stub[:variant_values]) unless stub[:variant_values].nil?
        data['overrides'] = Stubs::ComponentOverrides.stub(stub[:overrides]) unless stub[:overrides].nil?
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
          Stubs::ComponentChild.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ComponentChild.stub(element) unless element.nil?
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
          properties: Stubs::ComponentProperties.default(visited),
          children: Stubs::ComponentChildList.default(visited),
          events: Stubs::ComponentEvents.default(visited),
          source_id: 'source_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComponentChild.new
        data = {}
        data['componentType'] = stub[:component_type] unless stub[:component_type].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['properties'] = Stubs::ComponentProperties.stub(stub[:properties]) unless stub[:properties].nil?
        data['children'] = Stubs::ComponentChildList.stub(stub[:children]) unless stub[:children].nil?
        data['events'] = Stubs::ComponentEvents.stub(stub[:events]) unless stub[:events].nil?
        data['sourceId'] = stub[:source_id] unless stub[:source_id].nil?
        data
      end
    end

    # Operation Stubber for CreateTheme
    class CreateTheme
      def self.default(visited=[])
        {
          entity: Stubs::Theme.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::Theme.stub(stub[:entity]) unless stub[:entity].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
          values: Stubs::ThemeValuesList.default(visited),
          overrides: Stubs::ThemeValuesList.default(visited),
          tags: Stubs::Tags.default(visited),
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
        data['values'] = Stubs::ThemeValuesList.stub(stub[:values]) unless stub[:values].nil?
        data['overrides'] = Stubs::ThemeValuesList.stub(stub[:overrides]) unless stub[:overrides].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for ThemeValuesList
    class ThemeValuesList
      def self.default(visited=[])
        return nil if visited.include?('ThemeValuesList')
        visited = visited + ['ThemeValuesList']
        [
          Stubs::ThemeValues.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ThemeValues.stub(element) unless element.nil?
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
          value: Stubs::ThemeValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ThemeValues.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = Stubs::ThemeValue.stub(stub[:value]) unless stub[:value].nil?
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
          children: Stubs::ThemeValuesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ThemeValue.new
        data = {}
        data['value'] = stub[:value] unless stub[:value].nil?
        data['children'] = Stubs::ThemeValuesList.stub(stub[:children]) unless stub[:children].nil?
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ExportComponents
    class ExportComponents
      def self.default(visited=[])
        {
          entities: Stubs::ComponentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['entities'] = Stubs::ComponentList.stub(stub[:entities]) unless stub[:entities].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ComponentList
    class ComponentList
      def self.default(visited=[])
        return nil if visited.include?('ComponentList')
        visited = visited + ['ComponentList']
        [
          Stubs::Component.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Component.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ExportThemes
    class ExportThemes
      def self.default(visited=[])
        {
          entities: Stubs::ThemeList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['entities'] = Stubs::ThemeList.stub(stub[:entities]) unless stub[:entities].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ThemeList
    class ThemeList
      def self.default(visited=[])
        return nil if visited.include?('ThemeList')
        visited = visited + ['ThemeList']
        [
          Stubs::Theme.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Theme.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetComponent
    class GetComponent
      def self.default(visited=[])
        {
          component: Stubs::Component.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::Component.stub(stub[:component]) unless stub[:component].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetTheme
    class GetTheme
      def self.default(visited=[])
        {
          theme: Stubs::Theme.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::Theme.stub(stub[:theme]) unless stub[:theme].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListComponents
    class ListComponents
      def self.default(visited=[])
        {
          entities: Stubs::ComponentSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['entities'] = Stubs::ComponentSummaryList.stub(stub[:entities]) unless stub[:entities].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ComponentSummaryList
    class ComponentSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ComponentSummaryList')
        visited = visited + ['ComponentSummaryList']
        [
          Stubs::ComponentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ComponentSummary.stub(element) unless element.nil?
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
          entities: Stubs::ThemeSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['entities'] = Stubs::ThemeSummaryList.stub(stub[:entities]) unless stub[:entities].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ThemeSummaryList
    class ThemeSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ThemeSummaryList')
        visited = visited + ['ThemeSummaryList']
        [
          Stubs::ThemeSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ThemeSummary.stub(element) unless element.nil?
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
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateComponent
    class UpdateComponent
      def self.default(visited=[])
        {
          entity: Stubs::Component.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::Component.stub(stub[:entity]) unless stub[:entity].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateTheme
    class UpdateTheme
      def self.default(visited=[])
        {
          entity: Stubs::Theme.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data = Stubs::Theme.stub(stub[:entity]) unless stub[:entity].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
