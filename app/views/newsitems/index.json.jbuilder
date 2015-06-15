json.array!(@newsitems) do |newsitem|
  json.extract! newsitem, :id, :name, :content
  json.url newsitem_url(newsitem, format: :json)
end
