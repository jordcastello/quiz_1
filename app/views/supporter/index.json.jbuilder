json.array!(@users) do |user|
  json.extract! user, :id, :name, :request, :login
  json.url user_url(user, format: :json)
end
