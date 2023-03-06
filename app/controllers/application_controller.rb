require 'sinatra'
require 'sinatra/activerecord'
require 'json'
require 'bcrypt'
require 'rack/cors'

use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: :any
  end
end

set :database, 'sqlite3:db.sqlite3'

class Meme < ActiveRecord::Base
  validates :title, :image_url, presence: true
end

Meme.destroy_all

10.times do
  Meme.create(
    title: Faker::Hipster.sentence(word_count: 2),
    image_url: Faker::Placeholdit.image(size: '300x300', format: 'jpg')
  )
end