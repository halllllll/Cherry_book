# 書籍、なにいってんのかよく理解できん
def greeting_ja(&block)
    texts = ["おは", "んちゃ", "sm"]
    greeting_common(texts, &block)
end

def greeting_en(&block)
    texts = ["morning", "hello", "evening"]
    greeting_common(texts, &block)
end

# common
def greeting_common(texts, &block)
    # puts texts[0]
    # なんでここでわざわざブロックを呼ぶの？
    # puts block.call(texts[1])
    # puts texts[2]
    # これでも同じじゃん
    puts block.call(texts[0])
    puts block.call(texts[1])
    puts block.call(texts[2])
end

# ja
greeting_ja do |word|
    word
end

# en
greeting_en do |word|
    word.upcase
end