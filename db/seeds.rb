puts "Creating database please wait..."

13.times do | i |
    User.create(username: "user_#{i +1}", phone_number:  Faker::Number.number(digits: 10), email: Faker::Internet.email, password: "Abzedar#{i+1}", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, avatar: Faker::Avatar.image())    
end

puts "Done!"