# frozen_string_literal: true

RSpec.describe AnagramFinder::AnagramFinder do
  subject { described_class.new(p) }
  let(:p) { "abc" }

  it "has a accessor methods" do
    expect(subject.word).to eq("abc")
    expect(subject.anagrams).to match_array(["abc", "acb", "bac", "bca", "cab", "cba"])
  end

  it "has #first_indices_in method" do
    expect(subject.first_indices_in("acbpabcqabcllbacdrcba")).to match_array([0, 4, 13, 18])
  end
end
