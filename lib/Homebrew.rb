require_relative 'PackageManager.rb'

class Homebrew < PackageManager

  # Package manager

  def update
    system "brew update"
  end

  def update_self
    system "brew upgrade"
  end

  def cleanup
    system "brew cleanup"
  end

  # Packages

  def installed(package)
    return File.directory? "/usr/local/Cellar/#{package}"
  end

  def install(package, pre)
    system "brew install #{package}"
  end

end