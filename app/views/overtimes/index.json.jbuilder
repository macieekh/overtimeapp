json.array!(@overtimes) do |overtime|
  json.extract! overtime, :id, :start_time, :end_time, :description
  json.url overtime_url(overtime, format: :json)
end
