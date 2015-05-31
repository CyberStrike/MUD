json.array!(@stages) do |stage|
  json.extract! stage, :id, :description, :brief, :north_id, :south_id, :east_id, :west_id
  json.url stage_url(stage, format: :json)
end
