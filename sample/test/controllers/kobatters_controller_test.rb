require 'test_helper'

class KobattersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kobatters_index_url
    assert_response :success
  end

end
