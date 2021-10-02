begin
  1 / 0
rescue StandardError => e
  puts "error class: #{e.class}"
  puts "error message: #{e.message}"
  puts 'back trace -----'
  puts e.backtrace
  puts '-----'
end
