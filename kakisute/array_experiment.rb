# ブロック
a = [1, 2, 3, 1, 2, 3]
a.delete_if do |n|
    n.even?
end

print a