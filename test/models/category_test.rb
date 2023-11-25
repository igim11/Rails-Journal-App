require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  
  test "should not save category without title" do
    category = Category.new
    category.details = 'details'
    assert_not category.save, 'saved the category without a title'
  end

end
