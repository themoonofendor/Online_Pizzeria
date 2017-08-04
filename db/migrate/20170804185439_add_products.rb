class AddProducts < ActiveRecord::Migration[5.1]
  def change

  	Product.create ({
  		:title => 'Hawaiian',
  		:description => 'This is Hawaiian pizza',
  		:price => 15,
  		:size => 14,
  		:is_spicy => false,
  		:is_vegetarian => false,
  		:is_best_offer => false,
  		:path_to_image => '/images/Hawaiian.jpg'
  		})

  	Product.create ({
  		:title => 'Pepperoni',
  		:description => 'Pepperoni pizza',
  		:price => 10,
  		:size => 14,
  		:is_spicy => false,
  		:is_vegetarian => false,
  		:is_best_offer => true,
  		:path_to_image => '/images/Pepperoni.jpg'
  		})

  	Product.create ({
  		:title => 'Vegetarian',
  		:description => 'Amazing Vegetarian pizza',
  		:price => 18,
  		:size => 14,
  		:is_spicy => false,
  		:is_vegetarian => false,
  		:is_best_offer => false,
  		:path_to_image => '/images/Vegetarian.jpg'
  		})
  end
end
