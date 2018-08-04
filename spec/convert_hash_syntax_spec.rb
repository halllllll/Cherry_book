require 'convert_hash_syntax'
RSpec.describe 'hashの記法が気になるのでシンボル使ったやつに強制的に変える' do
    example 'やる' do
        expect(convert_hash_syntax('{}')).to eq '{}'
    end
end