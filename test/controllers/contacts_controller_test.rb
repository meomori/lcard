require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get feed" do
    get contacts_feed_url
    assert_response :success
  end

  test "should get show_user" do
    get contacts_show_user_url
    assert_response :success
  end

  test "should get now_linked" do
    get contacts_now_linked_url
    assert_response :success
  end

  test "should get unlink" do
    get contacts_unlink_url
    assert_response :success
  end

end
