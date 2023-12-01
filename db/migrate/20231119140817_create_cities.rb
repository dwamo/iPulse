class CreateCities < ActiveRecord::Migration[7.1]
  def change
    create_table :cities do |t|
      t.string :city_desc
      t.references :region, foreign_key: true
      t.boolean :active_status, default: true # Default value set to true
      t.boolean :del_status, default: false # Default value set to false
      t.timestamps
    end
  end
end
