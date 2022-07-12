class AddUniversityIdToCourses < ActiveRecord::Migration[5.2]
  def change
    add_reference :courses, :university, foreign_key: true
  end
end
