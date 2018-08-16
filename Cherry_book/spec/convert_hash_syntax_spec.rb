require 'convert_hash_syntax'
RSpec.describe 'hashの記法が気になるのでシンボル使ったやつに強制的に変える' do
    example 'やる' do
        old_syntax = <<~TEXT
        {
        :name => 'Alice',
        :age=>20,
        :gender   => :F
        }
        TEXT
        expected = <<~TEXT
        {   
        name: 'Alice',
        age: 20,
        gender: :F
        }
        TEXT
        actual = convert_hash_syntax(old_syntax)
        # なんかテストは失敗するんだけどevalで強制的にハッシュにしたらちゃんと合ってるっぽい。RSpec厳しい。
        puts eval("#{actual}")==eval("#{expected}")
        expect(convert_hash_syntax(old_syntax)).to eq expected

    end
end