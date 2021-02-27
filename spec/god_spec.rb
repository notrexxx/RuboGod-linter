require_relative '../lib/god'


      describe '.trailing_whitespace' do
        it 'return trailing whitespace error' do
          var = "\e[0;31;49m./test/badtest.rb :1 : 1) Please remove trailing white space\n\e[0m"
          dir = './test/badtest.rb '
          file = File.open(dir)
          file.each_with_index do |num, i|
            expect(God.trailing_whitespace(dir, num, i)).to eql(var) if i == 0
          end
        end

        it "return trailing whitespace passed" do
            var = "\e[0;32;49m./test/goodtest.rb:1 : 1) The linter for trailing white space has been passed\n\e[0m"
            dir = './test/goodtest.rb'
            file = File.open(dir)
            file.each_with_index do |num, i|
              expect(God.trailing_whitespace(dir, num, i)).to eql(var) if i == 0
            end
          end

    end


    describe '.nav' do
        it "return spaces around a method call operator error" do
          var = "\e[0;31;49m./test/badtest.rb :3 : 2) Please  Avoid using spaces around a method call operator\n\e[0m"
          dir = './test/badtest.rb '
          file = File.open(dir)
          file.each_with_index do |num, i|
            expect(God.nav(dir, num, i)).to eql(var) if i == 2
          end
        end

        it "return spaces around a method call operator passed" do
            var = "\e[0;32;49m./test/goodtest.rb:3 : 2) The linter for spaces around a method call operators has been passed\n\e[0m"
            dir = './test/goodtest.rb'
            file = File.open(dir)
            file.each_with_index do |pos, i|
              expect(God.nav(dir, pos, i)).to eql(var) if i == 2
            end
          end

    end