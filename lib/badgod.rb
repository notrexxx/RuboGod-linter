require 'io/console'
require 'colorize'

class Badgod
  def self.trailing_whitespace(name, num, pos)
    "#{name}:#{pos + 1} : 1) Please remove trailing white space\n".red if num.match(/\s{2,}\Z/)
  end

  def self.nav(name, num, pos)
    "#{name}:#{pos + 1} : 2) Please  Avoid using spaces around a method call operator\n".red if num.match(/\ &.|&.\ /)
  end

  def self.colon(name, num, pos)
    "#{name}:#{pos + 1} : 3) Please remove semicolon\n".red if num.match(/;$\Z/) || num.match(/;\s\Z/)
  end

  def self.comma(name, num, pos)
    case num

    when /,/
      "#{name}:#{pos + 1} : 4) Please add space after comma\n".red
    end
  end

  def self.indent_after(name, num, pos)
    return unless num.match(/^(\s){2}/) && num.match(/^(\s){3,}/)

    "#{name}:#{pos + 1} : 5) Please use 2 spaces for indentation.\n".red
  end

  def self.empty(name, num, pos)
    "#{name}:#{pos + 1} : 6) Please add content to the block\n".red if num.match(/\{\n*\}/) && num.match(/\{*\}/)
  end

  def self.colon_space(name, num, pos)
    case num

    when /:/
      "#{name}:#{pos + 1} : 7) Please add space after colon\n".red
    end
  end
end
