json.array!(@oders) do |event|
  json.extract! event, :id, :title, :body
  json.start event.delivery_data
  json.end event.delivery_data
  json.url event_url(event, format: :html)
end

# json.array!(@oders) do |event|
#   json.extract! event, :id, :title, :body
#   json.start event.start_date
#   json.end event.end_date
#   json.url event_url(event, format: :html)
# end