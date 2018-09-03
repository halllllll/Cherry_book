# yield
# メソッドにブロック付きで引数を渡せる
def greeting
    puts "morining"
    yield # ここでブロック付きで渡された引数が入る
    puts "evening"
end

greeting do
    puts "hello" # これが引数で渡される
end
puts "-------------"
greeting do
    puts "hello"    # 引数はいくらでもいい
    puts "hello2"
    puts "hello3"
end
puts "-------------"
# あとyieldの数のぶんだけ繰り返される
def greeting2
    puts "morning 2"
    yield
    yield
    puts "evening 2"
end
greeting2 do
    puts "hello 2"  # yieldのぶんだけ繰り返される
end