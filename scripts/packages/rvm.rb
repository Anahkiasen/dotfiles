#!/usr/bin/ruby

require_relative "../../lib/RVM.rb"

rvm = RVM.new([
  "1.9.3"
])

rvm.update_all()