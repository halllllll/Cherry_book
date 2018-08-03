# require './lib/to_hex'
require 'rgb'
RSpec.describe 'RGB変換' do
    example 'to_hex' do
        expect(to_hex(0, 0, 0)).to eq '#000000'
        expect(to_hex(255, 255, 255)).to eq '#ffffff'
    end
end