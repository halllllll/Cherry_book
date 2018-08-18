# initializeメソッド以外はデフォルトでpublic
# class User
#     def yo
#         'yo'
#     end
# end

# privateキーワード以降はclass内部からしか呼べない
class User
    private # これ
    def yo
        'yo'
    end
end

user = User.new
puts user.yo