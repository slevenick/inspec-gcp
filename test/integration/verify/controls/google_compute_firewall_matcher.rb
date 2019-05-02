title 'Firewalls Matcher'

gcp_project_id = attribute(:gcp_project_id, default: '', description: 'The GCP project identifier.')

control 'gcp-firewalls-custom-matcher-1.0' do

  impact 1.0
  title 'Ensure allow_only_port_and_protocol works'

  describe google_compute_firewall(project: gcp_project_id, name: 'default-allow-http') do
    it { should exist }
    # Should allow only http
    it { should allow_only_port_and_protocol('80', 'tcp') }
    # Check that the firewall allows something other than these specific ports
    # This is to test the matcher, does not make sense in production
    it { should_not allow_only_port_and_protocol('80', 'udp') }
    it { should_not allow_only_port_and_protocol('8080', 'tcp') }
  end

end