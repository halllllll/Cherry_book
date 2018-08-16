# rubyでは最後に評価された式を戻り値として返すのでreturnとか要らんし戻り値の型情報を定義する必要もない

def greeting(country)
    return 'please check country name' if country.nil?
    if country=='japan'
        'んちゃ'
    elsif country=='us'
        'hello'
    elsif country=='italy'
        'ciao'
    else
        '???'
    end
end

puts greeting('')
puts greeting(nil)
puts greeting('italy')