require 'random_data'

5.times do 
    user= User.new(
        email: RandomData.random_email,
        password: "password",
        role: "standard"
        )
    user.skip_confirmation!
    user.save!
end

standard_user = User.new(
    email: "email@email.com",
    password: "password",
    role: "standard"
    )
standard_user.skip_confirmation!
standard_user.save!

premium_user = User.new(
    email: "daniel.k.rice@gmail.com",
    password: "helloworld",
    role: "premium"
    )
premium_user.skip_confirmation!
premium_user.save!

admin_user = User.new(
    email: "dan.rice.92@outlook.com",
    password: "helloworld",
    role: "admin"
    )
admin_user.skip_confirmation!
admin_user.save!

users = User.all

10.times do
    Wiki.create!(
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph,
        private: false,
        user: User.last
        )
end

wikis = Wiki.all

puts "Seed finished"
puts "#{users.count} users created"
puts "#{wikis.count} wikis created"