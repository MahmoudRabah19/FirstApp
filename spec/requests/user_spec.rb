require 'rails_helper'

RSpec.describe "add to user", type: :system do

  before do
    driven_by(:rack_test)
  end

  it "enables me to create users" do
    visit "/en/users/new"

    fill_in "Email", :with => "Test@example.com"
    fill_in "Username", :with => "Testy"
    fill_in "Password", :with => "123456Test"
    fill_in "Password Confirmation", :with => "123456Test"
    click_button "New User"

    expect(page).to have_text("User was successfully created.")
  end
end
