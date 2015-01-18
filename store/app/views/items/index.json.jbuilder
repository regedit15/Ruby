json.array!(@items) do |item|
  json.extract! item, :id, :id_producto, :id_carrito
  json.url item_url(item, format: :json)
end
