require 'test_helper'

class TemplateModelsControllerTest < ActionController::TestCase
  setup do
    @template_model = template_models(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:template_models)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create template_model" do
    assert_difference('TemplateModel.count') do
      post :create, template_model: { text: @template_model.text }
    end

    assert_redirected_to template_model_path(assigns(:template_model))
  end

  test "should show template_model" do
    get :show, id: @template_model
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @template_model
    assert_response :success
  end

  test "should update template_model" do
    patch :update, id: @template_model, template_model: { text: @template_model.text }
    assert_redirected_to template_model_path(assigns(:template_model))
  end

  test "should destroy template_model" do
    assert_difference('TemplateModel.count', -1) do
      delete :destroy, id: @template_model
    end

    assert_redirected_to template_models_path
  end
end
