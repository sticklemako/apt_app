json.array!(@entries) do |entry|
  json.extract! entry, :id, :entry_type, :chq_no, :receipt_no, :value, :is_debit, :title, :details, :date_of
  json.url entry_url(entry, format: :json)
end
