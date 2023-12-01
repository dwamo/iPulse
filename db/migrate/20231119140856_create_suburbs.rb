class CreateSuburbs < ActiveRecord::Migration[7.1]
  def change
    create_table :suburbs do |t|
      t.string :suburb_desc
      t.references :city, foreign_key: true
      t.boolean :active_status, default: true # Default value set to true
      t.boolean :del_status, default: false # Default value set to false
      t.timestamps
    end
  end
end
