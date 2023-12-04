require "test_helper"

class UserTest < ActiveSupport::TestCase
  
  setup do
    @user = User.create(email: 'test@test.com', password: 'password')
  end

  test 'user can create an account with credentials' do
    assert @user.valid?
  end

  test 'user can log in to access the account and link own tasks' do
    sign_in @user
  end
end
