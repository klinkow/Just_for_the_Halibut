require 'rails_helper'

describe Product do
  it { should validate_presence_of :name }
end

describe Product do
  it { should validate_presence_of :description }
end

describe Product do
  it { should validate_presence_of :price }
end

describe Product do
  it 'should have admin privaledges' do
    user = FactoryGirl.create(:user)
    user.admin?.should eq true
  end
end
