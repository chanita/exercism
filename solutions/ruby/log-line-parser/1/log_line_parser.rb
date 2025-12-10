class LogLineParser

  def initialize(line)
    @line = line
  end

  def message
    starting_index = @line.index(']') + 3
    return @line[starting_index, @line.size-1].strip
  end

  def log_level
    ending_index = @line.index(']')-1
    return @line[1,ending_index].downcase
  end

  def reformat
    return "#{message} (#{log_level})"
  end
end
