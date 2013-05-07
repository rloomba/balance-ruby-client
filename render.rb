require 'erb'
require 'json'

data_file = File.read("./ruby_data.json")
parsed_data = JSON.parse(data_file)
# puts parsed_data['account_add_card']['metadata']
Dir.chdir("./scenarios")
subdir_list = Dir["*"].reject { |o| not File.directory?(o) }

subdir_list.each do |scenario|
  boiler_plate = "require 'balanced'\nBalanced.configure('03921a2cb69311e28b89026ba7c1aba6')\n"
  definition = File.read("./#{scenario}/definition.rb")
  template = File.read("./#{scenario}/request.rb")
  erb = ERB.new(template)
  request = parsed_data[scenario]['request']
  payload = parsed_data[scenario]['payload']
  executable = erb.result(binding)
  File.open("./#{scenario}/executable.rb", "w") do |f|
    f.write(executable)
  end
end
