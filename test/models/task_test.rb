require "test_helper"

class TaskTest < ActiveSupport::TestCase
  
  test "should not save task without category ID" do
    task = Task.new
    task.description = 'Finish project'
    assert_not task.save, 'saved the task without a category ID'
  end

  test "should not save task without a description" do
    task = Task.new
    task.category_id = 1
    assert_not task.save, 'saved the task without a description'
  end
end
