puts "Populating database with cuteness. Please wait..."

# 13.times do | i |
#     User.create(username: "user_#{i +1}", phone_number:  Faker::Number.number(digits: 10), email: Faker::Internet.email, password: "Abzedar#{i+1}", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, avatar: Faker::Avatar.image())    
# end

# 3.times do | i |
#     Admin.create(username: "admin_#{i +1}", email: Faker::Internet.email, password: "Abzedar#{i+1}", avatar: Faker::Avatar.image(), is_admin: true)    
# end

3.times do | i |
    Meal.create(title: Faker::Food.dish, price: 100 * i, description: Faker::Food.description, image: Faker::Avatar.image(), admin_id: i)    
end

puts "Done!"