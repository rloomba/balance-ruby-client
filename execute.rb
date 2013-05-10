require 'json'
require 'net/http'

data_file = File.read("./scenario.cache")
parsed_data = JSON.parse(data_file)

Dir.chdir("./scenarios")
subdir_list = Dir["*"].reject { |o| not File.directory?(o) }
ruby_response_hash = {}
subdir_list.each do |scenario|
  begin
    response = eval(File.read("./#{scenario}/executable.rb"))
    ruby_response_hash[scenario] = response
  rescue
    puts "#{scenario}'s code does not execute"
  end
end
File.open("../responses.rb", "w") do |f|
      f.write(ruby_response_hash.to_json)
end

