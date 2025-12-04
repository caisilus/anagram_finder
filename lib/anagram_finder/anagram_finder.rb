# frozen_string_literal: true

module AnagramFinder
  class AnagramFinder
    ALPHABET_HASH = ('a'..'z').to_h { |letter| [letter, 0] }.freeze

    def self.call(s, p)
      p_letters_counts = letter_counts_for(p)

      initial_window = s.slice(0, p.length)
      window_letters_counts = letter_counts_for(initial_window)

      findings = [].tap { it << 0 if window_letters_counts == p_letters_counts }

      s.chars.slice(p.length...).each_with_index do |letter_to_add, window_start_index|
        letter_to_remove = s[window_start_index]
        window_letters_counts[letter_to_add] += 1
        window_letters_counts[letter_to_remove] -= 1

        findings << window_start_index + 1 if window_letters_counts == p_letters_counts
      end

      findings
    end

    private

    def self.letter_counts_for(s)
      s.chars.tally(ALPHABET_HASH.dup)
    end
  end
end
