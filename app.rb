require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'


configure :development do
	set :database, {adapter: 'postgresql',  encoding: 'unicode', database: 'onlinepizzeria.db', pool: 2, username: 'onlinepizzeria', password: 'password1'}
end

class Product < ActiveRecord::Base
end

get '/' do
	@products = Product.all
	erb :index
end

get '/about' do
	erb :about
end