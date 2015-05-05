require 'test_helper'

class Api::ListsControllerTest < ActionController::TestCase
  test "should get index" do
    List.create(title: "Food", active: true)
    List.create(title: "School", active: false)

    get :index
    result = JSON.parse(response.body)

    assert_response :success
    assert_equal 2, result["lists"].count
  end

  test "should get a single item" do
    list = List.create(title: "Food", active: true)
    List.create(title: "School", active: false)

    get(:show, {'id' => list.id.to_s })
    result = JSON.parse(response.body)

    assert_response :success
    assert_equal "Food", result["list"]["title"]
  end

  test "should be able to create an item" do
    put(:create, {"list" => {"title"=>"new list", "active"=>true}})
    result = JSON.parse(response.body)

    assert_response :success
    assert_equal "new list", result["list"]["title"]
  end

  test "should be able to destroy an item" do
    list = List.create(title: "Food", active: true)
    id = list.id.to_s

    delete(:destroy, {"id" => id})

    assert_response :success
  end

end
