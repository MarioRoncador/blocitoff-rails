include Faker

# Create Users
5.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
  )
end
User.create!(
  email: "m@m.com",
  password: "111111",
)
users = User.all

# Create Items
50.times do
  Item.create!(
    name: Faker::Lorem.sentence,
    user:  users.sample,
  )
end
items = Item.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
