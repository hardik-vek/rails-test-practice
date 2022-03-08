require "rails_helper"

RSpec.describe Article, type: :model do
  before do
    @article = Article.new(title: "abc", description: "abcd")
  end

  it "should be valid with valid attributes" do
    @article.title = nil
    expect(@article).to_not be_valid
  end

  it "factory bot" do
    article = FactoryBot.create(:article)
    expect(article).to be_valid
    puts article.title
    puts article.description
  end

  it "is not valid title" do
    article = Article.new(title: nil)
    expect(article).to_not be_valid
  end

  it "is not valid description" do
    article = Article.new(title: "hello",description: nil)
    expect(article).to_not be_valid
  end

end
