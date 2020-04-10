class Post < ApplicationRecord
  belongs_to :user
  
  has_many :likes, dependent: :destroy
  has_many :user_likes, through: :likes, class_name: "User"

  has_many :comments, dependent: :destroy  
  has_many :user_comments, through: :comments, class_name: "User"
end
