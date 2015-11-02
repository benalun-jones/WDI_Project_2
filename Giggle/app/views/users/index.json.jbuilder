json.array!(@users) do |user|
  json.extract! user, :id, :firstname, :secondname, :usename, :password, :email
  json.url user_url(user, format: :json)
end
