json.array!(@items) do |item|
  json.extract! item, :id, :producto_id, :carrito_id
  json.url item_url(item, format: :json)
end
