require_relative '../kakisute/class_experimence/7.4/gate'
# require '/Users/hal/Documents/workspace/cherry_book/Cherry_book/kakisute/class_experimence/7.4/gate.rb'
RSpec.describe Gate do
    subject(:gate){Gate.new}
    it 'should be created' do
        puts gate.class
    end
end