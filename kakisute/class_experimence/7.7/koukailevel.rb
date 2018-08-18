# initializeメソッド以外はデフォルトでpublic
class User
    def yo
        'yo'
    end
end

user = User.new
puts user.yo