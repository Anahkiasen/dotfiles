class String

  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

  # Colors --------------------------------------------------------- /

  def error
    colorize(31)
  end

  def success
    colorize(32)
  end

  def info
    colorize(34)
  end

  # Titles --------------------------------------------------------- /

  def title
    return "#{self} --------/\n\n".info()
  end
end