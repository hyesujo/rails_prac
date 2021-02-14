class CreateStudies < ActiveRecord::Migration[6.1]
  def change
    create_table :studies do |t|
      t.string, :content
      t.string :title

      t.timestamps
    end
  end
end