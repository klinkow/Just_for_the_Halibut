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
