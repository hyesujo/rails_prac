class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.references :people, foreign_key: true
      t.references :pack, foreign_key: true
      t.integer :quantitiy

      t.timestamps
    end
  end
end
