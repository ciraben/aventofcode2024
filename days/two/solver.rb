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

  def safety
    @reports.count { |report| safe?(report) }
  end

  private

  def capture_row_data(line)
    reports << line.strip.split(" ").map(&:to_i)
  end

  def safe?(report)
    adjacent_pairs = report.each_cons(2)

    safely_increasing = adjacent_pairs.all? do |level, next_level|
      level < next_level && level + 4 > next_level
    end

    safely_decreasing = adjacent_pairs.all? do |level, next_level|
      level > next_level && level - 4 < next_level
    end

    safely_increasing || safely_decreasing
  end
end

class Part2Solver < Day2Solver
  private

  def safe?(report)
    x = report.combination(report.length - 1).map do |subreport|
      method(:safe?).super_method.call(subreport)
    end
    .any?
  end
end
