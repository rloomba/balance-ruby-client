require 'json'
require 'net/http'
# require 'ruby-debug'

data_file = File.read("./scenario.cache")
parsed_data = JSON.parse(data_file)

Dir.chdir("./scenarios")
subdir_list = Dir["*"].reject { |o| not File.directory?(o) }
ruby_response_hash = {}
subdir_list.each do |scenario|
  next unless File.exist?("./#{scenario}/executable.rb")
  file = File.read("./#{scenario}/executable.rb")
  begin
    response = eval(file)
    puts "Execute code response ----------------------"
    puts response_uri = response.attributes['uri']
    puts "response from data file --------------------"
    response_hash = JSON.parse(parsed_data[scenario]["response"])
    puts data_file_uri = response_hash['uri']
    puts "#{scenario} is good to go!" if response_uri == data_file_uri
  rescue
    puts "#{scenario}'s code does not execute"
  end
end

# debugger

File.open("../responses.rb", "w") do |f|
      f.write(ruby_response_hash.to_json)
end

