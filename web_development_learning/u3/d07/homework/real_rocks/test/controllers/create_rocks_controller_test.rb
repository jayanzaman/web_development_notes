require 'test_helper'

class CreateRocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_rock = create_rocks(:one)
  end

  test "should get index" do
    get create_rocks_url
    assert_response :success
  end

  test "should get new" do
    get new_create_rock_url
    assert_response :success
  end

  test "should create create_rock" do
    assert_difference('CreateRock.count') do
      post create_rocks_url, params: { create_rock: { description: @create_rock.description, image: @create_rock.image, name: @create_rock.name } }
    end

    assert_redirected_to create_rock_url(CreateRock.last)
  end

  test "should show create_rock" do
    get create_rock_url(@create_rock)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_rock_url(@create_rock)
    assert_response :success
  end

  test "should update create_rock" do
    patch create_rock_url(@create_rock), params: { create_rock: { description: @create_rock.description, image: @create_rock.image, name: @create_rock.name } }
    assert_redirected_to create_rock_url(@create_rock)
  end

  test "should destroy create_rock" do
    assert_difference('CreateRock.count', -1) do
      delete create_rock_url(@create_rock)
    end

    assert_redirected_to create_rocks_url
  end
end
