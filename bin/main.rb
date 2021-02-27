#!/usr/bin/env ruby
require 'io/console'
require 'colorize'
require 'colorized_string'
require_relative '../lib/god'

nicename = 'RuboGod'
puts "\n                     Welcome to the #{nicename.cyan} styling linter\n"
puts "\n            RuboGod will warn you about styling errors in your code!".red
puts "     RuboGod will also tell you if you are passing the test after modifying your code\n".green
puts "     (RuboGod in his current state can only test files inside the 'TEST' folder)\n"
puts "\n"
puts "                             PRESS ENTER TO CONTINUE\n".blue
$stdin.noecho(&:gets).chomp

puts "\n                Atention, #{nicename.on_blue} will test now a file with errors (badtest.rb)\n".cyan
puts "\n"
sleep(1)

test_dir = Dir['../test/badtest.rb']
test_dir.each do |i|
  opener = File.open(i)
  opener.each_with_index do |num, e|
    print God.trailing_whitespace(i, num, e)
    print God.nav(i, num, e)
    print God.colon(i, num, e)
    print God.comma(i, num, e)
    print God.indent_after(i, num, e)
    print God.empty(i, num, e)
    print God.colon_space(i, num, e)
  end
end
puts "\n"
puts "\n                Atention, #{nicename.on_blue} will test now the same file without errors (goodtest.rb)\n".cyan
puts "\n"
sleep(1.5)

test_dir2 = Dir['../test/goodtest.rb']
test_dir2.each do |i|
  opener = File.open(i)
  opener.each_with_index do |num, e|
    print God.trailing_whitespace(i, num, e)
    print God.nav(i, num, e)
    print God.colon(i, num, e)
    print God.comma(i, num, e)
    print God.indent_after(i, num, e)
    print God.empty(i, num, e)
    print God.colon_space(i, num, e)
  end
end