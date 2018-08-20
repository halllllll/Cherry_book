# initializeメソッド以外はデフォルトでpublic
# class User
#     def yo
#         'yo'
#     end
# end

# privateキーワード以降はclass内部からしか呼べない
# user.yoを呼び出すと失敗する
class User
    private # これ
    def yo
        'yo'
    end
end

user = User.new
# puts user.yo これはエラー（NoMethodError）になる。

# rubyのprivateメソッド = 【レシーバを指定できない】（超重要）
# つまりはサブクラスからはふつうに呼び出せる、したがってrubyのprivateメソッドはオーバーライド可能
class Product
    def to_s
        "name: #{name}"
    end

    private 
    # private付きだが、サブクラスでオーバーライド可能
    # なので常にこれが呼び出されるとは限らない
    def name
        'default'
    end
end

class DVD < Product
    private
    # over rideする
    def name
        'super ultra fuckin awesome sugoi movie'
    end
end

product = Product.new
# デフォルト
puts product.to_s

dvd = DVD.new
# サブクラスによってover rideされたスーパークラスのprivate methodになる
puts dvd.to_s

