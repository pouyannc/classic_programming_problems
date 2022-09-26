def substrings (word, dictionary)
    substring_h = dictionary.each_with_object(Hash.new(0)) do |substring, substring_h|
        substring_h[substring] += 1 if word.include?(substring)
    end
    substring_h
end

p substrings("hi there", ["hi", "hello", "h", "there"])