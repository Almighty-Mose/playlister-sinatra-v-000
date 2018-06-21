require 'pry'
class SongController < ApplicationController

  get '/songs' do
    @song = Song.all

    erb :'songs/index'
  end

  get '/songs/new' do
    erb :'songs/new'
  end

  post '/songs' do
    @song = Song.create(params)
    redirect "/songs/:slug"
  end

  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    #binding.pry
    erb :'songs/show'
  end
end
