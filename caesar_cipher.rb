def caeser_cipher(string, shift) #return string modified by shifting each letter by shift factor
    #make sure to reduce shift by 25 unless its below 26 + some other condition
    modified_string_arr = string.split("").map do |c|
        if [*("A".."z")].any?(c)
            if c.ord + 5 > 122 
                (c.ord + 5 - 26).chr
            else
                (c.ord + 5).chr
            end
        else 
            c
        end
    end
    modified_string = modified_string_arr.join
    p modified_string
end

caeser_cipher("Hello, world!", 5)

#a.ord => 97
#A.ord => 65