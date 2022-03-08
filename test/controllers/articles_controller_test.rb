require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @article = Article.new(title: "abc", description: "abcd")
  end

  test "should get index" do
    get articles_url
    assert_response :success
  end

  # test "should get show" do
  #   get articles_show_path
  #   assert_response :success
  # end

  test "should get new" do
    get new_article_url
    assert_response :success
  end

  # test "should get edit" do
  #   get edit_article_path
  #   assert_response :success
  # end

  test "should create article" do
    assert_difference("Article.count") do
      post articles_path, params: { article: { title: @article.title, description: @article.description } }
    end
    assert_redirected_to article_path(Article.last)
  end

  test "Should update article" do
    patch article_url(Article.last), params: { article: { title: "updated" } }
  end
end
