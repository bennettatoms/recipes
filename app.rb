require 'sinatra'
require_relative './model/recipe_book'

get '/' do  
  erb :home
end

get '/about' do

  erb :about
end

get '/recipes' do
  @search = params[:search]
  if @search && @search.length > 0
    @recipes = RecipeBook.search(@search)
  else
    @recipes = RecipeBook.all
  end
  erb :recipes
end

get '/recipes/:id' do
  @recipe = RecipeBook.find(params[:id].to_i)
  erb :recipe
end