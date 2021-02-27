require 'io/console'
require 'colorize'

class God
  def self.trailing_whitespace(name, num, pos)
    if num.match(/\s{2,}\Z/)
      "#{name}:#{pos + 1} : 1) Please remove trailing white space\n".red
    else
      "#{name}:#{pos + 1} : 1) The linter for trailing white space has been passed\n".green
    end
  end

  def self.nav(name, num, pos)
    if num.match(/\ &.|&.\ /)
      "#{name}:#{pos + 1} : 2) Please  Avoid using spaces around a method call operator\n".red
    else
      "#{name}:#{pos + 1} : 2) The linter for spaces around a method call operators has been passed\n".green
    end
  end

  def self.colon(name, num, pos)
    if num.match(/;$\Z/)
      "#{name}:#{pos + 1} : 3) Please remove semicolon\n".red
    else
      "#{name}:#{pos + 1} : 3) The linter for unnecesary semicolons has been passed \n".green
    end
  end

  def self.comma(name, num, pos)
    case num
    when /,\s/
        "#{name}:#{pos + 1} : 4) The linter for space after comma has been passed \n".green

    when /,/
        "#{name}:#{pos + 1} : 4) Please add space after comma\n".red
    end
  end

  def self.indent_after(name, num, pos)
    if num.match(/^(\s){2}/) && num.match(/^(\s){3,}/)
      "#{name}:#{pos + 1} : 5) Please use 2 spaces for indentation.\n".red
    else
      "#{name}:#{pos + 1} : 5) The linter for 2 spaces only indentation has been passed\n".green
    end
  end

  def self.empty(name, num, pos)
    if num.match(/\{\n*\}/) && num.match(/\{*\}/)
      "#{name}:#{pos + 1} : 6) Please add content to the block\n".red

    else
      "#{name}:#{pos + 1} : 6) The linter for empty block has been passed\n".green

    end
  end

  def self.colon_space(name, num, pos)
    case num
    when /:\s/
      "#{name}:#{pos + 1} : 7) The linter for space after colon has been passed \n".green

    when /:/
      "#{name}:#{pos + 1} : 7) Please add space after colon\n".red
    end
  end
end
