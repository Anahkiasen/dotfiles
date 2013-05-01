#!/usr/bin/ruby

require_relative '../../helpers/colorizer.rb'

# Define packages to sync ------------------------------------------ /

subheader "Syncing Rubygems packages"
packages = {
  "sass"       => true,
  "compass"    => true,
  "genghisapp" => true,
  "susy"       => false,
  "bson_ext"   => false
}
queue = nil

# Check which packages are already installed ----------------------- /

packages.each { |package, pre|
  isInstalled = `gem list #{package} -i`.strip!
  pre = if pre then '--pre' else '' end

  unless isInstalled.toBoolean()
    queue = "#{queue} #{package}"
    system "sudo gem install #{package} #{pre}"
  end
}

print "No packages to install\n".success() unless queue
