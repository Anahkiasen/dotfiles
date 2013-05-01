#!/usr/bin/ruby

require_relative "../../lib/Composer.rb"

composer = Composer.new({
  "phpunit/phpunit"     => "dev-master",
  "fabpot/php-cs-fixer" => "dev-master"
})

composer.update_all()