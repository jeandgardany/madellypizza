require 'test_helper'

class PhotoUploadsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get photo_uploads_new_url
    assert_response :success
  end

end
