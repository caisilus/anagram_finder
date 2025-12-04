# frozen_string_literal: true

RSpec.describe AnagramFinder::AnagramFinder do
  subject { described_class.call(s, p) }
  let(:s) { "acbpabcqabcllbacdrcba" }
  let(:p) { "abc" }

  it "has #first_indices_in method" do
    expect(subject).to match_array([0, 4, 8, 13, 18])
  end
end
