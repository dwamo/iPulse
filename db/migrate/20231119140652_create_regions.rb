class CreateRegions < ActiveRecord::Migration[7.1]
  def change
    create_table :regions do |t|
      t.string :region_name
      t.boolean :active_status, default: true # Default value set to true
      t.boolean :del_status, default: false # Default value set to false
      t.timestamps
    end
  end
end
