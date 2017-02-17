require 'rails_helper'

describe Comment do
  it { should validate_presence_of :text }
end

describe Comment do
  it { should validate_presence_of :author }
end
