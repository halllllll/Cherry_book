# initializeメソッド以外はデフォルトでpublic
# class User
#     def yo
#         'yo'
#     end
# end

# privateキーワード以降はclass内部からしか呼べない
# user.yoを呼び出すと失敗する
class User
    private # これ
    def yo
        'yo'
    end
end

user = User.new
puts user.yo