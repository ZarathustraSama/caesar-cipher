def caesar_cipher(string, shift)
	ascii_string = string.bytes
	ascii_shifted_string = []
	upcase_chars = Array(65..90)
	downcase_chars = Array(97..122)
	for char in ascii_string do
			# ASCII 65 is the 'A' character
			if upcase_chars.include?(char)
					ascii_shifted_string << (char - 65 + (shift % upcase_chars.size) + upcase_chars.size) % upcase_chars.size + 65
			# ASCII 97 is the 'a' character
			elsif downcase_chars.include?(char)
					ascii_shifted_string << (char - 97 + (shift % upcase_chars.size) + upcase_chars.size) % upcase_chars.size + 97
			else
					ascii_shifted_string << char
			end
	end
	ascii_shifted_string.pack('C*')
end

puts "Type string"
input = gets.chomp
puts "Now how much to shift the letters"
shift_input = gets.to_i

puts caesar_cipher(input, shift_input)
