class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable
  include DeviseTokenAuth::Concerns::User
  
  has_many :posted_reviews, class_name: "Review", foreign_key: "reviewer_id"
  has_many :received_reviews, class_name: "Review", foreign_key: "reviewee_id"
  has_many :reviewed, through: :posted_reviews, source: :reviewee # A user has many reviewees(renamed to reviewed)
  has_many :reviewed_by, through: :received_reviews, source: :reviewer
end
