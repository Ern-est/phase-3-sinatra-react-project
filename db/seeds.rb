puts "🌱 Seeding spices..."

# Seed your database here
u1 = User.create(username: "Ernest", password: "ern")
u2 = User.create(username: "cheruiyot", password: "che")

meme1 = Meme.create(user_id: 1, title: "first joke",description:"shit's bout to go down")
meme2 = Meme.create(user_id: 1, title: "second joke",description:"Alaa!")
meme3 = Meme.create(user_id: 2, title: "third joke",description:"wollan!")

puts "✅ Done seeding!"
