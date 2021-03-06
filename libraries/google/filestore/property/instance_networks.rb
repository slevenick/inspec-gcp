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
  module Filestore
    module Property
      class InstanceNetworks
        attr_reader :network

        attr_reader :modes

        attr_reader :reserved_ip_range

        attr_reader :ip_addresses

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @network = args['network']
          @modes = args['modes']
          @reserved_ip_range = args['reservedIpRange']
          @ip_addresses = args['ipAddresses']
        end

        def to_s
          "#{@parent_identifier} InstanceNetworks"
        end
      end

      class InstanceNetworksArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return InstanceNetworks.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| InstanceNetworks.new(v, parent_identifier) }
        end
      end
    end
  end
end
