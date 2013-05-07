require 'json'
require 'net/http'

data_file = File.read("./data.json")
parsed_data = JSON.parse(data_file)

Dir.chdir("./scenarios")
subdir_list = Dir["*"].reject { |o| not File.directory?(o) }

subdir_list.each do |scenario|
  response = eval(File.read("./account_create/executable.rb"))
  puts response ? "#{scenario} VALID" : "#{scenario}: INVALID"
end
