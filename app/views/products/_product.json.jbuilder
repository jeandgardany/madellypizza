json.extract! product, :id, :code, :name, :price, :description, :status, :category_id, :created_at, :updated_at
json.url product_url(product, format: :json)
