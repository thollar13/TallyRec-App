json.array!(@game_events) do |game_event|
  json.extract! game_event, :id, :title, :start_date, :end_date, :location
  json.url game_event_url(game_event, format: :json)
end
