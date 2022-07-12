class AddLocationIdToUniversities < ActiveRecord::Migration[5.2]
  def change
    add_reference :universities, :location, foreign_key: true
  end
end
