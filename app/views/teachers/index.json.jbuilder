json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :ename, :cname, :dob, :group_id
  json.url teacher_url(teacher, format: :json)
end
