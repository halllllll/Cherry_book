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