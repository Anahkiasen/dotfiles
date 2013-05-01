#!/usr/bin/ruby

require_relative '../../helpers/colorizer.rb'

# Define packages to sync ------------------------------------------ /

subheader "Syncing NPM packages"
packages = ["coffee-script", "kss", "bower", "requirejs", "clean-css", "uglify-js"]
queue    = nil

# Check which packages are already installed ----------------------- /

packages.each { |package|
  isntInstalled = `npm list #{package} -g -i`.match('(empty)')
  if isntInstalled then queue = "#{queue} #{package}" end
}

# Install missing packages
if queue
  print "Installing packages : #{queue}".success()
  `npm install #{queue} -g`

# Else display success
else
  print "No NPM packages to download".success()
end