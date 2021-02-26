#!/usr/bin/env ruby
require 'io/console'
require 'colorize'
require 'colorized_string'
require_relative '../lib/god'

nicename = 'RuboGod'
puts "\n                  Welcome to the #{nicename.green} styling linter\n"
puts "\n            RuboGod will warn you about styling errors in your code!".red
puts "           RuboGod will also suggest you changes to improve your code!\n".yellow
puts "     (RuboGod in his current state can only test files inside the 'TEST' folder\n"
puts "\n"
puts "                             PRESS ENTER TO CONTINUE\n".blue
$stdin.noecho(&:gets).chomp

test_dir = Dir['../test/*.rb']
test_dir.each do |i|
  opener = File.open(i)
  opener.each_with_index do |num, e|
    p God.trailing_whitespace(num, e)
  end
end
