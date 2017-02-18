require 'rails_helper'

def login
  user = FactoryGirl.create(:user)
  visit root_path
  click_link 'Log In'
  fill_in 'Email', with: 'nobody@somewhere.com'
  click_button 'Log in'
end

describe "the edit a product process" do
  it "adds and edits new product" do
    login
    visit products_path
    click_link 'Add new product'
    fill_in 'Name', :with => 'Octopus'
    fill_in 'Description', :with => 'Eight legs of tasty.'
    fill_in 'Price', :with => '4.99'
    click_on 'submit'
    click_on 'Octopus'
    click_on 'Edit Product'
    fill_in 'Name', :with => 'Squid'
    click_on 'submit'
    expect(page).to have_content 'Squid'


  end


end
