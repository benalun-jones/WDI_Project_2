json.array!(@locations) do |location|
  json.extract! location, :id, :streetAddress, :postcodeAddress
  json.url location_url(location, format: :json)
end
