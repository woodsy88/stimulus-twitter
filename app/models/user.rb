class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Will return an ARRAY OF FOLLOWS for the given user instance, where there user_id appears in the followed_user column of the Follows table         
  has_many :received_follows, foreign_key: :followed_user_id, class_name: :Follow

  # Will return an ARRAY OF USERS who follow the user instance
  has_many :followers, through: :received_follows, source: :follower

  # ===================================
 # returns an ARRAY OF FOLLOWS where the instance of the user appears in the follower_id column
  has_many :given_follows, foreign_key: :follower_id, class_name: "Follow"
 
  # returns an ARRAY OF other USERS who the user has followed
  has_many :followings, through: :given_follows, source: :followed_user_id

def full_name
  self.first_name + " " + self.last_name
end
end
