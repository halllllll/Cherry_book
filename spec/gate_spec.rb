require_relative '../kakisute/class_experimence/7.4/gate'
require_relative '../kakisute/class_experimence/7.4/ticket'
RSpec.describe Gate do
    subject(:umeda){Gate.new(:umeda)}
    subject(:juso){Gate.new(:juso)}
    
    subject(:ticket){Ticket.new(150)}
    it 'should be created' do
        umeda.enter(ticket)
        expect(juso.exit(ticket)).to be_true
    end
end