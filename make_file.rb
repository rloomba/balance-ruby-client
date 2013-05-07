Dir.chdir("./scenarios")
subdir_list = Dir["*"].reject { |o| not File.directory?(o) }

subdir_list.each_with_index do |dir, index|
  next if [0,1,2,3,4,5,6,7,8].include?(index)
  # add in boiler_plate to request files
  File.open("./#{dir}/request.rb", "w") do |f|
    f.write('<%= boiler_plate %>')
  end

  # add in definition files

  ruby = File.read("./#{dir}/ruby.mako")
  line_num = 1
  ruby.each_line do |line|
    if line_num == 3
      File.open("./#{dir}/definition.rb", "w") do |f|
        f.write(line)
      end
    end
    line_num += 1
  end
end
