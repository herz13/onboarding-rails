class AddUniversityIdToLocations < ActiveRecord::Migration[5.2]
  def change
    add_reference :locations, :universities, foreign_key: true
  end
end