class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :index
      t.string :edit
      t.string :new

      t.timestamps
    end
  end
end
