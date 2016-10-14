class Review < ApplicationRecord
    belongs_to :reviewer, class_name: "User"
    belongs_to :reviewee, class_name: "User"
    validates :reviewer_id, presence: true
    validates :reviewee_id, presence: true
end
