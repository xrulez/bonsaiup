class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :keyword
      t.string :category
      t.string :description

      t.timestamps
    end
  end
end
