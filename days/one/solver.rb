class Day1Solver
  attr_reader :left_column, :right_column

  def initialize(filename)
    @left_column = []
    @right_column = []

    File.foreach(filename) { |line| capture_row_data(line) }
  end

  def capture_row_data(row_string)
    left_val, right_val = row_string.split("   ").map {|val| val.to_i }
    @left_column.append left_val
    @right_column.append right_val
  end

  def sort
    @left_column.sort!
    @right_column.sort!
    self
  end

  def total_difference
    @left_column.each_index.map do |index|
      (@left_column[index] - @right_column[index])
      .abs
    end
    .sum
  end

  def total_similarity
    @left_column.each.map do |val|
      @right_column.count(val) * val
    end
    .sum
  end
end
