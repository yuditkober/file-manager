require 'test_helper'

class FilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get files_url
    files_from_controller = assigns(:files)
    assert_equal(files_from_controller,
                  [
                      ["lab.txt", 451]
                  ])
    assert_response :success
  end

  test "should get show" do
    get file_url(1)
    assert_response :success
  end
end
