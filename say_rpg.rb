rate = 210
while line = gets
  line.chomp!
  puts
  if line.empty?
    sleep(0.7)
    next
  end
  puts(line)
  IO.popen("say -r #{rate}", "w") do |say|
    say.puts(line)
  end
end
