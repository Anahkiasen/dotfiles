
require_relative 'String.rb'

class PackageManager
  attr_accessor :packages, :queue

  def initialize(packages)
    @packages = packages
    @queue    = Hash.new
  end

  # Package methods ------------------------------------------------ /

  # Updates the packages
  def update_all
    self.synchronize()
    title "Updating packages for #{self.class.name}"

    self.update()
    info "Updating #{self.class.name} itself"

    self.update_self()

    self.cleanup()
  end

  # Update all packages
  def update
  end

  # Update the package manager itsef
  def update_self
  end

  # Cleanup unused packages
  def cleanup
  end

  # Synchronizes the installed packages
  def synchronize
    title "Synchronizing #{self.class.name} packages"

    # Check which packages to install
    @packages.each { |package, pre|
      if self.installed(package)
        print "#{package}".pink() + " is already installed\n"
      else
        print "#{package}".error() + " is not installed\n"
        @queue["#{package}"] = pre
      end
    }

    # Install packages
    if @queue.empty?
      print "\nNo new packages to install\n".success()
    else
      @queue.each { |package, pre|
        self.install package, pre
      }
    end
  end

  # Package methods ------------------------------------------------ /

  # Installs a package
  def install(package)
    print "Installing #{package}"
  end

  # Check if a package is installed
  def installed(package)
  end

  # Helpers -------------------------------------------------------- /

  def info(text)
    print "#{text}\n".info()
  end

  def title(text)
    print text.subheader()
  end

end