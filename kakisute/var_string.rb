# 特殊文字を使うときはダブルクォート
puts "FINALFANT\nASY"
# シングルクォートだと単に文字列として評価される
puts 'FINALFANT\nASY'
# 式展開もダブルクォートのみ
name = 'ruby'
puts "hello, #{name}"