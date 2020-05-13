class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  
  validates :body, presence: true, length: { in: 5..150 }
end
