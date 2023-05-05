require "application_system_test_case"

class SeriesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit series_url

    assert_selector "h1", text: "NORMAL"
    save_screenshot
  end
end
