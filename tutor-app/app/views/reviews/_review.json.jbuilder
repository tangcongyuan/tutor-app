json.extract! review, :id, :rating, :comment, :created_at, :updated_at, :reviewer_id, :reviewee_id
json.url review_url(review, format: :json)