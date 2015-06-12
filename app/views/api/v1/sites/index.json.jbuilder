json.array!(@api_v1_sites) do |api_v1_site|
  json.extract! api_v1_site, :id, :url
  json.url api_v1_site_url(api_v1_site, format: :json)
end
