#!/usr/bin/ruby

require_relative "../../lib/Node.rb"

npm = Node.new([
  "coffee-script",
  "kss",
  "bower",
  "requirejs",
  "clean-css",
  "uglify-js"
])

npm.update_all()