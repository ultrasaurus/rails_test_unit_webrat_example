require 'test_helper'

class PeopleTest < ActionController::IntegrationTest
  fixtures :all

  # Replace this with your real tests.
  test "edit a person" do
    visit home_path
    click_link "Mei Hong"
    fill_in "First Name", :with => "Betty"
    click_button "Update"
    assert_contain "Betty Hong"
  end
end
