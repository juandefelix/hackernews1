class User < ActiveRecord::Base
  validates :username, uniqueness: true
  has_many :posts
  has_many :comments
end
