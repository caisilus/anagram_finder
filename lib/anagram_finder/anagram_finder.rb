# frozen_string_literal: true

module AnagramFinder
  class AnagramFinder
    def self.call(s, p)
      p_letters_counts = p.chars.tally

      s.chars.each_cons(p.length).with_index.filter_map do |window, i|
        window_letters_counts = window.tally

        i if window_letters_counts == p_letters_counts
      end
    end
  end
end
