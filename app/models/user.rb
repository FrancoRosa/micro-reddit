class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  email_validor = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :username, length: { in: 4..12 }
  validates :password, length: { in: 6..16 }
  validates :email,
            format: {
              with: email_validor,
              message: 'this is not a valid email'
            }
end
