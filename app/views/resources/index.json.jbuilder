json.array!(@resources) do |resource|
  json.extract! resource, :id, :site, :focus, :url, :user_id
  json.url resource_url(resource, format: :json)
end
