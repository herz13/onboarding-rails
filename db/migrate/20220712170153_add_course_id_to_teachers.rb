class AddCourseIdToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_reference :teachers, :course, foreign_key: true
  end
end
