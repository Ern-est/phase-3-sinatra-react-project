puts "🌱 Seeding spices..."
require 'faker'


# Seed your database here

  Meme.create(
    title: "Laughter", 
    description: "born to laugh", 
    image_url: "https://images.unsplash.com/photo-1645196541858-fa95649e4f4b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8TThqVmJMYlRSd3N8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60", 
    user_id: 1
  )
puts "✅ Done seeding!"
