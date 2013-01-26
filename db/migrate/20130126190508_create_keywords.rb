class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.integer :skillId
      t.string :keyword

      t.timestamps
    end
  end
end
