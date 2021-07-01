require 'rails_helper'

RSpec.describe "add to post", type: :system do

  before do
    driven_by(:rack_test)
  end

  it "enables me to create posts" do
    visit "/en/posts/new"

    fill_in "Title", :with => "Test"
    fill_in "Description", :with => "System RSpec Test"
    fill_in "Content", :with => "Trying RSpec System Test And It Should Success"
    click_button "New Post"

    expect(page).to have_text("Post was successfully created.")
  end
end
