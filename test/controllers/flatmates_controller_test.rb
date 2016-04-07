require 'test_helper'

class FlatmatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flatmate = flatmates(:one)
  end

  test "should get index" do
    get flatmates_url
    assert_response :success
  end

  test "should get new" do
    get new_flatmate_url
    assert_response :success
  end

  test "should create flatmate" do
    assert_difference('Flatmate.count') do
      post flatmates_url, params: { flatmate: { ariiving: @flatmate.ariiving, charges: @flatmate.charges, duties: @flatmate.duties, firstname: @flatmate.firstname, image: @flatmate.image, lastname: @flatmate.lastname, leaving_out: @flatmate.leaving_out } }
    end

    assert_redirected_to flatmate_path(Flatmate.last)
  end

  test "should show flatmate" do
    get flatmate_url(@flatmate)
    assert_response :success
  end

  test "should get edit" do
    get edit_flatmate_url(@flatmate)
    assert_response :success
  end

  test "should update flatmate" do
    patch flatmate_url(@flatmate), params: { flatmate: { ariiving: @flatmate.ariiving, charges: @flatmate.charges, duties: @flatmate.duties, firstname: @flatmate.firstname, image: @flatmate.image, lastname: @flatmate.lastname, leaving_out: @flatmate.leaving_out } }
    assert_redirected_to flatmate_path(@flatmate)
  end

  test "should destroy flatmate" do
    assert_difference('Flatmate.count', -1) do
      delete flatmate_url(@flatmate)
    end

    assert_redirected_to flatmates_path
  end
end
