require "application_system_test_case"

class TblAddrsTest < ApplicationSystemTestCase
  setup do
    @tbl_addr = tbl_addrs(:one)
  end

  test "visiting the index" do
    visit tbl_addrs_url
    assert_selector "h1", text: "Tbl Addrs"
  end

  test "creating a Tbl addr" do
    visit tbl_addrs_url
    click_on "New Tbl Addr"

    fill_in "City", with: @tbl_addr.city
    fill_in "Email", with: @tbl_addr.email
    fill_in "First name", with: @tbl_addr.first_name
    fill_in "Last name", with: @tbl_addr.last_name
    fill_in "Phone", with: @tbl_addr.phone
    fill_in "State", with: @tbl_addr.state
    fill_in "Zip", with: @tbl_addr.zip
    click_on "Create Tbl addr"

    assert_text "Tbl addr was successfully created"
    click_on "Back"
  end

  test "updating a Tbl addr" do
    visit tbl_addrs_url
    click_on "Edit", match: :first

    fill_in "City", with: @tbl_addr.city
    fill_in "Email", with: @tbl_addr.email
    fill_in "First name", with: @tbl_addr.first_name
    fill_in "Last name", with: @tbl_addr.last_name
    fill_in "Phone", with: @tbl_addr.phone
    fill_in "State", with: @tbl_addr.state
    fill_in "Zip", with: @tbl_addr.zip
    click_on "Update Tbl addr"

    assert_text "Tbl addr was successfully updated"
    click_on "Back"
  end

  test "destroying a Tbl addr" do
    visit tbl_addrs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tbl addr was successfully destroyed"
  end
end
