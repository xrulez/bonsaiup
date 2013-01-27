class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :skill_id
      t.integer :user_id
      t.string :place
      t.string :time

      t.timestamps
    end
  end
end
