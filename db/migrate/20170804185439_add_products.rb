class AddProducts < ActiveRecord::Migration
  def change

  	Product.create ({
  		:title => 'Hawaiian',
  		:description => 'This is Hawaiian pizza',
  		:price => 15,
  		:size => 14,
  		:is_spicy => false,
  		:is_vegetarian => false,
  		:is_best_offer => false,
  		:path_to_image => '/images/hawaiian.jpg'
  		})

  	Product.create ({
  		:title => 'Pepperoni',
  		:description => 'Pepperoni pizza',
  		:price => 10,
  		:size => 14,
  		:is_spicy => false,
  		:is_vegetarian => false,
  		:is_best_offer => true,
  		:path_to_image => '/images/pepperoni.jpg'
  		})

  	Product.create ({
  		:title => 'Vegetarian',
  		:description => 'Amazing Vegetarian pizza',
  		:price => 18,
  		:size => 14,
  		:is_spicy => false,
  		:is_vegetarian => false,
  		:is_best_offer => false,
  		:path_to_image => '/images/vegetarian.jpg'
  		})
  end
end
