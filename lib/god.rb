require 'io/console'
require 'colorize'

class God
  def self.trailing_whitespace(num, pos)
    "line:#{pos + 1}  Remove trailing white space" if num.match(/\s{2,}\Z/)
  end
end
