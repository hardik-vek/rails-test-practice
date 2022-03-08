require "rails_helper"

RSpec.describe ArticlesController, type: :controller do
  it "renders the index templete" do
    get :index
    expect(response).to render_template("index")
  end
  it "renders the index templete" do
    post :new
    expect(response).to render_template("new")
  end
  it "should create user" do
    expect do
      post :create, :params => { :article => { title: "bbb", description: "cccc" } }
    end.to change(Article, :count)
  end
end
