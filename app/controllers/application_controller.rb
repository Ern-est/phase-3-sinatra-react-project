# Add your routes here

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/" do
    { message: "Good luck with your project!" }.to_json
    { message: "If laughter is the best medicine, welcome to the GIFTED HANDS!" }.to_json
  end
  post '/memes' do
    #user creates a meme
    meme = Meme.create(
      title: params[:title],
      your_meme: params[:your_meme],
      meme_id: params[:meme_id]
    )
    meme.to_json
  end
  get '/memes' do
    #user views all the memes they made
    memes = Meme.all
    memes.to_json
  end
  get '/memes/by_user' do
    #see the memes made by a user
  end
  patch '/memes/:id' do
    #update details of the meme
    meme = Meme.find(params[:id])
    meme.update_attributes(
      title: params[:title]
    )
    meme.to_json
  end
  delete '/meme/:id' do
    #remove meme
    memes = Meme.find(params[:id])
    memes.destroy
    { message: "Meme removed!" }.to_json
  end
   # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
    { message: "If laughter is the best medicine, welcome to the GIFTED HANDS!" }.to_json
  end
  post '/memes' do
    #user creates a meme
    meme = Meme.create(
      title: params[:title],
      your_meme: params[:your_meme],
      meme_id: params[:meme_id]
    )
    meme.to_json
  end
  get '/memes' do
    #user views all the memes they made
    memes = Meme.all
    memes.to_json
  end
  get '/memes/by_user' do
    #see the memes made by a user
  end
  patch '/memes/:id' do
    #update details of the meme
    meme = Meme.find(params[:id])
    meme.update_attributes(
      title: params[:title]
    )
    meme.to_json
  end
  delete '/meme/:id' do
    #remove meme
    memes = Meme.find(params[:id])
    memes.destroy
    { message: "Meme removed!" }.to_json
  end
end
