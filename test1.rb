require 'json'
require 'pp'

class Dictionary
  class << self
    def top_words
      %w(cat bear ant)
    end
  
    def top_rhymes(word)
      %w(cati tudor matei)
    end
  end
end

top_words = {}

Dictionary.top_words.each do |word|
  top_words[word] = Dictionary.top_rhymes(word)
end

require 'json_sorted'
top_words.to_json