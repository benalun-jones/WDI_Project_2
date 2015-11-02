json.array!(@gigs) do |gig|
  json.extract! gig, :id, :name, :price, :photoUrl, :startTime
  json.url gig_url(gig, format: :json)
end
