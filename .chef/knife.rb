# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "elgalu"
client_key               "#{current_dir}/elgalu.pem"
# client_key               "#{ENV['HOME']}/.ssh/id_rsa"
validation_client_name   "rubywebs-validator"
validation_key           "#{current_dir}/rubywebs-validator.pem"
# validation_key           "#{ENV['HOME']}/.ssh/id_rsa.pub"
chef_server_url          "https://api.opscode.com/organizations/rubywebs"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
