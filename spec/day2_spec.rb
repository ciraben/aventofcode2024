require_relative "../days/two/solver"

RSpec.describe Day2Solver do
  subject { Day2Solver.new(string_data: input, filename:) }
  let(:input) { nil }
  let(:filename) { nil }

  context "when passing a string for input" do
    let(:input) { "1 2 3 4 5" }

    it "creates a reports array containing the correct levels" do
      expect(subject.reports).to eq [[1, 2, 3, 4, 5]]
    end
  end

  context "when passing a filename for input" do
    let(:filename) { "days/two/mini-input" }

    it "creates a reports array containing the correct levels" do
      expect(subject.reports).to eq [
        [7, 6, 4, 2, 1],
        [1, 2, 7, 8, 9],
        [9, 7, 6, 2, 1],
        [1, 3, 2, 4, 5],
        [8, 6, 4, 4, 1],
        [1, 3, 6, 7, 9]
      ]
    end
  end
end
