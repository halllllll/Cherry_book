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

# begin ~ rescueで包まれている箇所から包まれていない箇所で発生したエラーの場合
# 包まれている箇所までさかのぼってくれる
# エラーが発生したところ以降の処理はされず、発生した時点でさかのぼる
def method_1
    puts "method_1 start"
    begin
        method_2
    rescue
        puts "どっかで例外が発生した"
    end
    puts "method_1 end"
end

def method_2
    puts "method_2 start"
    method_3
    puts "method_2 end"
end

def method_3
    puts "method_3 start"
    3/0
    puts "method_3 end"
end

method_1