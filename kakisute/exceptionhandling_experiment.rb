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
        # raise "woooooooooooooooooooooo"
    end
end

puts currency(:japan)
puts currency(:doutch)

# ensure
# 例外の有無にかかわらず必ず実行
# べつにrescureと一緒に使う必要はない

file = File.open("kakisute/some.txt", 'w')

begin
    file << "Hello"
    1 / 0
rescue => e
    # 例外が発生するのでここでは捕まえます
ensure
    file.close
end

# まあ↑のやり方はブロックでかけるけど
File.open("some.txt", "w") do |file|
    file << "abababababababababa"
    # 1 / 0 例外発生するけどちゃんとクローズする
end

# else
# 「例外が発生しなかった場合に実行」
# begin, rescue, else, ensureはこの順に書く（ensureは省略できる）
# まあbeginで書けばいいんじゃが

# 戻り値
# 例外が発生しなかった場合はbegin節の最後で評価されたやつ
# 発生した場合はrescue節の最後で評価されたやつ

# 正常終了
ret = 
begin
    "OK"
rescue => exception
    "error"
ensure
    "END"
end

puts ret

# 異常終了
# 返り値なのでメソッドの返り値にも使える
def wowow
    begin
        1 / 0
        "OK"
    rescue => exception
        "fuck"
    ensure
        "nothing"
    end
end

puts wowow

# 修飾子としてのrescue
# 処理 rescue 例外処理
1 / 0 rescue puts "hoge"