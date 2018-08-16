class User
    def initialize(name)
        @name = name
    end

    # class method
    def self.create_users(names)
        names.map do |name|
            name = User.new(name)
        end
    end

    # instance method
    def hello
        "I am #{@name}"
    end
end

names = ['モカ', '蘭', '麻弥', '友希那']

# call class method
users = User.create_users(names)
# call instance method
users.each do |user|
    puts user.hello
end
