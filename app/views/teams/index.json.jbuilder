json.array!(@teams) do |team|
  json.extract! team, :id, :name, :mascot, :colors, :fight_song
  json.url team_url(team, format: :json)
end
