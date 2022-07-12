class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :state_province
      t.string :country
      t.string :alpha_two_code

      t.timestamps
    end
  end
end
