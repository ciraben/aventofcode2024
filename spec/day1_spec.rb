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
end
