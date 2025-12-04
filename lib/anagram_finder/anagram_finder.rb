# frozen_string_literal: true

module AnagramFinder
  class AnagramFinder
    attr_reader :word, :anagrams

    def initialize(word)
      @word = word
      @anagrams = word.chars.permutation.to_a.map(&:join)
    end

    def first_indices_in(another_word)
      anagrams.map do |anagram|
        another_word.index(anagram)
      end.compact
    end
  end
end
