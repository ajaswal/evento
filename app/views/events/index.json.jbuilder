json.array!(@events) do |event|
  json.extract! event, :name, :fees, :event_date
  json.url event_url(event, format: :json)
end