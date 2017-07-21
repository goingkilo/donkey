json.extract! gift_record, :id, :name, :when, :gift, :notes, :created_at, :updated_at
json.url gift_record_url(gift_record, format: :json)
