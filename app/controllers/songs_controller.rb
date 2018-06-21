class SongController < ApplicationController

  get '/songs' do
    @song = Song.all
    erb :'/songs/index'
  end

end
