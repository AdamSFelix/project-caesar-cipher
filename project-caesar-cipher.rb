def caesar-cipher(string, shift)
   string.each_char do |char|
     base-num = char.ord < 91 ? 65 : 97
     
     (a, z) = case char
              when 97..122 then [97, 122]
              when 65..90 then [65, 90]
              else next
     end
     
     if char.strip.empty?
       string += char
     else
       final = (((char.ord - base) + shift) % 26) + base
     end
   end
end

message = "Sonic the Hedgehog from Mega Drive"

caesar-cipher(message, 10)

puts message
