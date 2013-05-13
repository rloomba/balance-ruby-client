require 'json'
require 'net/http'
require 'rspec'

data_file = File.read("./scenario.cache")
parsed_data = JSON.parse(data_file)



Dir.chdir("./scenarios")
subdir_list = Dir["*"].reject { |o| not File.directory?(o) }
ruby_response_hash = {}

describe "each scenario should execute" do
  subdir_list.each do |scenario|
    response = nil
    next unless File.exist?("./#{scenario}/executable.rb")
    next if scenario == "event_list"
    file = File.read("./#{scenario}/executable.rb")
    begin
      response = eval(file)
      # puts "Execute code response ----------------------"
      # puts response_uri = response.attributes['uri']
      # puts "response from data file --------------------"
      # response_hash = JSON.parse(parsed_data[scenario]["response"])
      # puts data_file_uri = response_hash['uri']
      # puts "#{scenario} is good to go!" if response_uri == data_file_uri
    rescue
      puts "#{scenario}'s executable raised an error"
    end
    puts response
    it "#{scenario}" do
      response.should_not be_nil
    end
  end
end

# debugger

# File.open("../responses.rb", "w") do |f|
#       f.write(ruby_response_hash.to_json)
# end

