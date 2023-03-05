class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  # Add your routes here
  get "/" do
    { message: "If laughter is the best medicine, welcome to the GIFTED HANDS!" }.to_json
    # binding.pry
  end
  post '/memes' do
    #user creates a meme
    meme = Meme.create(
      title: params[:title],
      your_meme: params[:your_meme],
      meme_id: params[:meme_id]
    )
    binding.pry
    meme.to_json
  end
  get "/all-memes" do
    #user views all the memes they made
    memes = Meme.all
    memes.to_json
  end
  get "/my-memes" do
    #see the memes made by a usermeme7 = Meme.create(title: "", your_meme: "")
# meme8 = Meme.create(title: "", your_meme: "")
  end
  patch "/edit/:id" do
    #update details of the meme
    meme = Meme.find(params[:id])
    meme.update_attributes(
      title: params[:title]
    )
    meme.to_json
  end
  delete "/delete/:id" do
    #remove meme
    memes = Meme.find(params[:id])
    memes.destroy
    { message: "Meme removed!" }.to_json
  end
end