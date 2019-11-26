require "application_system_test_case"

class FilesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit files_url

    assert_selector 'li', count: 1
    assert_selector "h1", text: "Files"
  end
end
