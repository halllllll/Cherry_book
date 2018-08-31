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

# class medhodはデフォルトではprivateキーワード下でもprivateにはならない
class User
    private
    def self.yo
        "yo"
    end
end

# 本来ならレシーバー付きでは呼び出せないはずのprivate methodが、'self'付き(class method)だとよびだせてしまう
puts User.yo # -> yo

# class methodをprivate methodにする方法1: class << self 構文
class User
    class << self
        # この場合でもいちいちprivateって書かなきゃいけないのクソ
        # ネストが深くなるのもクソ
        # （個人の意見です）
        private
        # selfは必要ないけど
        def yo
            'yoyoyo'
        end
    end
end

# puts User.yo # -> NoMethodError （個人的にはrubyのエラーってわかりにくすぎる≒不親切と思う ）

# class methodをprivate methodにする方法2: private_class_methodキーワード
# class methodの定義後に後悔レベルをprivate class methodに変更

class User
    def self.yo
        'yo'
    end
    # 定義後に変更
    # private_class_method :yo # -> NoMethodError
end
puts User.yo

# private/publicキーワードは実際はメソッドなので引数としてメソッドのシンボルを渡せる。書き方が簡略化されるしキーワード以下のすべてのメンバに効果が及ぶこともない

class User
    # public
    def foo
        'foo'
    end

    # public
    def bar
        'bar'
    end

    # change to private method
    private :foo, :bar

    # public
    def baz
        'baz'
    end
end

user = User.new
# puts user.foo -> NoMethodError
# puts user.bar -> NoMethodError
puts user.baz

# 7.7.7 protected method
class User
    attr_reader :name
    
    def initialize(name, weight)
        @name = name
        @weight = weight
    end

    def heavier_than?(other_user)
        other_user.weight < @weight
    end

    # protected method
    # protected以下は同じクラス・サブクラスから呼び出せる
    protected
    def weight
        @weight
    end
end

alice = User.new('Alice', 55)
# puts someone.name
# puts someone.weight # -> NoMethodError
bob = User.new('Bob', 69)

puts alice.heavier_than?(bob)

# クラスの外からの呼び出しはできない
# puts alice.weight   # -> NoMethodError

# 単純なgetter methodを実装するならば、最初に一旦attr_readerしておいて、あとからprotectedをかけるのがシンプル

class User
    # いったん呼び出せるようにしておく
    attr_reader :name, :weight
    # あとからprotectする
    protected :weight
    
    def initialize(name, weight)
        @name = name
        @weight = weight
    end

    def heavier_than?(other_user)
        other_user.weight < @weight
    end
end

calen = User.new('Calen', 100)
devola = User.new('Devola', 80)

puts calen.heavier_than?(devola)