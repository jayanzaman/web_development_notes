require 'test_helper'

class AppjayansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appjayan = appjayans(:one)
  end

  test "should get index" do
    get appjayans_url
    assert_response :success
  end

  test "should get new" do
    get new_appjayan_url
    assert_response :success
  end

  test "should create appjayan" do
    assert_difference('Appjayan.count') do
      post appjayans_url, params: { appjayan: { game: @appjayan.game, score: @appjayan.score } }
    end

    assert_redirected_to appjayan_url(Appjayan.last)
  end

  test "should show appjayan" do
    get appjayan_url(@appjayan)
    assert_response :success
  end

  test "should get edit" do
    get edit_appjayan_url(@appjayan)
    assert_response :success
  end

  test "should update appjayan" do
    patch appjayan_url(@appjayan), params: { appjayan: { game: @appjayan.game, score: @appjayan.score } }
    assert_redirected_to appjayan_url(@appjayan)
  end

  test "should destroy appjayan" do
    assert_difference('Appjayan.count', -1) do
      delete appjayan_url(@appjayan)
    end

    assert_redirected_to appjayans_url
  end
end
