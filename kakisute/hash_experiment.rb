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