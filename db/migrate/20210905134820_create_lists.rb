class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|

      t.timestamps
      t.string     :title, null: false
      t.references :user,  foreign_key: true, null: false
    end
  end
end
