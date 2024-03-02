require "test_helper"

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do

    # Verify index view is returned and successful response
    get store_index_url


    # verify that the
    # response contains our layout,
    # our product information,
    # and our number formatting

    assert_response :success
    assert_select 'nav a', minimum: 4
    assert_select 'main ul li', 3
    assert_select 'h2', 'Programming Ruby 1.9'
    assert_select 'div', /\$[,\d]+\.\d\d/
  end
end
