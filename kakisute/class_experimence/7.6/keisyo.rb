# 継承
class Product
    attr_reader :name, :price
    def initialize(name, price)
        @name = name
        @price = price
    end
end

product = Product.new('movie', 1000)

class DVD < Product
    attr_reader :running_time
    def initialize(name, price, running_time)
        @name = name
        @price = price
        @running_time = running_time
    end
end

dvd = DVD.new('A movie', 1000, 214)
puts dvd.name, dvd.price, dvd.running_time