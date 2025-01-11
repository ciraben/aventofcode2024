class BaseSolver
  def initialize(string_data: nil, filename: nil)
    setup
    load_data(string_data, filename)
  end

  private

  def setup
  end

  def load_data(string_data, filename)
    if string_data
      string_data.split("\n").each { |line| capture_row_data(line) }
    else
      File.foreach(filename) { |line| capture_row_data(line) }
    end
  end

  def capture_row_data(line)
  end
end
