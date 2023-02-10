puts "Populating database with cuteness. Please wait..."

3.times do | i |
    User.create(username: "user_#{i +1}", email: Faker::Internet.email, password: "Abzedar#{i+1}", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)    
end

2.times do | i |
    Admin.create(username: "admin_#{i + 1}", email: Faker::Internet.email, password: "Abzedar#{i+1}")    
end

Calendar.create(day: "2023-02-10")
Calendar.create(day: "2023-02-11")

2.times do | i |
    Meal.create(title: Faker::Food.dish, price: 100 * i, description: Faker::Food.description, image: Faker::Avatar.image(), admin_id: 1, calendar_id: 1)    
end

2.times do | i |
    Meal.create(title: Faker::Food.dish, price: 100 * i, description: Faker::Food.description, image: Faker::Avatar.image(), admin_id: 2, calendar_id: 2)    
end



puts "Done!"