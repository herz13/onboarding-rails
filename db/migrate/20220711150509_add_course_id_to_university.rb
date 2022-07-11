class AddCourseIdToUniversity < ActiveRecord::Migration[5.2]
  def change
    add_reference :universities, :courses, foreign_key: true
  end
end
