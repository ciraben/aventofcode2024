class Day2Solver
  attr_reader :reports

  def initialize(string_data: nil, filename: "input")
    @reports = []

    if string_data
      string_data.split("\n").each { |line| capture_row_data(line) }
    else
      File.foreach(filename) { |line| capture_row_data(line) }
    end
  end

  def capture_row_data(line)
    reports << line.strip.split(" ").map(&:to_i)
  end
end
