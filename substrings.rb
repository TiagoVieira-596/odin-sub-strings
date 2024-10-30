def substrings (string, dictionary)
  resulting_hash = {}
  downcase_text = string.downcase

  dictionary.each do |word|
    word_matches = downcase_text.scan(word).length
    resulting_hash[word] = word_matches unless word_matches == 0
  end
  Hash[resulting_hash.sort]
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)