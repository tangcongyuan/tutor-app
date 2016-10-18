json.partial! "users/user", user: @user
json.received_reviews @user.received_reviews
json.posted_reviews @user.posted_reviews