user = User.create(email:"lindaojinnaka@gmail.com", password: "password")

for i in 0..10
dog = user.dogs.create(
    name:Faker::Creature::Dog.name
    description:Faker::Lorem.paragraph,
    age:Faker::Number.number(digits: 1),
    potty_trained:true,
    likes_dogs:true,
    likes_children:true,
    state:Faker::Address.state,
    city:Faker::Address.city,
)

end