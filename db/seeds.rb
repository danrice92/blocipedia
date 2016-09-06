require 'random_data'

5.times do 
    user= User.new(
        email: RandomData.random_email,
        password: "password",
        role: "standard"
        )
    user.save!
end

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