# first contact
class User
    attr_reader :first_name, :last_name, :team
    
    def initialize(first_name, last_name, team)
        @first_name = first_name
        @last_name = last_name
        @team = team
    end

    def selfExplanatory
        "fullname: #{last_name} #{first_name}, belong with #{team}"
    end
end

users = []
users << User.new('こころ', '弦巻', 'ハロハピ')
users << User.new('モカ', '青葉', 'Aftergrow')

users.each do |user|
    puts user.selfExplanatory
end
