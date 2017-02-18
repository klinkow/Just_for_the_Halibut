require 'rails_helper'

describe "the add a comment process" do
  it "adds a new product and a comment" do
    product = FactoryGirl.create(:product)
    visit products_path
    click_link 'Swordfish'
    click_link 'Add Comment'
    fill_in 'Text', :with => 'It is very tasty'
    fill_in 'Author', :with => 'Some Guy'
    click_on 'Submit'
    expect(page).to have_content 'It is very tasty'
  end
end
