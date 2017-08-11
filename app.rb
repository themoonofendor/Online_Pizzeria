require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {adapter: 'postgresql',  encoding: 'unicode', database: 'onlinepizzeria'}

class Product < ActiveRecord::Base
end

class Order < ActiveRecord::Base
end

get '/' do
	@products = Product.all
	erb :index
end

get '/about' do
	erb :about
end

post '/place_order' do
   @order = Order.create params[:order]
   erb :order_placed
 end

post '/cart' do

	# getting the list of parameters parse them

  @orders_input = params[:orders_input]
  @items = parse_orders_input @orders_input

  # output message that cart is empty
 
   if @items.length == 0
     return erb :cart_is_empty
   end
 
   # output list of items in the cart

  @items.each do |item|
    # id, cnt
    item[0] = Product.find(item[0])
  end
  # return default
	erb :cart
 end

 def parse_orders_input orders_input
   s1 = orders_input.split(/,/)
 
   arr = []
 
   s1.each do |x|
     s2 = x.split(/\=/)
 
     s3 = s2[0].split(/_/)
 
     id = s3[1]
     cnt = s2[1]
 
     arr2 = [id, cnt]
 
     arr.push arr2
   end
 
   return arr
end