json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :start, :lead, :ta, :note
  json.url appointment_url(appointment, format: :json)
end
