class User < ApplicationRecord
    # has_secure_password 

    has_many :posts, dependent: :destroy
        
   

    has_many :likes, dependent: :destroy
    has_many :post_likes, through: :likes, class_name: "Post"

    has_many :comments, dependent: :destroy
    has_many :post_comments, through: :comments, class_name: "Post"

    validates :userName, uniqueness: true
    validates :userName, uniqueness: { case_sensitive: false }
    
    validates :password, :email, presence: true
end
