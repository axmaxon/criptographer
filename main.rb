require "digest"

cript_methods = %w[MD5 SHA1]

puts "Введите слово или фразу для шифрования"

user_phrase = STDIN.gets.chomp

puts "Каким способом зашифровать?"

cript_methods.each_with_index do |method, index|
  puts "#{index+1} #{method}"
end

chosen_method = STDIN.gets.chomp

case
when chosen_method == "1"
  puts Digest::MD5.hexdigest user_phrase
when chosen_method == "2"
  puts Digest::SHA256.hexdigest user_phrase
end
