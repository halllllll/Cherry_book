# モジュールを作る
module Geeter
    def hello
        "hello"
    end
end

# モジュールのミックスイン
# logメソッドが重複しているがis-aじゃないので継承すべきではない例
class Product
    def title
        log "titile is called"
        "A great movie"
    end

    private
    
    def log(txt)
        puts "[LOG] #{txt}"
    end
end

class User
    def name
        log "name is called"
        "Alice"
    end

    private 

    def log(txt)
        puts "[LOG] #{txt}"
    end
end

product = Product.new
puts product.title
user = User.new
puts user.name

# 継承はしたくないが共通の処理をもたせるときはmoduleが使える
module Loggable
    public
    def log(text)
        puts "[LOG] #{text}"
    end
end

class Product2
    include Loggable
     
    def title
        log "title is called"
        "A great movie"
    end
end

class User
    include Loggable
    def name
        log "name is called"
        "Alice"
    end
end

product = Product2.new
puts product.title

user = User.new
puts user.name

# includeしたらデフォルトではpublicなので外部からアクセス可能
# アクセスさせたくないときはmodule内部でprivateとかにしてやる
puts product.title

# extendを使うと特異メソッド（クラスメソッド）になる

class Product3
    extend Loggable
    # logはクラスメソッドなのでふつうのインスタンスメソッドからは呼べない
    # これはエラーになる
    # def title1
    #     log "title is called"
    #     "nanika"
    # end
    # logはクラスメソッドなのでクラスメソッドから呼べる
    def self.title2
        log "nemui"
        "tsukareta"
    end
end

p = Product3.new
# puts p.title2 クラスメソッドなのでインスタンスからは呼び出せない、だっけ？
puts Product3.title2
# クラスメソッドなのでProduct3のtitle2クラスメソッドを経由しなくても直接呼び出せる
puts Product3.log "yoyoyoo"