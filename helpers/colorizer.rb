$headerWidth = 50

class String

  def colorize(color_code)
    "\e[#{color_code}m#{self}\e[0m"
  end

  # Helpers -------------------------------------------------------- /

  def toBoolean
    return self == 'true'
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

  ###
  # A big bold header
  ###
  def header
    halfSize      = ($headerWidth - self.length - 2) / 2
    halfDecorator = "/" * halfSize
    decorator     = "/" * $headerWidth

    return "\n#{decorator}\n#{halfDecorator} #{self.upcase()} #{halfDecorator}\n#{decorator}\n".info()
  end

  ###
  # A one-line subheader
  ###
  def subheader
    decorator = "-" * ($headerWidth - self.length)

    return "\n#{self} #{decorator} /\n\n".info()
  end

end

def header(text)
  print text.header()
end

def subheader(text)
  print text.subheader()
end