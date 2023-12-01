class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.references :suburb, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :gender
      t.boolean :active_status, default: true # Default value set to true
      t.boolean :del_status, default: false # Default value set to false
      t.timestamps
    end
  end
end
