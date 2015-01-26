json.array!(@students) do |student|
  json.extract! student, :id, :ename, :cname, :dob, :group_id
  json.url student_url(student, format: :json)
end
