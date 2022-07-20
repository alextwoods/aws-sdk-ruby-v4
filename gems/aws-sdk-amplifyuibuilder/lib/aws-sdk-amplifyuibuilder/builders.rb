# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::AmplifyUIBuilder
  module Builders

    # Operation Builder for CreateComponent
    class CreateComponent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app/%<appId>s/environment/%<environmentName>s/components',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            environmentName: Hearth::HTTP.uri_escape(input[:environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = CreateComponentData.build(input[:component_to_create]) unless input[:component_to_create].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CreateComponentData
    class CreateComponentData
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['sourceId'] = input[:source_id] unless input[:source_id].nil?
        data['componentType'] = input[:component_type] unless input[:component_type].nil?
        data['properties'] = ComponentProperties.build(input[:properties]) unless input[:properties].nil?
        data['children'] = ComponentChildList.build(input[:children]) unless input[:children].nil?
        data['variants'] = ComponentVariants.build(input[:variants]) unless input[:variants].nil?
        data['overrides'] = ComponentOverrides.build(input[:overrides]) unless input[:overrides].nil?
        data['bindingProperties'] = ComponentBindingProperties.build(input[:binding_properties]) unless input[:binding_properties].nil?
        data['collectionProperties'] = ComponentCollectionProperties.build(input[:collection_properties]) unless input[:collection_properties].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        data['events'] = ComponentEvents.build(input[:events]) unless input[:events].nil?
        data['schemaVersion'] = input[:schema_version] unless input[:schema_version].nil?
        data
      end
    end

    # Map Builder for ComponentEvents
    class ComponentEvents
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = ComponentEvent.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ComponentEvent
    class ComponentEvent
      def self.build(input)
        data = {}
        data['action'] = input[:action] unless input[:action].nil?
        data['parameters'] = ActionParameters.build(input[:parameters]) unless input[:parameters].nil?
        data['bindingEvent'] = input[:binding_event] unless input[:binding_event].nil?
        data
      end
    end

    # Structure Builder for ActionParameters
    class ActionParameters
      def self.build(input)
        data = {}
        data['type'] = ComponentProperty.build(input[:type]) unless input[:type].nil?
        data['url'] = ComponentProperty.build(input[:url]) unless input[:url].nil?
        data['anchor'] = ComponentProperty.build(input[:anchor]) unless input[:anchor].nil?
        data['target'] = ComponentProperty.build(input[:target]) unless input[:target].nil?
        data['global'] = ComponentProperty.build(input[:global]) unless input[:global].nil?
        data['model'] = input[:model] unless input[:model].nil?
        data['id'] = ComponentProperty.build(input[:id]) unless input[:id].nil?
        data['fields'] = ComponentProperties.build(input[:fields]) unless input[:fields].nil?
        data['state'] = MutationActionSetStateParameter.build(input[:state]) unless input[:state].nil?
        data
      end
    end

    # Structure Builder for MutationActionSetStateParameter
    class MutationActionSetStateParameter
      def self.build(input)
        data = {}
        data['componentName'] = input[:component_name] unless input[:component_name].nil?
        data['property'] = input[:property] unless input[:property].nil?
        data['set'] = ComponentProperty.build(input[:set]) unless input[:set].nil?
        data
      end
    end

    # Structure Builder for ComponentProperty
    class ComponentProperty
      def self.build(input)
        data = {}
        data['value'] = input[:value] unless input[:value].nil?
        data['bindingProperties'] = ComponentPropertyBindingProperties.build(input[:binding_properties]) unless input[:binding_properties].nil?
        data['collectionBindingProperties'] = ComponentPropertyBindingProperties.build(input[:collection_binding_properties]) unless input[:collection_binding_properties].nil?
        data['defaultValue'] = input[:default_value] unless input[:default_value].nil?
        data['model'] = input[:model] unless input[:model].nil?
        data['bindings'] = FormBindings.build(input[:bindings]) unless input[:bindings].nil?
        data['event'] = input[:event] unless input[:event].nil?
        data['userAttribute'] = input[:user_attribute] unless input[:user_attribute].nil?
        data['concat'] = ComponentPropertyList.build(input[:concat]) unless input[:concat].nil?
        data['condition'] = ComponentConditionProperty.build(input[:condition]) unless input[:condition].nil?
        data['configured'] = input[:configured] unless input[:configured].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['importedValue'] = input[:imported_value] unless input[:imported_value].nil?
        data['componentName'] = input[:component_name] unless input[:component_name].nil?
        data['property'] = input[:property] unless input[:property].nil?
        data
      end
    end

    # Structure Builder for ComponentConditionProperty
    class ComponentConditionProperty
      def self.build(input)
        data = {}
        data['property'] = input[:property] unless input[:property].nil?
        data['field'] = input[:field] unless input[:field].nil?
        data['operator'] = input[:operator] unless input[:operator].nil?
        data['operand'] = input[:operand] unless input[:operand].nil?
        data['then'] = ComponentProperty.build(input[:member_then]) unless input[:member_then].nil?
        data['else'] = ComponentProperty.build(input[:else]) unless input[:else].nil?
        data['operandType'] = input[:operand_type] unless input[:operand_type].nil?
        data
      end
    end

    # List Builder for ComponentPropertyList
    class ComponentPropertyList
      def self.build(input)
        data = []
        input.each do |element|
          data << ComponentProperty.build(element) unless element.nil?
        end
        data
      end
    end

    # Map Builder for FormBindings
    class FormBindings
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = FormBindingElement.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for FormBindingElement
    class FormBindingElement
      def self.build(input)
        data = {}
        data['element'] = input[:element] unless input[:element].nil?
        data['property'] = input[:property] unless input[:property].nil?
        data
      end
    end

    # Structure Builder for ComponentPropertyBindingProperties
    class ComponentPropertyBindingProperties
      def self.build(input)
        data = {}
        data['property'] = input[:property] unless input[:property].nil?
        data['field'] = input[:field] unless input[:field].nil?
        data
      end
    end

    # Map Builder for ComponentProperties
    class ComponentProperties
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = ComponentProperty.build(value) unless value.nil?
        end
        data
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for ComponentCollectionProperties
    class ComponentCollectionProperties
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = ComponentDataConfiguration.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ComponentDataConfiguration
    class ComponentDataConfiguration
      def self.build(input)
        data = {}
        data['model'] = input[:model] unless input[:model].nil?
        data['sort'] = SortPropertyList.build(input[:sort]) unless input[:sort].nil?
        data['predicate'] = Predicate.build(input[:predicate]) unless input[:predicate].nil?
        data['identifiers'] = IdentifierList.build(input[:identifiers]) unless input[:identifiers].nil?
        data
      end
    end

    # List Builder for IdentifierList
    class IdentifierList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Predicate
    class Predicate
      def self.build(input)
        data = {}
        data['or'] = PredicateList.build(input[:or]) unless input[:or].nil?
        data['and'] = PredicateList.build(input[:and]) unless input[:and].nil?
        data['field'] = input[:field] unless input[:field].nil?
        data['operator'] = input[:operator] unless input[:operator].nil?
        data['operand'] = input[:operand] unless input[:operand].nil?
        data
      end
    end

    # List Builder for PredicateList
    class PredicateList
      def self.build(input)
        data = []
        input.each do |element|
          data << Predicate.build(element) unless element.nil?
        end
        data
      end
    end

    # List Builder for SortPropertyList
    class SortPropertyList
      def self.build(input)
        data = []
        input.each do |element|
          data << SortProperty.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SortProperty
    class SortProperty
      def self.build(input)
        data = {}
        data['field'] = input[:field] unless input[:field].nil?
        data['direction'] = input[:direction] unless input[:direction].nil?
        data
      end
    end

    # Map Builder for ComponentBindingProperties
    class ComponentBindingProperties
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = ComponentBindingPropertiesValue.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ComponentBindingPropertiesValue
    class ComponentBindingPropertiesValue
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['bindingProperties'] = ComponentBindingPropertiesValueProperties.build(input[:binding_properties]) unless input[:binding_properties].nil?
        data['defaultValue'] = input[:default_value] unless input[:default_value].nil?
        data
      end
    end

    # Structure Builder for ComponentBindingPropertiesValueProperties
    class ComponentBindingPropertiesValueProperties
      def self.build(input)
        data = {}
        data['model'] = input[:model] unless input[:model].nil?
        data['field'] = input[:field] unless input[:field].nil?
        data['predicates'] = PredicateList.build(input[:predicates]) unless input[:predicates].nil?
        data['userAttribute'] = input[:user_attribute] unless input[:user_attribute].nil?
        data['bucket'] = input[:bucket] unless input[:bucket].nil?
        data['key'] = input[:key] unless input[:key].nil?
        data['defaultValue'] = input[:default_value] unless input[:default_value].nil?
        data
      end
    end

    # Map Builder for ComponentOverrides
    class ComponentOverrides
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = ComponentOverridesValue.build(value) unless value.nil?
        end
        data
      end
    end

    # Map Builder for ComponentOverridesValue
    class ComponentOverridesValue
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for ComponentVariants
    class ComponentVariants
      def self.build(input)
        data = []
        input.each do |element|
          data << ComponentVariant.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ComponentVariant
    class ComponentVariant
      def self.build(input)
        data = {}
        data['variantValues'] = ComponentVariantValues.build(input[:variant_values]) unless input[:variant_values].nil?
        data['overrides'] = ComponentOverrides.build(input[:overrides]) unless input[:overrides].nil?
        data
      end
    end

    # Map Builder for ComponentVariantValues
    class ComponentVariantValues
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for ComponentChildList
    class ComponentChildList
      def self.build(input)
        data = []
        input.each do |element|
          data << ComponentChild.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ComponentChild
    class ComponentChild
      def self.build(input)
        data = {}
        data['componentType'] = input[:component_type] unless input[:component_type].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['properties'] = ComponentProperties.build(input[:properties]) unless input[:properties].nil?
        data['children'] = ComponentChildList.build(input[:children]) unless input[:children].nil?
        data['events'] = ComponentEvents.build(input[:events]) unless input[:events].nil?
        data['sourceId'] = input[:source_id] unless input[:source_id].nil?
        data
      end
    end

    # Operation Builder for CreateTheme
    class CreateTheme
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app/%<appId>s/environment/%<environmentName>s/themes',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            environmentName: Hearth::HTTP.uri_escape(input[:environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = CreateThemeData.build(input[:theme_to_create]) unless input[:theme_to_create].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CreateThemeData
    class CreateThemeData
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = ThemeValuesList.build(input[:values]) unless input[:values].nil?
        data['overrides'] = ThemeValuesList.build(input[:overrides]) unless input[:overrides].nil?
        data['tags'] = Tags.build(input[:tags]) unless input[:tags].nil?
        data
      end
    end

    # List Builder for ThemeValuesList
    class ThemeValuesList
      def self.build(input)
        data = []
        input.each do |element|
          data << ThemeValues.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ThemeValues
    class ThemeValues
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = ThemeValue.build(input[:value]) unless input[:value].nil?
        data
      end
    end

    # Structure Builder for ThemeValue
    class ThemeValue
      def self.build(input)
        data = {}
        data['value'] = input[:value] unless input[:value].nil?
        data['children'] = ThemeValuesList.build(input[:children]) unless input[:children].nil?
        data
      end
    end

    # Operation Builder for DeleteComponent
    class DeleteComponent
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :environment_name cannot be nil or empty."
        end
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app/%<appId>s/environment/%<environmentName>s/components/%<id>s',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            environmentName: Hearth::HTTP.uri_escape(input[:environment_name].to_s),
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
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
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :environment_name cannot be nil or empty."
        end
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app/%<appId>s/environment/%<environmentName>s/themes/%<id>s',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            environmentName: Hearth::HTTP.uri_escape(input[:environment_name].to_s),
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ExchangeCodeForToken
    class ExchangeCodeForToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:provider].to_s.empty?
          raise ArgumentError, "HTTP label :provider cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tokens/%<provider>s',
            provider: Hearth::HTTP.uri_escape(input[:provider].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = ExchangeCodeForTokenRequestBody.build(input[:request]) unless input[:request].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ExchangeCodeForTokenRequestBody
    class ExchangeCodeForTokenRequestBody
      def self.build(input)
        data = {}
        data['code'] = input[:code] unless input[:code].nil?
        data['redirectUri'] = input[:redirect_uri] unless input[:redirect_uri].nil?
        data
      end
    end

    # Operation Builder for ExportComponents
    class ExportComponents
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/export/app/%<appId>s/environment/%<environmentName>s/components',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            environmentName: Hearth::HTTP.uri_escape(input[:environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ExportThemes
    class ExportThemes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/export/app/%<appId>s/environment/%<environmentName>s/themes',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            environmentName: Hearth::HTTP.uri_escape(input[:environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetComponent
    class GetComponent
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :environment_name cannot be nil or empty."
        end
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app/%<appId>s/environment/%<environmentName>s/components/%<id>s',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            environmentName: Hearth::HTTP.uri_escape(input[:environment_name].to_s),
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetTheme
    class GetTheme
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :environment_name cannot be nil or empty."
        end
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app/%<appId>s/environment/%<environmentName>s/themes/%<id>s',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            environmentName: Hearth::HTTP.uri_escape(input[:environment_name].to_s),
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListComponents
    class ListComponents
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app/%<appId>s/environment/%<environmentName>s/components',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            environmentName: Hearth::HTTP.uri_escape(input[:environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListThemes
    class ListThemes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :environment_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app/%<appId>s/environment/%<environmentName>s/themes',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            environmentName: Hearth::HTTP.uri_escape(input[:environment_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RefreshToken
    class RefreshToken
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:provider].to_s.empty?
          raise ArgumentError, "HTTP label :provider cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tokens/%<provider>s/refresh',
            provider: Hearth::HTTP.uri_escape(input[:provider].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = RefreshTokenRequestBody.build(input[:refresh_token_body]) unless input[:refresh_token_body].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RefreshTokenRequestBody
    class RefreshTokenRequestBody
      def self.build(input)
        data = {}
        data['token'] = input[:token] unless input[:token].nil?
        data
      end
    end

    # Operation Builder for UpdateComponent
    class UpdateComponent
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :environment_name cannot be nil or empty."
        end
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app/%<appId>s/environment/%<environmentName>s/components/%<id>s',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            environmentName: Hearth::HTTP.uri_escape(input[:environment_name].to_s),
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = UpdateComponentData.build(input[:updated_component]) unless input[:updated_component].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateComponentData
    class UpdateComponentData
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['sourceId'] = input[:source_id] unless input[:source_id].nil?
        data['componentType'] = input[:component_type] unless input[:component_type].nil?
        data['properties'] = ComponentProperties.build(input[:properties]) unless input[:properties].nil?
        data['children'] = ComponentChildList.build(input[:children]) unless input[:children].nil?
        data['variants'] = ComponentVariants.build(input[:variants]) unless input[:variants].nil?
        data['overrides'] = ComponentOverrides.build(input[:overrides]) unless input[:overrides].nil?
        data['bindingProperties'] = ComponentBindingProperties.build(input[:binding_properties]) unless input[:binding_properties].nil?
        data['collectionProperties'] = ComponentCollectionProperties.build(input[:collection_properties]) unless input[:collection_properties].nil?
        data['events'] = ComponentEvents.build(input[:events]) unless input[:events].nil?
        data['schemaVersion'] = input[:schema_version] unless input[:schema_version].nil?
        data
      end
    end

    # Operation Builder for UpdateTheme
    class UpdateTheme
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:app_id].to_s.empty?
          raise ArgumentError, "HTTP label :app_id cannot be nil or empty."
        end
        if input[:environment_name].to_s.empty?
          raise ArgumentError, "HTTP label :environment_name cannot be nil or empty."
        end
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/app/%<appId>s/environment/%<environmentName>s/themes/%<id>s',
            appId: Hearth::HTTP.uri_escape(input[:app_id].to_s),
            environmentName: Hearth::HTTP.uri_escape(input[:environment_name].to_s),
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['clientToken'] = input[:client_token].to_s unless input[:client_token].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data = UpdateThemeData.build(input[:updated_theme]) unless input[:updated_theme].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UpdateThemeData
    class UpdateThemeData
      def self.build(input)
        data = {}
        data['id'] = input[:id] unless input[:id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['values'] = ThemeValuesList.build(input[:values]) unless input[:values].nil?
        data['overrides'] = ThemeValuesList.build(input[:overrides]) unless input[:overrides].nil?
        data
      end
    end
  end
end
