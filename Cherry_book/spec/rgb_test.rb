# require './lib/to_hex'
require 'rgb'
RSpec.describe 'RGB変換' do
    example 'to_hex' do
        expect(to_hex(0, 0, 0)).to eq '#000000'
        expect(to_hex(255, 255, 255)).to eq '#ffffff'
        expect(to_hex(4, 60, 120)).to eq '#043c78'
    end
    example 'to_ints' do
        expect(to_ints('#000000')).to eq [0, 0, 0]
        expect(to_ints('#ffffff')).to eq [255, 255, 255]
        expect(to_ints('#043c78')).to eq [4, 60, 120]
    end

end