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
# 文字列->文字の配列
moji = ("K".."j")
p moji.to_a.join.chars

# Array.newで配列の初期化
# 初期値は指定しないとnil
arr = Array.new(5)
p arr
# ブロックに渡るのは添字、戻り値は要素
arr3 = Array.new(3){|idx|idx.to_s}
p arr3
# 初期値を設定してもミュータブルオブジェクトは同一のオブジェクトを参照する
arr2 = Array.new(5, 'yo')
p arr2
s = arr2[2]
s.upcase!
p arr2
# ブロックで初期値を渡せばブロックが呼ばれるたびに初期化されるので要素はそれぞれ別のオブジェクトになる
arr4 = Array.new(5){|idx| 'yo'}
s = arr4[2]
s.upcase!
p arr4
# 数値はイミュータブル（破壊的な変更が適用できる意味で）なので↑の限りではない
arr5 = Array.new(5, 0)
p arr5
a = arr5[3]
a = 10
p arr5

# 添字付きで取得
fruites = ['apple', 'banana', 'melon']
indexed_fruites = fruites.map.with_index{|v, idx| "#{idx}: #{v}"}
p indexed_fruites

# 多重配列はブロックに渡すとき要素ぶんの引数を与えればそれぞれに割り当てられる

dimension = [
    [10, 20],
    [30, 40],
    [50, 60],
]

dimension.map{|x, y|
    p "#{x}*#{y}=#{x*y}"
}

# Numeric::step
a = []
1.step(10, 2){|n|
    a<<n
}
p a