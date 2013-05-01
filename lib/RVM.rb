require_relative 'PackageManager.rb'

class RVM < PackageManager

  # Package manager

  def update
    # Nothing to update
  end

  def update_self
    system "sudo rvm get head"
    system "sudo rvm reload"
  end

  def cleanup
    system "sudo rvm cleanup all"
  end

  # Packages

  def installed(package)
    return !!`sudo rvm list | grep #{package}`.match("#{package}")
  end

  def install(package)
    system "sudo rvm install #{package}"
  end

end
