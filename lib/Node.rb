require_relative 'PackageManager.rb'

class Node < PackageManager

  # Package manager

  def update
    system "npm update -g"
  end

  def update_self
    system "npm update npm -g"
  end

  def cleanup
    system "npm cache clean"
  end

  # Packages

  def installed(package)
    return File.directory? "/usr/local/share/npm/lib/node_modules/#{package}"
  end

  def install(package)
    system "npm install #{package} -g"
  end

end
