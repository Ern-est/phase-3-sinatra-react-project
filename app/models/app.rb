require 'sinatra'
require 'sinatra/activerecord'
require 'bcrypt'
require 'rack/cors'
require 'json'

require_relative './user.rb'
require_relative './meme.rb'

use Rack::Session::Cookie, :key => 'rack.session',
                           :path => '/',
                           :secret => 'your_secret'

configure do
  enable :cross_origin
end

set :allow_origin, "http://localhost:3000"
set :allow_methods, "GET,HEAD,POST,PUT,DELETE,OPTIONS"
set :allow_headers, "content-type,if-modified-since"
set :expose_headers, "location,link"

options "*" do
  response.headers["Allow"] = "HEAD,GET,PUT,POST,DELETE,OPTIONS"
  response.headers["Access-Control-Allow-Headers"] = "X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept"
  200
end

enable :sessions

before do
  content_type :json
end

# Models

class User < ActiveRecord::Base
  has_secure_password
  validates :username, presence: true, uniqueness: true
end

class Meme < ActiveRecord::Base
  belongs_to :user
  validates :image_url, presence: true
end

# Routes

get '/' do
  { message: 'Welcome to the Meme Generator API' }.to_json
end

post '/login' do
  user = User.find_by(username: params[:username])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    { success: true, message: "Logged in successfully" }.to_json
  else
    { success: false, message: "Invalid username or password" }.to_json
  end
end

post '/logout' do
  session.clear
  { success: true, message: "Logged out successfully" }.to_json
end

post '/register' do
  user = User.new(username: params[:username], password: params[:password])
  if user.save
    session[:user_id] = user.id
    { success: true, message: "Registered and logged in successfully" }.to_json
  else
    { success: false, message: user.errors.full_messages.join(', ') }.to_json
  end
end

get '/memes' do
  memes = Meme.all.order(created_at: :desc)
  memes.to_json(include: { user: { only: :username } })
end

post '/memes' do
  user = User.find_by(id: session[:user_id])
  if user
    meme = Meme.new(user: user, image_url: params[:image_url], top_text: params[:top_text], bottom_text: params[:bottom_text])
    if meme.save
      meme.to_json(include: { user: { only: :username } })
    else
      { success: false, message: meme.errors.full_messages.join(', ') }.to_json
    end
  else
    { success: false, message: "You must be logged in to create a meme" }.to_json
  end
end