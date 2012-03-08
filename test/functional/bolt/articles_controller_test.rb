require 'test_helper'

class Bolt::ArticlesControllerTest < ActionController::TestCase
  setup do
    @bolt_article = bolt_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bolt_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bolt_article" do
    assert_difference('Bolt::Article.count') do
      post :create, bolt_article: @bolt_article.attributes
    end

    assert_redirected_to bolt_article_path(assigns(:bolt_article))
  end

  test "should show bolt_article" do
    get :show, id: @bolt_article.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bolt_article.to_param
    assert_response :success
  end

  test "should update bolt_article" do
    put :update, id: @bolt_article.to_param, bolt_article: @bolt_article.attributes
    assert_redirected_to bolt_article_path(assigns(:bolt_article))
  end

  test "should destroy bolt_article" do
    assert_difference('Bolt::Article.count', -1) do
      delete :destroy, id: @bolt_article.to_param
    end

    assert_redirected_to bolt_articles_path
  end
end
