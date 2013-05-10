require 'erb'
require 'json'

data_file = File.read("./scenario.cache")
parsed_data = JSON.parse(data_file)
Dir.chdir("./scenarios")
subdir_list = Dir["*"].reject { |o| not File.directory?(o) }
# subdir_list = ['refund_update']
boiler_plate = "require 'balanced'\nBalanced.configure('03921a2cb69311e28b89026ba7c1aba6')\n"

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
