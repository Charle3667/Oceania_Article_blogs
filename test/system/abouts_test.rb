require "application_system_test_case"

class AboutsTest < ApplicationSystemTestCase
  setup do
    @about = abouts(:one)
  end

  test "visiting the index" do
    visit abouts_url
    assert_selector "h1", text: "Abouts"
  end

  test "should create about" do
    visit abouts_url
    click_on "New about"

    fill_in "First name", with: @about.first_name
    fill_in "Last name", with: @about.last_name
    fill_in "Profession", with: @about.profession
    fill_in "Summary", with: @about.summary
    click_on "Create About"

    assert_text "About was successfully created"
    click_on "Back"
  end

  test "should update About" do
    visit about_url(@about)
    click_on "Edit this about", match: :first

    fill_in "First name", with: @about.first_name
    fill_in "Last name", with: @about.last_name
    fill_in "Profession", with: @about.profession
    fill_in "Summary", with: @about.summary
    click_on "Update About"

    assert_text "About was successfully updated"
    click_on "Back"
  end

  test "should destroy About" do
    visit about_url(@about)
    click_on "Destroy this about", match: :first

    assert_text "About was successfully destroyed"
  end
end
