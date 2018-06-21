class GenreController < ApplicationController

  get '/genres' do
    @genre = Genre.all
    erb :'/genres/index'
  end
end
