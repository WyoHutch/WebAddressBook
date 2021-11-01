json.extract! tbl_addr, :id, :last_name, :first_name, :state, :city, :zip, :phone, :email, :created_at, :updated_at
json.url tbl_addr_url(tbl_addr, format: :json)
