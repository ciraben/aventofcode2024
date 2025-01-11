require_relative "../days/three/solver"

RSpec.describe Day3Solver do
  subject { Day3Solver.new(string_data: input, filename:) }
  let(:input) { nil }
  let(:filename) { nil }

  context "given a valid mul call" do
    let(:input) { "mul(44,46)" }

    it "calculates the product correctly" do
      expect(subject.sum_of_multiplications).to eq 2024
    end
  end

  context "given the mini-input data" do
    let(:filename) { "days/three/mini-input" }

    it "calculates a multiplication of 161" do
      expect(subject.sum_of_multiplications).to eq 161
    end
  end
end
