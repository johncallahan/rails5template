json.extract! product, :id, :name, :amount, :users, :billingdate, :aastype, :created_at, :updated_at
json.url product_url(product, format: :json)
