re 'rubygems'
require 'json'

mci = '243993001'

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

File.open(ARGV[0], 'w'){ |file| file.write(new_data)}
