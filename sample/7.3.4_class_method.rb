class User
    def initialize(name)
        @name = name
    end

    # selfをつけたらクラスメソッド
    def self.create_users(names)
        names.map do |name|
            User.new(name)
        end
    end

    # これはインスタンスメソッド
    def hello
        "Hello, I am #{@name}"
    end
end

names = ['Alice', 'Bob', 'Carol']
users = User.create_users(names)
users.each do |user|
    puts user.hello
end
