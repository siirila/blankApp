json.array!(@api_v1_comments) do |api_v1_comment|
  json.extract! api_v1_comment, :id, :user, :site_id, :type, :memo, :alternatives
  json.url api_v1_comment_url(api_v1_comment, format: :json)
end
