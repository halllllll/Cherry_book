# rubyではhashのkeyはシンボルがよく使われる
# keyを文字列にした場合
dict = {'japan'=>'jp', 'americak'=>'us', 'china'=>'cn'}
p dict
# シンボルにした場合
dict = {'japan':'jp', 'amerika':'us', 'china':'cn'}
p dict

# hash展開
new_dict = {'rusia':'ru', 'brazil':'br', **dict}
p new_dict

# hash merge
p new_dict.merge({'france':'fr', 'germany':'de'})

# hash default value (immutable)
h = Hash.new('flyaway')
a = h[:foo]
b = h[:bar]
p a, b
a.upcase!
p a, b
c = h[:gee]
p a, b, c
# hash default value (mutable)
h = Hash.new{"flyawaynow"}
a = h[:foo]
b = h[:bar]
a.upcase!
c = h[:gee]
p a, b, c
# but hash object h is nothing
p h
# hash init return default value
h = Hash.new{|hash, key|hash[key]='flyawaynowyeah'}
a = h[:foo]
b = h[:bar]
a.upcase!
c = h[:gee]
p a, b, c, h