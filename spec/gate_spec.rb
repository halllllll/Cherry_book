require_relative '../kakisute/class_experimence/7.4/gate'
require_relative '../kakisute/class_experimence/7.4/ticket'
RSpec.describe Gate do
    subject(:umeda){Gate.new(:umeda)}
    subject(:juso){Gate.new(:juso)}
    subject(:mikuni){Gate.new(:mikuni)}

    subject(:ticket){Ticket.new(150)}
    it 'should be created' do
        umeda.enter(ticket)
        expect(juso.exit(ticket)).to be true
    end

    context 'from umeda to mikuni when fare is not enough' do
        it 'can\'t exit'  do
            umeda.enter(ticket)
            expect(mikuni.exit(ticket)).not_to be true
        end
    end
end