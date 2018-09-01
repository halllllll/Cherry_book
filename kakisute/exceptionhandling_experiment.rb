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
    rescue NoMethodError
        # NoMethodErrorが発生したときのみ
        puts "NME!! NME!!"
    rescue ZeroDivisionError
        # ZeroDivisionErrorが発生したときのみ
        puts "ZDE!! ZDE!!"
    rescue => exception
        # puts "どっかで例外が発生した"
        # exceptionは例外オブジェクト
        puts "class: #{exception.class}"
        puts exception.message
        # puts exception.backtrace
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

# retry
# 例外が発生したらやり直す
count = 3
begin
    puts "#{count}"
    count/0
rescue => exception
    puts exception.message
    puts "やり直すわ" 
    count-=1
    if count > 0
        retry
    end
end

# raise
# 意図的に例外を発生させる
def currency(country)
    case country
    when :japan
        "yen"
    when :us
        "dollar"
    when :india
        "rupee"
    else
        raise "woooooooooooooooooooooo"
    end
end

puts currency(:japan)
puts currency(:doutch)