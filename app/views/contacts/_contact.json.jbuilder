json.extract! contact, :id, :last_name, :first_name, :state, :city, :zip_code, :phone, :email, :created_at, :updated_at
json.url contact_url(contact, format: :json)
