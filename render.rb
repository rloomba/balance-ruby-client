require 'erb'
require 'json'

data_file = File.read("./scenario.cache")
parsed_data = JSON.parse(data_file)
Dir.chdir("./scenarios")
subdir_list = Dir["*"].reject { |o| not File.directory?(o) }
api_key = parsed_data["api_key"]
boiler_plate = "require 'balanced'\nBalanced.configure('#{api_key}')\n"

subdir_list.each do |scenario|
  begin
    template = File.read("./#{scenario}/request.rb")
    erb = ERB.new(template)
    request = parsed_data[scenario]['request']
    payload = request['payload']
    executable = erb.result(binding)
    File.open("./#{scenario}/executable.rb", "w") do |f|
      f.write(executable)
    end
  rescue Exception => e
    puts "#{scenario} does not contain a valid template file"
  end
end
