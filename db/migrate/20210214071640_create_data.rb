class CreateData < ActiveRecord::Migration[6.1]
  def change
    create_table :data do |t|
      t.string, :content
      t.string :title

      t.timestamps
    end
  end
end
