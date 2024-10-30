def substrings (string, dictionary)
  resulting_hash = {}
  words_array = string.split(" ")

  words_array.each do |word|
    substrings_found = dictionary.select {|string| word.downcase.include?(string)}
    substrings_found.each do |substring|
      if resulting_hash[substring] == nil
        resulting_hash[substring] = 1
      else
        resulting_hash[substring] += 1
      end
    end
  end
  p Hash[resulting_hash.sort]
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)