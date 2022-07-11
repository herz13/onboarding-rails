class AddCourseIdToFields < ActiveRecord::Migration[5.2]
  def change
    add_reference :fields, :courses, foreign_key: true
  end
end
