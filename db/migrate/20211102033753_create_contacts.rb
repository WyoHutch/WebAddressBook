class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :last_name
      t.string :first_name
      t.string :state
      t.string :city
      t.integer :zip_code
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
