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
require 'google/bigquery/property/table_external_data_configuration_bigtable_options'
require 'google/bigquery/property/table_external_data_configuration_bigtable_options_column_families'
require 'google/bigquery/property/table_external_data_configuration_csv_options'
require 'google/bigquery/property/table_external_data_configuration_google_sheets_options'
require 'google/bigquery/property/table_external_data_configuration_schema'
require 'google/bigquery/property/table_external_data_configuration_schema_fields'
module GoogleInSpec
  module BigQuery
    module Property
      class TableExternalDataConfiguration
        attr_reader :arguments

        attr_reader :autodetect

        attr_reader :compression

        attr_reader :ignore_unknown_values

        attr_reader :max_bad_records

        attr_reader :source_format

        attr_reader :source_uris

        attr_reader :schema

        attr_reader :google_sheets_options

        attr_reader :csv_options

        attr_reader :bigtable_options

        def initialize(arguments = nil, parent_identifier = nil)
          @arguments = arguments
          return if arguments.nil?
          @parent_identifier = parent_identifier
          @autodetect = arguments['autodetect']
          @compression = arguments['compression']
          @ignore_unknown_values = arguments['ignoreUnknownValues']
          @max_bad_records = arguments['maxBadRecords']
          @source_format = arguments['sourceFormat']
          @source_uris = arguments['sourceUris']
          @schema = GoogleInSpec::BigQuery::Property::TableExternalDataConfigurationSchema.new(arguments['schema'], to_s)
          @google_sheets_options = GoogleInSpec::BigQuery::Property::TableExternalDataConfigurationGoogleSheetsOptions.new(arguments['googleSheetsOptions'], to_s)
          @csv_options = GoogleInSpec::BigQuery::Property::TableExternalDataConfigurationCsvOptions.new(arguments['csvOptions'], to_s)
          @bigtable_options = GoogleInSpec::BigQuery::Property::TableExternalDataConfigurationBigtableOptions.new(arguments['bigtableOptions'], to_s)
        end

        def to_s
          "#{@parent_identifier} TableExternalDataConfiguration"
        end

        def self.un_parse(item, current_path)
          return if item.nil?
          way_to_parse = {
            'autodetect' => ->(x, path) { x.nil? ? [] : ["its('#{path}.autodetect') { should cmp #{x.inspect} }"] },
            'compression' => ->(x, path) { x.nil? ? [] : ["its('#{path}.compression') { should cmp #{x.inspect} }"] },
            'ignore_unknown_values' => ->(x, path) { x.nil? ? [] : ["its('#{path}.ignore_unknown_values') { should cmp #{x.inspect} }"] },
            'max_bad_records' => ->(x, path) { x.nil? ? [] : ["its('#{path}.max_bad_records') { should cmp #{x.inspect} }"] },
            'source_format' => ->(x, path) { x.nil? ? [] : ["its('#{path}.source_format') { should cmp #{x.inspect} }"] },
            'source_uris' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.source_uris') { should include #{single.inspect} }" } },
            'schema' => ->(x, path) { x.nil? ? [] : GoogleInSpec::BigQuery::Property::TableExternalDataConfigurationSchema.un_parse(x, "#{path}.schema") },
            'google_sheets_options' => ->(x, path) { x.nil? ? [] : GoogleInSpec::BigQuery::Property::TableExternalDataConfigurationGoogleSheetsOptions.un_parse(x, "#{path}.google_sheets_options") },
            'csv_options' => ->(x, path) { x.nil? ? [] : GoogleInSpec::BigQuery::Property::TableExternalDataConfigurationCsvOptions.un_parse(x, "#{path}.csv_options") },
            'bigtable_options' => ->(x, path) { x.nil? ? [] : GoogleInSpec::BigQuery::Property::TableExternalDataConfigurationBigtableOptions.un_parse(x, "#{path}.bigtable_options") },
          }
          way_to_parse.map do |k, v|
            v.call(item.method(k).call, current_path)
          end
        end

        def to_json(*_args)
          @arguments.to_json
        end

        # other is a string representation of this object
        def ==(other)
          @arguments == JSON.parse(other)
        end
      end
    end
  end
end
