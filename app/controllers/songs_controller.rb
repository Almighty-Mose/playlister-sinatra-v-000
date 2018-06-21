require 'pry'
class SongController < ApplicationController

  get '/songs' do
    @song = Song.all

    erb :'songs/index'
  end

  get '/songs/new' do
    erb :'songs/new'
  end

  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    @genre = Genre.find_by_id(@song.song_genres.)
    binding.pry
    erb :'songs/show'
  end
end
