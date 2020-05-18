user = User.create(email:"lindaojinnaka@gmail.com", password: "password", first_name: "Linda", last_name: "Ojinnaka")
puts user.errors.full_messages
for i in 0..10
dog = user.dogs.create(
    name:Faker::Creature::Dog.name,
    title:"Senior dog needs home",
    description:Faker::Lorem.paragraph,
    age:Faker::Number.number(digits: 1),
    potty_trained:true,
    likes_dogs:true,
    likes_children:true,
    state:Faker::Address.state,
    city:Faker::Address.city
)
puts dog.errors.full_messages
end

for i in 0..10
  user = User.create(
    first_name:Faker::Name.first_name,
    last_name:Faker::Name.last_name,
    email:Faker::Internet.email,
    password:Faker::Internet.password
	)
end
