class Comment < ActiveRecord::Base
  validates :text, :presence => true
  validates :author, :presence => true

  belongs_to :product
end
