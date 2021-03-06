require_relative '../kakisute/class_experimence/7.4/gate'
require_relative '../kakisute/class_experimence/7.4/ticket'
RSpec.describe Gate do
    subject(:umeda){Gate.new(:umeda)}
    subject(:juso){Gate.new(:juso)}
    subject(:mikuni){Gate.new(:mikuni)}

    # subject(:ticket){Ticket.new(150)}
    describe 'check neither can create correct object' do
        let(:ticket){Ticket.new(150)}       
        it 'should be created' do
            umeda.enter(ticket)
            expect(juso.exit(ticket)).to be true
        end
    end

    context 'from umeda to mikuni when fare is not enough' do
        let(:ticket){Ticket.new(150)}
        it 'can\'t exit'  do
            umeda.enter(ticket)
            expect(mikuni.exit(ticket)).not_to be true
        end
    end

    context 'from umeda to mikuni when fare is ENOUGH' do
        let(:ticket){Ticket.new(190)}
        it 'can exit' do
            umeda.enter(ticket)
            expect(mikuni.exit(ticket)).to be true
        end
    end

    context 'from juso to mikuni when fare of 150' do
        let(:ticket){Ticket.new(150)}
        it 'can exit' do
            juso.enter(ticket)
            expect(mikuni.exit(ticket)).to be true
        end
    end
end