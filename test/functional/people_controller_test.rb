require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post :create, :person => {:first => "Mary", :last => "Trowles" }
    end

    assert_redirected_to person_path(assigns(:person))
  end

  test "should not create person with no first and last name" do
    assert_no_difference('Person.count') do
      post :create, :person => { }
    end
  end

  test "should get edit" do
    get :edit, :id => people(:valid_present).to_param
    assert_response :success
  end

  test "should update person" do
    put :update, :id => people(:valid_present).to_param, :person => { }
    assert_redirected_to people_path
  end

  test "should fail to update person with no first or last name" do
    put :update, :id => people(:valid_present).to_param, :person => { :first => "" }
    p = Person.find(people(:valid_present).to_param)
    assert_not_equal("", p.first)
    assert_template 'people/edit'
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete :destroy, :id => people(:valid_present).to_param
    end

    assert_redirected_to people_path
  end
end
