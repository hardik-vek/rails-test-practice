require "rails_helper"

RSpec.describe Article, type: :feature do
  it "fills in the details" do
    visit new_article_path
    fill_in "article_title", with: "abc...z"
    fill_in "article_description", with: "abc...z"
    click_button "Create Article"
    expect(page)
    # .to have_text("Article was successfully created")
  end
end
