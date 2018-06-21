class SongController < ApplicationController

  get '/songs' do
    @song = Song.all

    erb :'/songs/index'
  end

  get '/songs/new' do
    erb :'/songs/new'
  end

  get '/songs/:slug' do
    erb :'/songs/show'
  end
end
