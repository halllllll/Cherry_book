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

# yield付きのメソッドにブロックで渡さないとエラー
# greeting2 -> no block given (yield)

puts "-------------"

# block_given?
# メッソド内で使う 引数がブロックで渡されたかどうか
def greeting3
    if block_given?
        puts "given block arg"
        yield
    else
        puts "not given block arg"
    end
end

greeting3
greeting3 do
    puts "yoyoyyoyooyoooiamblockkkkkkk"
end

puts "-------------"
# 読んでもいまいち意味が掴みかねる文章だったyieldの書き方
def greeting4
    puts "morning4"
    text = yield "hello4", "fuck"
    puts text
    puts "evening4"
end

greeting4 do |t, f|
    t + f
end
