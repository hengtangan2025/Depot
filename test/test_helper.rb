ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :products

  test "product is not valid without a unique title - i18n" do  
   product = Product.new(title:       products(:ruby).title,  
                         description: "yyy",   
                         price:       1,   
                         image_url:   "fred.gif")  
  
   assert !product.save  
   assert_equal ["has already been taken"], product.errors[:title]  
  end  

  # Add more helper methods to be used by all tests here...
end
