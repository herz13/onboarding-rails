class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :subject
      t.string :degree

      t.timestamps
    end
  end
end
