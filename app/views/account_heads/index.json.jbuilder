json.array!(@account_heads) do |account_head|
  json.extract! account_head, :id, :name, :desc
  json.url account_head_url(account_head, format: :json)
end
