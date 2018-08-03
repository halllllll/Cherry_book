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