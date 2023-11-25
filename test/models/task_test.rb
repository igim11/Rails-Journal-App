require "test_helper"

class TaskTest < ActiveSupport::TestCase
  
  test "should not save task without description" do
    task = Task.new
    task.description = 'Finish project'
    assert_not task.save, 'saved the task without a description'
  end
end
