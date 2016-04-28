json.array!(@records) do |record|
  json.extract! record, :id, :record_type_id, :qt, :user_id
  json.url record_url(record, format: :json)
end
