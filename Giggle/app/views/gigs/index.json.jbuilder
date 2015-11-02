json.array!(@gigs) do |gig|
  json.extract! gig, :id, :name, :price, :photo_url, :start_time
  json.url gig_url(gig, format: :json)
end
