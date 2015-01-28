json.array!(@inqueries) do |inquery|
  json.extract! inquery, :id
  json.url inquery_url(inquery, format: :json)
end
