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
require 'gcp_backend'
require 'google/compute/property/disk_disk_encryption_key'
require 'google/compute/property/disk_source_image_encryption_key'
require 'google/compute/property/disk_source_snapshot_encryption_key'

# A provider to manage Compute Engine resources.
class ComputeDisk < GcpResourceBase
  name 'google_compute_disk'
  desc 'Disk'
  supports platform: 'gcp'

  attr_reader :params
  attr_reader :label_fingerprint
  attr_reader :creation_timestamp
  attr_reader :description
  attr_reader :id
  attr_reader :last_attach_timestamp
  attr_reader :last_detach_timestamp
  attr_reader :labels
  attr_reader :licenses
  attr_reader :name
  attr_reader :size_gb
  attr_reader :users
  attr_reader :physical_block_size_bytes
  attr_reader :type
  attr_reader :source_image
  attr_reader :zone
  attr_reader :source_image_encryption_key
  attr_reader :source_image_id
  attr_reader :disk_encryption_key
  attr_reader :source_snapshot
  attr_reader :source_snapshot_encryption_key
  attr_reader :source_snapshot_id

  def initialize(params)
    super(params.merge({ use_http_transport: true }))
    @params = params
    @fetched = @connection.fetch(product_url, resource_base_url, params, 'Get')
    parse unless @fetched.nil?
    @params = params
  end

  def parse
    @label_fingerprint = @fetched['labelFingerprint']
    @creation_timestamp = parse_time_string(@fetched['creationTimestamp'])
    @description = @fetched['description']
    @id = @fetched['id']
    @last_attach_timestamp = parse_time_string(@fetched['lastAttachTimestamp'])
    @last_detach_timestamp = parse_time_string(@fetched['lastDetachTimestamp'])
    @labels = @fetched['labels']
    @licenses = @fetched['licenses']
    @name = @fetched['name']
    @size_gb = @fetched['sizeGb']
    @users = @fetched['users']
    @physical_block_size_bytes = @fetched['physicalBlockSizeBytes']
    @type = @fetched['type']
    @source_image = @fetched['sourceImage']
    @zone = @fetched['zone']
    @source_image_encryption_key = GoogleInSpec::Compute::Property::DiskSourceImageEncryptionKey.new(@fetched['sourceImageEncryptionKey'], to_s)
    @source_image_id = @fetched['sourceImageId']
    @disk_encryption_key = GoogleInSpec::Compute::Property::DiskDiskEncryptionKey.new(@fetched['diskEncryptionKey'], to_s)
    @source_snapshot = @fetched['sourceSnapshot']
    @source_snapshot_encryption_key = GoogleInSpec::Compute::Property::DiskSourceSnapshotEncryptionKey.new(@fetched['sourceSnapshotEncryptionKey'], to_s)
    @source_snapshot_id = @fetched['sourceSnapshotId']
  end

  # Handles parsing RFC3339 time string
  def parse_time_string(time_string)
    time_string ? Time.parse(time_string) : nil
  end

  def exists?
    !@fetched.nil?
  end

  def to_s
    "Disk #{@params[:name]}"
  end

  def un_parse
    {
      'label_fingerprint' => ->(x, _) { x.nil? ? [] : ["its('label_fingerprint') { should cmp #{x.inspect} }"] },
      'creation_timestamp' => ->(x, _) { x.nil? ? [] : ["its('creation_timestamp.to_s') { should cmp '#{x.inspect}' }"] },
      'description' => ->(x, _) { x.nil? ? [] : ["its('description') { should cmp #{x.inspect} }"] },
      'id' => ->(x, _) { x.nil? ? [] : ["its('id') { should cmp #{x.inspect} }"] },
      'last_attach_timestamp' => ->(x, _) { x.nil? ? [] : ["its('last_attach_timestamp.to_s') { should cmp '#{x.inspect}' }"] },
      'last_detach_timestamp' => ->(x, _) { x.nil? ? [] : ["its('last_detach_timestamp.to_s') { should cmp '#{x.inspect}' }"] },
      'labels' => ->(x, _) { x.nil? ? [] : x.map { |k, v| "its('labels') { should include(#{k.inspect} => #{v.inspect}) }" } },
      'licenses' => ->(x, _) { x.nil? ? [] : x.map { |single| "its('licenses') { should include #{single.inspect} }" } },
      'name' => ->(x, _) { x.nil? ? [] : ["its('name') { should cmp #{x.inspect} }"] },
      'size_gb' => ->(x, _) { x.nil? ? [] : ["its('size_gb') { should cmp #{x.inspect} }"] },
      'users' => ->(x, _) { x.nil? ? [] : x.map { |single| "its('users') { should include #{single.inspect} }" } },
      'physical_block_size_bytes' => ->(x, _) { x.nil? ? [] : ["its('physical_block_size_bytes') { should cmp #{x.inspect} }"] },
      'type' => ->(x, _) { x.nil? ? [] : ["its('type') { should cmp #{x.inspect} }"] },
      'source_image' => ->(x, _) { x.nil? ? [] : ["its('source_image') { should cmp #{x.inspect} }"] },
      'zone' => ->(x, _) { x.nil? ? [] : ["its('zone') { should cmp #{x.inspect} }"] },
      'source_image_encryption_key' => ->(x, _) { x.nil? ? [] : GoogleInSpec::Compute::Property::DiskSourceImageEncryptionKey.un_parse(x, 'source_image_encryption_key') },
      'source_image_id' => ->(x, _) { x.nil? ? [] : ["its('source_image_id') { should cmp #{x.inspect} }"] },
      'disk_encryption_key' => ->(x, _) { x.nil? ? [] : GoogleInSpec::Compute::Property::DiskDiskEncryptionKey.un_parse(x, 'disk_encryption_key') },
      'source_snapshot' => ->(x, _) { x.nil? ? [] : ["its('source_snapshot') { should cmp #{x.inspect} }"] },
      'source_snapshot_encryption_key' => ->(x, _) { x.nil? ? [] : GoogleInSpec::Compute::Property::DiskSourceSnapshotEncryptionKey.un_parse(x, 'source_snapshot_encryption_key') },
      'source_snapshot_id' => ->(x, _) { x.nil? ? [] : ["its('source_snapshot_id') { should cmp #{x.inspect} }"] },
    }
  end

  def dump(path, template_path, test_number, ignored_fields)
    name = 'Disk'

    arr = un_parse.map do |k, v|
      next if ignored_fields.include?(k)
      v.call(method(k.to_sym).call, k)
    end
    template_vars = {
      name: name,
      arr: arr,
      type: 'google_compute_disk',
      identifiers: @params,
      number: test_number,
    }
    File.open("#{path}/#{name}_#{test_number}.rb", 'w') do |file|
      file.write(ERB.new(File.read(template_path)).result_with_hash(template_vars))
    end
  end

  private

  def product_url
    'https://www.googleapis.com/compute/v1/'
  end

  def resource_base_url
    'projects/{{project}}/zones/{{zone}}/disks/{{name}}'
  end
end