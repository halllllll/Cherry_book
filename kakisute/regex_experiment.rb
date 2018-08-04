# first contact
text = <<TEXT
I love Ruby.
Pyhon is a great lunguage.
Java and Javascript are different.
TEXT
puts text.scan(/[A-Z][A-Za-z]+/)

regex = /\d{3}-\d{4}/
puts regex.class

# if matches...
s = '123-11, 238382, 242-5893あばば 503-241-395 yoyo 翼を与えよ111-9999 9822 fd938'
puts s=~regex

# capture if matches
str = "今日は2018年8月4日です"
regex = /(\d+)年(\d+)月(\d+)日/
p regex.match(str)  # matchdata object
p str.match(regex)  # regex and string class both has match method
puts str.scan(regex)

# access by meta char
regex = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/
mtch = regex.match(str)
puts mtch[:year], mtch[:day], mtch['day'], mtch[0] # also string and index

# []/sliceで取得
puts str[/(\d+)年(\d+)月(\d+)日/, 1]
# メタ文字で名前を付けていたならそれで指定しても取得できる
puts str.slice(/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, :month)

# 置換 gsub
text = '123_45_7-999::3928.2224.232'
# 一致する文字列をそのまま置換（配列で複数渡すことはできない）
puts text.gsub('_', '-')
# 文字列を正規表現で指定
puts text.gsub(/[_:.]/, '-')
# hashによる置換ルール
h = {':'=>' ', '.'=>','}
puts text.gsub(/[_:.]/, h)