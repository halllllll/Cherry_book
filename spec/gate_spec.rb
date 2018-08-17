require_relative '../kakisute/class_experimence/7.4/gate'
RSpec.describe Gate do
    subject(:gate){Gate.new}
    it 'should be created' do
        puts gate.class
    end
end