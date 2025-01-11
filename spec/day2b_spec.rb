require_relative "../days/two/solver"

RSpec.describe Part2Solver do
  subject { Part2Solver.new(string_data: input, filename:) }
  let(:input) { nil }
  let(:filename) { nil }

  context "given an otherwise safely increasing report with one exception" do
    let(:input) { "1 2 3 4 8" }

    it "calculates a dampened safety of one" do
      expect(subject.safety).to eq 1
    end
  end

  context "given the sample multi-report data" do
    let(:filename) { "days/two/mini-input" }

    it "calculates a dampened safety of four" do
      expect(subject.safety).to eq 4
    end
  end
end
