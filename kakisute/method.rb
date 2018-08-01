# rubyでは最後に評価された式を戻り値として返すのでreturnとか要らんし戻り値の型情報を定義する必要もない

def add(a, b)
    a+b
end

puts add(10, 3)