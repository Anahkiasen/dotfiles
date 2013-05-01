#!/usr/bin/ruby

require_relative "../../lib/Homebrew.rb"

brew = Homebrew.new([
  "git",
  "hub",
  "node",
  "git-ftp",
  "mongodb",
  "php54",
  "php54-mongo",
  "php54-mcrypt",
  "php54-xdebug",
  "composer"
])

brew.update_all()