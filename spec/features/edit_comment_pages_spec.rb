require 'rails_helper'

def login
  user = FactoryGirl.create(:user)
  visit root_path
  click_link 'Log In'
  fill_in 'Email', with: 'nobody@somewhere.com'
  click_button 'Log in'
end

describe "the edit a product process" do
  it "adds a new comment and edits it" do
    product = FactoryGirl.create(:product)
    login
    visit products_path
    click_link 'Swordfish'
    click_link 'Add Comment'
    fill_in 'Text', :with => 'It is very tasty'
    fill_in 'Author', :with => 'Some Guy'
    click_on 'Submit'
    click_on 'Edit'
    fill_in 'Text', :with => 'Es muy bueno'
    click_on 'Submit'
    expect(page).to have_content 'Es muy bueno'
  end
end
