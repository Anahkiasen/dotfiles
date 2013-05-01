require_relative 'PackageManager.rb'

class Rubygems < PackageManager

  # Package manager

  def update
    system "sudo gem update"
  end

  def update_self
    system "sudo gem update --system"
  end

  def cleanup
    system "sudo gem cleanup"
  end

  # Packages

  def installed(package)
    return `sudo gem list #{package} -i`.toBoolean()
  end

  def install(package, version)
    version = version ? '--pre' : ''
    system "sudo gem install #{package} #{version}"
  end

end