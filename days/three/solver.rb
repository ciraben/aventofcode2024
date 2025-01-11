require_relative "../base_solver"

class Day3Solver < BaseSolver
  attr_reader :multiplications

  def sum_of_multiplications
    multiplications.flatten.map do |pair|
      pair.split(",")
      .map(&:to_i)
      .inject(:*)
    end
    .inject(:+)
  end

  private

  def setup
    @multiplications = []
  end

  def capture_row_data(line)
    re = /mul\((\d{1,3},\d{1,3})\)/
    multiplications << line.scan(re)
  end
end
