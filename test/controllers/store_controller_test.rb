require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select 'h3',     'MyString'
    assert_select '.price', /\$[\d,]+\.\d{2}/
  end

end
