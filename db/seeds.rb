puts "🌱 Seeding spices..."


# Seed your database here
require 'open-uri'


# Seed Posts
Meme.create(
  title: 'The Latest Tech Trends',
  description: "Laugh",
  image_url: 'https://images.unsplash.com/photo-1551094024-7a1a2f2c8217?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  user_id: 1, 
)

Meme.create(
  title: 'The Best Soccer Players in the World',
  description: "fun",
  image_url: 'https://images.unsplash.com/photo-1593720218705-5a7b5c5e5ecf?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  user_id: 2,
)
Meme.create(
  title: 'The Best Soccer Players in the World',
  description: "fun",
  image_url: 'https://images.unsplash.com/photo-1593720218705-5a7b5c5e5ecf?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  user_id: 2,
)
Meme.create(
  title: 'The Best Soccer Players in the World',
  description: "fun",
  image_url: 'https://images.unsplash.com/photo-1593720218705-5a7b5c5e5ecf?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  user_id: 2,

)
Meme.create(
  title: 'The Best Soccer Players in the World',
  description: "fun",
  image_url: 'https://images.unsplash.com/photo-1593720218705-5a7b5c5e5ecf?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  user_id: 2,

)
Meme.create(
  title: 'The Best Soccer Players in the World',
  description: "fun",
  image_url: 'https://images.unsplash.com/photo-1593720218705-5a7b5c5e5ecf?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
  user_id: 2,
)
puts "✅ Done seeding!"
