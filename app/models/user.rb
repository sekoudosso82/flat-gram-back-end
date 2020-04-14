class User < ApplicationRecord
    has_secure_password 
    validates :userName, uniqueness: { case_sensitive: false }
    validates :password, length: { in: 3..20 }
    # validates :userName, uniqueness: true

    has_many :posts, dependent: :destroy
        
   

    has_many :likes, dependent: :destroy
    has_many :post_likes, through: :likes, class_name: "Post"

    has_many :comments, dependent: :destroy
    has_many :post_comments, through: :comments, class_name: "Post"

    
    # validates :password, :email, presence: true
end
