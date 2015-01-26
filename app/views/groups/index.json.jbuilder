json.array!(@groups) do |group|
  json.extract! group, :id, :class_id, :rake, :db
  json.url group_url(group, format: :json)
end
