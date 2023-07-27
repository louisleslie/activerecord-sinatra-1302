require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/restaurants/:id" do
  p params
  p params[:id]
  @restaurant = Restaurant.find(params[:id])
  p @restaurant
  erb :show
end
