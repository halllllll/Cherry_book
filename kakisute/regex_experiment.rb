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