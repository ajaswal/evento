json.array!(@attendances) do |attendance|
  json.extract! attendance, :event_id, :user_id
  json.url attendance_url(attendance, format: :json)
end