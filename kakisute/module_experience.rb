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
    def log(text)
        puts "[LOG] #{text}"
    end
end

class Product
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

product = Product.new
puts product.title

user = User.new
puts user.name

