require "debug"
require_relative "../one/solver"

RSpec.describe Day1Solver do
  subject { Day1Solver.new(inputfile) }

  context "given an input line" do
    let(:inputfile) { "one/one-line-input" }

    it "converts it to integers stored in columns" do
      expect(subject.left_column).to eq [3]
      expect(subject.right_column).to eq [4]
      expect(subject.total_difference).to eq 1
    end
  end

  context "given a multi-line input file" do
    let(:inputfile) { "one/mini-input" }

    it "sorts each column's data" do
      expect(subject.sort.left_column).to eq  [1, 2, 3, 3, 3, 4]
      expect(subject.sort.right_column).to eq [3, 3, 3, 4, 5, 9]
    end

    it "calculates the total difference between columns" do
      expect(subject.sort.total_difference).to eq 11
    end

    it "calculates the total similarity between columns" do
      expect(subject.total_similarity).to eq 31
    end
  end
end
