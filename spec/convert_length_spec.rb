require 'convert_length'
RSpec.describe '尺貫法ですよね' do
    example 'convert_length' do
        expect(convert_length(1, :m, :in)).to eq 39.37
        expect(convert_length(15, :in, :m)).to eq 0.38
        expect(convert_length(35000, :ft, :m)).to eq 10670.73
    end
end