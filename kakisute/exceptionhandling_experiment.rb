# 例外処理
# モジュールからインスタンスを作ろうとする(作れないのでNoMethodErrorとなる)
puts "Start"
module Greeter
    def hello
        "hello"
    end
end

# これはエラー
# greeter = Greeter.new

# 例外処理に組み込む
begin
    # この節で発生した例外はrescueでキャッチされる
    greeter = Greeter.new
rescue
    puts "例外が発生したよ"
end

puts "End"