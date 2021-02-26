require 'io/console'
require 'colorize'

class God
    
    def self.trailing_whitespace (dir, num)

        "#{dir} line:#{num}" " 'Remove trailing white space'\n".red if line.end_with?(' ', "\t")
    
    end
      
end
