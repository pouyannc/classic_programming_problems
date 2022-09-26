def substrings (string, dictionary)
    string.downcase!
    substring_h = dictionary.each_with_object(Hash.new(0)) do |substring, substring_h|
        substring_h[substring] += string.scan(substring.downcase).count if string.include?(substring.downcase)
    end
    substring_h
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)