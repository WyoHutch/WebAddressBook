require "test_helper"

class TblAddrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tbl_addr = tbl_addrs(:one)
  end

  test "should get index" do
    get tbl_addrs_url
    assert_response :success
  end

  test "should get new" do
    get new_tbl_addr_url
    assert_response :success
  end

  test "should create tbl_addr" do
    assert_difference('TblAddr.count') do
      post tbl_addrs_url, params: { tbl_addr: { city: @tbl_addr.city, email: @tbl_addr.email, first_name: @tbl_addr.first_name, last_name: @tbl_addr.last_name, phone: @tbl_addr.phone, state: @tbl_addr.state, zip: @tbl_addr.zip } }
    end

    assert_redirected_to tbl_addr_url(TblAddr.last)
  end

  test "should show tbl_addr" do
    get tbl_addr_url(@tbl_addr)
    assert_response :success
  end

  test "should get edit" do
    get edit_tbl_addr_url(@tbl_addr)
    assert_response :success
  end

  test "should update tbl_addr" do
    patch tbl_addr_url(@tbl_addr), params: { tbl_addr: { city: @tbl_addr.city, email: @tbl_addr.email, first_name: @tbl_addr.first_name, last_name: @tbl_addr.last_name, phone: @tbl_addr.phone, state: @tbl_addr.state, zip: @tbl_addr.zip } }
    assert_redirected_to tbl_addr_url(@tbl_addr)
  end

  test "should destroy tbl_addr" do
    assert_difference('TblAddr.count', -1) do
      delete tbl_addr_url(@tbl_addr)
    end

    assert_redirected_to tbl_addrs_url
  end
end
