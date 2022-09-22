def substrings(word, dictionary)
   dictionary.reduce(Hash.new(0)) do |total, dic|
    word.split.each do |word_arr|
    total[dic] += 1 if word_arr.downcase.match?(dic)
    end
    total
   end

end

dictionary = ["below","down","be","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)