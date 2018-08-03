# ブロック
a = [1, 2, 3, 1, 2, 3]
a.delete_if do |n|
    n.even?
end

print a

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
    sum_value = n.even? ? n*10 : n
    sum+=sum_value
end

puts sum

sum = 0
numbers.each {|n|
    sum+=n
}

puts sum

new_numbers = numbers.map{|n|n*10}
puts new_numbers