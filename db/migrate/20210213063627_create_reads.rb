class CreateReads < ActiveRecord::Migration[6.1]
  def change
    create_table :reads do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.text :content
      t.datetime :published_at

      t.timestamps
    end
  end
end
