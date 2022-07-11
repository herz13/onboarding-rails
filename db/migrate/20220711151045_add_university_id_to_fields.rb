class AddUniversityIdToFields < ActiveRecord::Migration[5.2]
  def change
    add_reference :fields, :universities, foreign_key: true
  end
end
