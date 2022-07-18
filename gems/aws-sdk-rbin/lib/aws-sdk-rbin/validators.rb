# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Rbin
  module Validators

    class CreateRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRuleInput, context: context)
        RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        ResourceTags.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
      end
    end

    class CreateRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRuleOutput, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        ResourceTags.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DeleteRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRuleInput, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
      end
    end

    class DeleteRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRuleOutput, context: context)
      end
    end

    class GetRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRuleInput, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
      end
    end

    class GetRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRuleOutput, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
        ResourceTags.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRulesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        ResourceTags.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
      end
    end

    class ListRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRulesOutput, context: context)
        RuleSummaryList.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class ResourceTag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceTag, context: context)
        Hearth::Validator.validate!(input[:resource_tag_key], ::String, context: "#{context}[:resource_tag_key]")
        Hearth::Validator.validate!(input[:resource_tag_value], ::String, context: "#{context}[:resource_tag_value]")
      end
    end

    class ResourceTags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceTag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RetentionPeriod
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RetentionPeriod, context: context)
        Hearth::Validator.validate!(input[:retention_period_value], ::Integer, context: "#{context}[:retention_period_value]")
        Hearth::Validator.validate!(input[:retention_period_unit], ::String, context: "#{context}[:retention_period_unit]")
      end
    end

    class RuleSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleSummary, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
      end
    end

    class RuleSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RuleSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRuleInput, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        ResourceTags.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
      end
    end

    class UpdateRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRuleOutput, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        RetentionPeriod.validate!(input[:retention_period], context: "#{context}[:retention_period]") unless input[:retention_period].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        ResourceTags.validate!(input[:resource_tags], context: "#{context}[:resource_tags]") unless input[:resource_tags].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

  end
end
