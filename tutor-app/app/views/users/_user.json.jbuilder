json.extract! user, :id, :provider, :uid, :name, :nickname, :image, :email, :created_at, :updated_at
json.url user_url(user, format: :json)