# constant var name is ALL BIG CHARACTER
class Product
    DEFAULT_VALUE = 0
    attr_reader :name, :value

    def initialize(name, value = DEFAULT_VALUE)
        @name = name
        @value = value
    end
end

products = []
products << Product.new('something free')
products << Product.new('something charge', 298223726583475437)

products.each do |product|
    puts "#{product.name}: #{product.value}"
end
