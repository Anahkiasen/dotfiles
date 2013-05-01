require_relative 'PackageManager.rb'

class Composer < PackageManager

  @@global = "-d /usr/local/composer"

  # Package manager

  def update

    system "sudo composer update #{@@global}"
  end

  def update_self
    system "sudo composer self-update"
  end

  def cleanup
    # No cleanup for Composer
  end

  # Packages

  def installed(package)
    return !!`sudo composer show -i #{@@global} | grep #{package}`.match("#{package}")
  end

  def install(package, pre)
    system "sudo composer require #{package}:#{pre} #{@@global}"
  end

end