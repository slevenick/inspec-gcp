# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------
module GoogleInSpec
  module Container
    module Property
      class RegionalClusterConditions
        attr_reader :code

        attr_reader :message

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @code = args['code']
          @message = args['message']
        end

        def to_s
          "#{@parent_identifier} RegionalClusterConditions"
        end
      end

      class RegionalClusterConditionsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return RegionalClusterConditions.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| RegionalClusterConditions.new(v, parent_identifier) }
        end
      end
    end
  end
end
