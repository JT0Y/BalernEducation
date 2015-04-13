json.array!(@homeworks) do |homework|
  json.extract! homework, :id, :group_id, :title, :, :due, :instructions
  json.url homework_url(homework, format: :json)
end
