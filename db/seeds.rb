puts "🌱 Seeding spices..."

# Seed your database here
u1 = User.create(username: "Ernest", password: "ern")
u2 = User.create(username: "cheruiyot", password: "che")

jokes = [
  {
    id: 1,
    setup: "Why did the chicken cross the road?",
    punchline: "To get to the other side!",
    image_url: "https://example.com/chicken.jpg"
  },
  {
    id: 2,
    setup: "What do you get when you cross a snowman and a vampire?",
    punchline: "Frostbite!",
    image_url: "https://example.com/snowman.jpg"
  },
  # Add more jokes here
]


puts "✅ Done seeding!"
