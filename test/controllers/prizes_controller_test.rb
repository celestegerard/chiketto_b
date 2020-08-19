require 'test_helper'

class PrizesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get prizes_index_url
    assert_response :success
  end

end
