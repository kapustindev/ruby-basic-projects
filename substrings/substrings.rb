def get_word_frequency(string, substring)
  unless string.include? substring
    return 0
  end
  index = string.index(substring) + substring.length
  1 + get_word_frequency(string[index..], substring)
end

def substrings(word, dictionary)
  dictionary.each_with_object({}) do |substr, hash|
    word_freq = get_word_frequency(word.downcase, substr)
    unless word_freq.zero?
      hash[substr] = word_freq
    end
  end
end
