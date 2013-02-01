require 'rubygems'
require 'json'
require 'yaml'
require 'optparse'

#mci = '243993001'

options = {
    mci => '243993001'
}

CONFIG_FILE = File.join(ENV['HOME'], 'mci_opts.yaml')

if File.exists? CONFIG_FILE
  config_options = YAML.load CONFIG_FILE
  options.merge!(config_options)
end

option_parser = OptionParser.new do |opts|
  opts.banner = "Usage: #{__FILE__} [options] <mci_list>"
  opts.on("-l LEVEL", "--level", "Log level") do |level|
    options[:level] = level
  end
end

option_parser.parse!(ARGV)

arg1 = ARGV.shift

=begin
data = File.open(ARGV[0], 'a+'){ |file| file.read }
json_data = JSON.parse(data)

#puts json_data['server_template_ids'][0]

# ver1
#json_data['server_template_ids'].push(mci)

# ver2
json_data['server_template_ids'][0] = mci
new_data = json_data.to_json

#puts json_data['server_template_ids'][0]
#File.delete(ARGV[0])

File.open(ARGV[0], 'w'){ |file| file.write(new_data) }

=end

