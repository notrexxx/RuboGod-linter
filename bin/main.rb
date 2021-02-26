#!/usr/bin/env ruby
require 'io/console'
require 'colorize'
require_relative '../lib/god'

nicename = 'RuboGod'
puts "\n                  Welcome to the #{nicename.green} styling linter\n"
puts "\n            RuboGod will warn you about styling errors in your code!".red
puts "           RuboGod will also suggest you changes to improve your code!\n".yellow
puts "     (RuboGod in his current state can only test files inside the 'TEST' folder\n"
puts "\n"
puts "                             PRESS ENTER TO CONTINUE\n".blue
$stdin.noecho(&:gets).chomp

