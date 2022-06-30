# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Rbin
  module Params

    module CreateRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRuleInput, context: context)
        type = Types::CreateRuleInput.new
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.resource_type = params[:resource_type]
        type.resource_tags = ResourceTags.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type
      end
    end

    module CreateRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRuleOutput, context: context)
        type = Types::CreateRuleOutput.new
        type.identifier = params[:identifier]
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type.description = params[:description]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.resource_type = params[:resource_type]
        type.resource_tags = ResourceTags.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type.status = params[:status]
        type
      end
    end

    module DeleteRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRuleInput, context: context)
        type = Types::DeleteRuleInput.new
        type.identifier = params[:identifier]
        type
      end
    end

    module DeleteRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRuleOutput, context: context)
        type = Types::DeleteRuleOutput.new
        type
      end
    end

    module GetRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRuleInput, context: context)
        type = Types::GetRuleInput.new
        type.identifier = params[:identifier]
        type
      end
    end

    module GetRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRuleOutput, context: context)
        type = Types::GetRuleOutput.new
        type.identifier = params[:identifier]
        type.description = params[:description]
        type.resource_type = params[:resource_type]
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type.resource_tags = ResourceTags.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type.status = params[:status]
        type
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

    module ListRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRulesInput, context: context)
        type = Types::ListRulesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.resource_type = params[:resource_type]
        type.resource_tags = ResourceTags.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type
      end
    end

    module ListRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRulesOutput, context: context)
        type = Types::ListRulesOutput.new
        type.rules = RuleSummaryList.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

    module ResourceTag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceTag, context: context)
        type = Types::ResourceTag.new
        type.resource_tag_key = params[:resource_tag_key]
        type.resource_tag_value = params[:resource_tag_value]
        type
      end
    end

    module ResourceTags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceTag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RetentionPeriod
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RetentionPeriod, context: context)
        type = Types::RetentionPeriod.new
        type.retention_period_value = params[:retention_period_value]
        type.retention_period_unit = params[:retention_period_unit]
        type
      end
    end

    module RuleSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleSummary, context: context)
        type = Types::RuleSummary.new
        type.identifier = params[:identifier]
        type.description = params[:description]
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type
      end
    end

    module RuleSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRuleInput, context: context)
        type = Types::UpdateRuleInput.new
        type.identifier = params[:identifier]
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type.description = params[:description]
        type.resource_type = params[:resource_type]
        type.resource_tags = ResourceTags.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type
      end
    end

    module UpdateRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRuleOutput, context: context)
        type = Types::UpdateRuleOutput.new
        type.identifier = params[:identifier]
        type.retention_period = RetentionPeriod.build(params[:retention_period], context: "#{context}[:retention_period]") unless params[:retention_period].nil?
        type.description = params[:description]
        type.resource_type = params[:resource_type]
        type.resource_tags = ResourceTags.build(params[:resource_tags], context: "#{context}[:resource_tags]") unless params[:resource_tags].nil?
        type.status = params[:status]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type
      end
    end

  end
end
