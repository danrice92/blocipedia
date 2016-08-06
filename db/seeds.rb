require 'random_data'

5.times do
    User.create!(
        email: RandomData.random_email,
        password: "Arandompassword123",
        standard: true,
        premium: false,
        admin: false
        )
end

3.times do
    User.create!(
        email: RandomData.random_email,
        password: "Arandompremiumpassword123",
        standard: false,
        premium: true,
        admin: false
        )
end

2.times do
    User.create!(
        email: RandomData.random_email,
        password: "Arandomadminemail123",
        standard: false,
        premium: false,
        admin: true
        )
end

users = User.all

100.times do
    Wiki.create!(
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph,
        private: false
        )
end

wikis = Wiki.all

puts "Seed finished"
puts "#{users.count} users created"
puts "#{wikis.count} wikis created"