# ブロック
a = [1, 2, 3, 1, 2, 3]
a.delete_if do |n|
    n.even?
end

p a

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
    sum_value = n.even? ? n*10 : n
    sum+=sum_value
end

p sum

sum = 0
numbers.each {|n|
    sum+=n
}

p sum

new_numbers = numbers.map{|n|n*10}
p new_numbers

even_numbers = numbers.select{|n|n.even?}
p even_numbers

sum = numbers.inject(0){|result, n|result+n}
p sum

week = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'].inject('Sun'){|result, n| result+n}

p week

language = ['ruby', 'perl', 'python'].map(&:upcase)
p language

strings = [1, 2, 3, 4].map(&:to_s)
p strings

a = [1, 2, 3, 4, 5]
p a[3..6]

def liquid?(temperture)
    # 0<=temperture && temperture<100
    (0...100).include?(temperture)
end

p liquid?(-1)
p liquid?(0)
p liquid?(99)
p liquid?(100)

range2array = (1..5).to_a
range2strarray = ('a'..'k').to_a
p range2array
p range2strarray

numbers = []
(1..10).step(2){|n|numbers<<n}
p numbers

require 'set'

a = Set.new([1, 2, 3])
b = Set.new([3, 4, 5])
p (a | b)
p a-b

e, *f = 100, 200, 300
p e, f

# Variable-length arrays in method
# わりとかなり寛容。列挙でも配列でもいい
def greeting(*names)
    "#{names.join(", ")}, hello!! welcome!"
end
p greeting("tanaka")
p greeting(["tanaka", "suzuki"])
p greeting("yamaha", "honda", "kawasaki", "suzuki")

# 文字列の配列の%記法
p %w!same mesuraion mesugorira rame mesu..!