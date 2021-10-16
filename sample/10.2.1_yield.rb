# def greeting
#   puts 'good morning.'
#   yield if block_given?
#   puts 'good evening'
# end

# greeting do
#   puts 'hello'
# end

def greeting
  puts 'good morning.'
  text = yield 'hello'
  puts text
  puts 'good evening'
end

greeting do |text|
    text * 2
end
