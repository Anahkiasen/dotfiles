#!/usr/bin/ruby

require_relative "../../lib/Rubygems.rb"

gem = Rubygems.new({
  "sass"       => true,
  "compass"    => true,
  "genghisapp" => true,
  "susy"       => false,
  "bson_ext"   => false
})

gem.synchronize()
#gem.update()