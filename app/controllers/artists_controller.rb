class ArtistController < ApplicationController

  get '/artists' do
    @artist = Artist.all
    erb :'/artists/index'
  end
end
