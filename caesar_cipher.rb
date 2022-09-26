def caeser_cipher(string, shift) #return string modified by shifting each letter by shift factor
    shift  -= 26*(shift/26) unless shift < 26 
    modified_string_arr = string.split("").map do |c|
        if [*("A".."z")].any?(c)
            if c.ord + shift > 122 || c == c.upcase && c.ord + shift > 90
                (c.ord + shift - 26).chr
            else
                (c.ord + shift).chr
            end
        else 
            c
        end
    end
    modified_string = modified_string_arr.join
    p modified_string
end

caeser_cipher("What's the word with you, sir?", 57)

#a.ord => 97, z.ord => 122
#A.ord => 65, Z.ord => 90