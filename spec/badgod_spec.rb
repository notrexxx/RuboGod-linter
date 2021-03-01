require_relative '../lib/badgod'

describe '.trailing_whitespace' do
  context 'When a trailing whitespace is detected' do
    it 'return trailing whitespace error' do
      var = "\e[0;31;49m./test/badtest.rb:1 : 1) Please remove trailing white space\n\e[0m"
      dir = './test/badtest.rb'
      file = File.open(dir)
      file.each_with_index do |num, i|
        expect(Badgod.trailing_whitespace(dir, num, i)).to eql(var) if i == 0
      end
    end
  end
end

describe '.nav' do
  context 'When spaces around a method call are detected' do
    it 'return spaces around a method call operator error' do
      var = "\e[0;31;49m./test/badtest.rb:3 : 2) Please  Avoid using spaces around a method call operator\n\e[0m"
      dir = './test/badtest.rb'
      file = File.open(dir)
      file.each_with_index do |num, i|
        expect(Badgod.nav(dir, num, i)).to eql(var) if i == 2
      end
    end
  end
end

describe '.colon' do
  context 'When unnecesary semicolons are detected' do
    it 'return linter for unnecesary semicolons error' do
      var = "\e[0;31;49m./test/badtest.rb:2 : 3) Please remove semicolon\n\e[0m"
      dir = './test/badtest.rb'
      file = File.open(dir)
      file.each_with_index do |num, i|
        expect(Badgod.colon(dir, num, i)).to eql(var) if i == 1
      end
    end
  end
end

describe '.comma' do
  context 'When a space after comma is detected' do
    it 'return linter for space after comma error' do
      var = "\e[0;31;49m./test/badtest.rb:5 : 4) Please add space after comma\n\e[0m"
      dir = './test/badtest.rb'
      file = File.open(dir)
      file.each_with_index do |num, i|
        expect(Badgod.comma(dir, num, i)).to eql(var) if i == 4
      end
    end
  end
end

describe '.indent_after' do
  context 'When a bad indentation is detected' do
    it 'return linter for 2 spaces only indentation error' do
      var = "\e[0;31;49m./test/badtest.rb:4 : 5) Please use 2 spaces for indentation.\n\e[0m"
      dir = './test/badtest.rb'
      file = File.open(dir)
      file.each_with_index do |num, i|
        expect(Badgod.indent_after(dir, num, i)).to eql(var) if i == 3
      end
    end
  end
end

describe '.empty' do
  context 'When a empty block is detected' do
    it 'return linter for empty block error' do
      var = "\e[0;31;49m./test/badtest.rb:5 : 6) Please add content to the block\n\e[0m"
      dir = './test/badtest.rb'
      file = File.open(dir)
      file.each_with_index do |num, i|
        expect(Badgod.empty(dir, num, i)).to eql(var) if i == 4
      end
    end
  end
end

describe '.colon_space' do
  context 'When a space after colon is detected' do
    it 'return linter for space after colon error' do
      var = "\e[0;31;49m./test/badtest.rb:4 : 7) Please add space after colon\n\e[0m"
      dir = './test/badtest.rb'
      file = File.open(dir)
      file.each_with_index do |num, i|
        expect(Badgod.colon_space(dir, num, i)).to eql(var) if i == 3
      end
    end
  end
end
