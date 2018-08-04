# first contact
text = <<TEXT
I love Ruby.
Pyhon is a great lunguage.
Java and Javascript are different.
TEXT
puts text.scan(/[A-Z][A-Za-z]+/)